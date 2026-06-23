# SMU Beamer Template

An **unofficial** [Beamer](https://ctan.org/pkg/beamer) presentation template styled for
**Southern Methodist University (SMU)** — ready to use on [Overleaf](https://www.overleaf.com)
or any local LaTeX install.

![Preview of the title slide and a content slide](preview.png)

## Features

- Clean SMU-branded look: navy header bar (`#354CA1`) with a crimson accent stripe (`#CC0035`)
- Faded Dallas Hall watermark, white **SMU** stamp on every slide, and the Dedman College
  wordmark on the title page
- Self-contained — built on **stock `beamer` + `tikz`**, no external theme to install
- Compiles with plain **pdfLaTeX** (no `bibtex`/`shell-escape` needed)
- Helvetica text + Courier code, ready-made example slides (blocks, code, tables, equations)

## How to use

### 1. Fork this repository

Click **Fork** (top-right of this page) so you have your own copy to edit. This keeps the
template intact and gives you a repo you can import and version.

### 2. Open it in Overleaf

Pick whichever fits your Overleaf plan:

**a) One-click (easiest, works on free accounts)** — opens a fresh Overleaf project from this template:

[![Open in Overleaf](https://img.shields.io/badge/Open%20in-Overleaf-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https://github.com/dukechain2333/smu-beamer-template/archive/refs/heads/main.zip)

> Tip: after forking, swap `dukechain2333/smu-beamer-template` in that link for
> `YOUR-USERNAME/smu-beamer-template` to load your own fork.

**b) Import from GitHub (keeps the repo linked, Overleaf Premium)** —
in Overleaf go to **New Project → Import from GitHub**, authorize GitHub if prompted,
and select **your fork**. Changes can then be synced both ways.

**c) Download & upload (works on free accounts)** —
on your fork click **Code → Download ZIP**, then in Overleaf choose
**New Project → Upload Project** and drop the ZIP in.

Overleaf auto-detects `slide.tex` as the main document. Make sure the compiler is set to
**pdfLaTeX** (Menu → Compiler).

### 3. Edit and present

Open `slide.tex` and fill in your details:

```latex
\title{Long title \\ Secondary title}
\subtitle{Additional notes}
\author{Your Name}
\institute{Department of Statistics and Data Science,\\
           Southern Methodist University}
```

Then write your slides between `\begin{document}` and `\end{document}` using the included
examples as a guide.

## Building locally

```bash
pdflatex slide.tex
pdflatex slide.tex   # run twice so the TikZ header/watermark overlays settle
```

(or simply `latexmk -pdf slide.tex`)

## Files

| File | Purpose |
|------|---------|
| `slide.tex` | Main document — theme definition + your content |
| `SMUbg.png` | Dallas Hall watermark (faded background) |
| `SMU-Dedman.jpg` | Dedman College wordmark (title page) |
| `SMUlogoWhite.png` | White SMU stamp (top-right of each slide) |
| `preview.png` | Rendered preview shown above |

The image assets are optional: the template uses `\IfFileExists` and falls back gracefully
(text logo, no watermark) if any are missing. Drop in your own institution's images to
re-skin it.

## License & trademarks

The template **code** is released under the [MIT License](LICENSE). The included SMU image
assets are official **Southern Methodist University** marks, remain SMU's property, and are
subject to [SMU's brand guidelines](https://www.smu.edu/brand). If you are not affiliated
with SMU, replace them with your own logos before use.

> This is a community template and is **not** officially endorsed by SMU.
