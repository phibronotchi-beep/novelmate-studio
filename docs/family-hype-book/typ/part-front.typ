#import "theme.typ": *
#set text(size: 14pt)

// --- Cover spread (no page number)
#page(
  fill: c-bg,
  margin: 0.6in,
  header: none,
  footer: none,
  numbering: none,
)[
  #align(center)[
    #image("../assets/logo/novelmate-studio-wordmark.svg", width: 3.6in)
    #v(0.28in)
    #block(width: 100%)[
      #image("../assets/raster/pdf_embed/family-hype-cover-dedication.jpg", width: 100%, height: 2.75in, fit: "cover")
    ]
    #v(0.35in)
    #text(fill: white.transparentize(30%), size: 16pt)[The family field guide]
    #v(0.08in)
    #text(fill: white.transparentize(45%), size: 13.5pt)[What it is, what it does today, what we are building next]
    #v(0.35in)
    #text(fill: c-accent-dim, size: 12pt)[https://novelmatestudio.com]
  ]
]

#pagebreak()
#counter(page).update(1)
#set page(numbering: "i", header: none)

#align(center)[
  #v(1.2in)
  #text(style: "italic", size: 16pt)[For Mom]
  #v(0.15in)
  #par(leading: 0.9em)[
    This booklet exists because you asked what I am doing with my days,
    and because you cheer for the work even when the tools sound alien.
    If any sentence reads like marketing fog, skip it. The photos are the mood.
    The labels are the honesty rail: *shipped*, *beta*, *roadmap*, printed right on the claim.
  ]
  #v(0.35in)
  #image("../assets/raster/pdf_embed/family-hype-mom-manuscript-handoff.jpg", width: 4.2in)
]

#pagebreak()

= How to read the badges
#set text(size: 14pt)

This is a hype document with guardrails. Novelmate Studio is real software,
but software has stages. When you see a box that says *shipped today*,
that means the feature sits in the tool David can run on a computer he controls.
When you see *beta*, it means you should picture cables, updates, and learning curves,
but the behavior is still meant for people, not vapor.
When you see *roadmap*, treat it like a constellation: direction, not arrival time.

#v(0.15in)
#align(center)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 14pt,
    badge-shipped[
      Pipeline stages, export paths, local storage of projects, Classic interface in a browser tab on `localhost`.
    ],
    badge-beta[
      A validated packaging path exists in the engineering repo. A first time author should still expect setup, models, and patience.
    ],
    badge-roadmap[
      Easier installers, hosted collaboration, instant cloud scale. Not sold here as finished.
    ],
  )
]

#v(0.2in)
#pull-quote[
  Full book runs can take hours on one workstation. That is not shame, it is physics and honesty.
  The public site says the same: queue style runs, local custody, adult expectations.
]

#v(0.15in)
#align(center)[
  #image("../assets/raster/pdf_embed/nm-pdf-workflow-four-stage.jpg", width: 5.2in)
]

#pagebreak()
#outline(title: [Contents], indent: auto, depth: 2)

#pagebreak()
#counter(page).update(1)
