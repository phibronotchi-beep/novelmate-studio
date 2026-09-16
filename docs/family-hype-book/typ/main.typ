#import "theme.typ": *

#set document(
  title: [Novelmate Studio: a family field guide to David's writing machine],
  author: "David (with Novelmate Studio)",
)

#set text(font: "Libertinus Serif", size: 14pt, lang: "en")
#set par(justify: true, leading: 0.74em, spacing: 0.85em)
#set page(
  paper: "us-letter",
  margin: (x: 1in, y: 0.95in),
  numbering: "1",
  number-align: center,
)

// Clearer hierarchy for long family reading.
#show heading.where(level: 1): it => block(above: 1.35em, below: 0.85em)[
  #set text(size: 24pt, weight: "bold", fill: c-text)
  #it
]
#show heading.where(level: 2): it => block(above: 1.15em, below: 0.55em)[
  #set text(size: 17pt, weight: "bold", fill: c-accent-dim)
  #it
]
#show heading.where(level: 3): it => block(above: 0.95em, below: 0.4em)[
  #set text(size: 14.5pt, weight: "semibold", fill: c-muted)
  #it
]

// Body pages: light paper ink for printing
#set page(fill: white)
#set text(fill: c-text)

#include "part-front.typ"
#include "part-core.typ"
#include "part-feature-atlas.typ"
#include "part-extra.typ"
#include "part-vision.typ"
#include "part-appendix.typ"
