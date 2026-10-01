-- Lua filter for the smu-beamer format.
--
-- With cite-method: biblatex, Pandoc ignores the `::: {#refs}` div that marks
-- where the reference list goes.  Replace it with \printbibliography so the
-- list lands on whatever slide holds the div, and tell biblio.tex not to add
-- its fallback References slide.

local placed = false

-- HTML comments (<!-- ... -->) reach the beamer writer as raw HTML blocks.
-- They print nothing, but one sitting outside a slide still opens an empty
-- frame, so drop them up front.
function RawBlock(el)
  if el.format == "html" and quarto.doc.is_format("beamer") then
    return {}
  end
end

function Div(el)
  if el.identifier == "refs" and quarto.doc.is_format("beamer") then
    placed = true
    return pandoc.RawBlock("latex", table.concat({
      "\\footnotesize",
      "\\setlength{\\leftskip}{1.5em}% nudge entries in from the left edge",
      "\\printbibliography[heading=none]",
    }, "\n"))
  end
end

function Meta(meta)
  if placed then
    meta["smu-refs-placed"] = true
  end
  return meta
end
