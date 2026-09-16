// Novelmate Studio: family hype book (Typst theme)
// Colors aligned with novelmatestudio.com (site.css)

#let c-bg = rgb("#0c0e12")
#let c-surface = rgb("#141820")
#let c-text = rgb("#1a1f2e")
#let c-muted = rgb("#5c6573")
#let c-accent = rgb("#6ee7c5")
#let c-accent-dim = rgb("#3d9a82")
#let c-border = rgb("#2a3140")
#let c-paper = rgb("#f5f7fa")

#let badge-shipped(body) = box(
  fill: c-accent.transparentize(88%),
  stroke: 1pt + c-accent,
  inset: (x: 12pt, y: 8pt),
  radius: 6pt,
)[
  #set text(weight: "bold", fill: c-surface, size: 10.5pt)
  SHIPPED TODAY
  #linebreak()
  #set text(weight: "regular", fill: c-text, size: 12.5pt)
  #body
]

#let badge-beta(body) = box(
  fill: rgb("#fef3c7").transparentize(20%),
  stroke: 1pt + rgb("#f59e0b"),
  inset: (x: 12pt, y: 8pt),
  radius: 6pt,
)[
  #set text(weight: "bold", fill: rgb("#92400e"), size: 10.5pt)
  BETA (REAL MACHINE)
  #linebreak()
  #set text(weight: "regular", fill: c-text, size: 12.5pt)
  #body
]

#let badge-roadmap(body) = box(
  fill: rgb("#e0e7ff").transparentize(35%),
  stroke: 1pt + rgb("#6366f1"),
  inset: (x: 12pt, y: 8pt),
  radius: 6pt,
)[
  #set text(weight: "bold", fill: rgb("#3730a3"), size: 10.5pt)
  ROADMAP (DREAMING FORWARD)
  #linebreak()
  #set text(weight: "regular", fill: c-text, size: 12.5pt)
  #body
]

#let pull-quote(it) = block(
  width: 100%,
  fill: c-paper,
  stroke: (left: 4pt + c-accent),
  inset: 18pt,
)[
  #set text(style: "italic", size: 14.5pt)
  #it
]

#let hero-img(path, cap) = figure(
  caption: text(size: 12.5pt)[#cap],
  supplement: [Scene],
  image(path, width: 100%),
)

// Full width atmospheric strip (no text in art; mood only).
#let mood-strip(path) = align(center)[
  #block(
    width: 100%,
    inset: (y: 10pt),
  )[
    #image(path, width: 100%, height: 1.55in, fit: "cover")
  ]
]

#let mood-tile(path) = align(center)[
  #block(width: 100%, inset: (y: 6pt))[
    #image(path, width: 100%, height: 2.05in, fit: "cover")
  ]
]

#let small-cap(s) = text(weight: "bold", fill: c-muted, size: 11pt, tracking: 0.08em, s)
