#import "theme.typ": *

= Part one: the heart of Novelmate Studio

#hero-img(
  "../assets/raster/pdf_embed/family-hype-novelmate-workspace-hero.jpg",
  [A writing room built for focus: paper, shelves, and the quiet pressure of a long project made concrete.],
)

== The promise in plain English

Novelmate Studio is a *local first* writing studio for long form work. You bring a premise and constraints.
The software helps you build structure, draft in pieces, polish in passes, and land files you can open on any ordinary computer.
Generation is driven by *Ollama* on the same machine, which means the drafts never need to leave the house to exist.

#badge-shipped[
  The stack is Python, a FastAPI web server, a SQLite-shaped project memory, JSON packs for craft hints, and exporters for common book files.
]

== Why local first is not paranoia, it is custody

Your manuscript is not content feed for a distant training pool. The public wording on novelmatestudio.com is blunt:
we do not pitch a hosted factory. The honest posture is *custody*: files on disk, models you chose, runs that respect your machine.

#hero-img(
  "../assets/raster/pdf_embed/family-hype-local-sanctuary.jpg",
  [A studio that feels like a room you can close.],
)

#v(0.12in)
#grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  [
    #badge-shipped[Author intent payloads exist in project storage and API (`GET/PUT` author intent).]
    #parbreak()
    #small-cap[Evidence]#linebreak()
    That phrase is engineering speak for: the tool can remember what you said you wanted.
  ],
  [
    #badge-beta[Exports can include profile driven marketplace metadata and reproducibility artifacts (`export_profile.json`, compliance and intent snapshots).]
    #parbreak()
    Translation: we are building adult export hygiene, not a toy formatter.
  ],
)

#pagebreak()

== The pipeline your son talks about at dinner

Here is the pipeline in the order it actually runs: premise, plan, write, polish, export.
You can picture it like a kitchen line. Prep, cook, taste, plate.

#align(center)[
  #image("../assets/raster/pdf_embed/nm-pdf-workflow-four-stage.jpg", width: 5.4in)
]

- *Plan* turns your premise into an outline with scenes. Not generic homework, *your* constraints ride along.
- *Write* generates prose chunk by chunk. The system tracks entities and drift, which is a nerdy way of saying it tries to keep characters and facts from melting.
- *Polish* can run developmental, line, and copy style passes. There are fast combined passes when you want speed.
- *Export* lands Markdown, EPUB, DOCX, and PDF paths when configured.

#badge-roadmap[
  Voice input, fancier collaboration, and other social scale dreams stay in the honest lane until they are buildable and supportable.
]

#v(0.1in)
#pull-quote[
  Accessibility is a design goal, not a slogan. The Novelmate Studio README names fatigue, motor issues, cognitive load, the blank page at midnight.
  If typing is hard, directing still matters.
]

#pagebreak()

#hero-img(
  "../assets/raster/pdf_embed/nm-pdf-photo-03-paper-macro.jpg",
  [Manuscript texture: books stay physical in the mind even when the file is digital.],
)

== What works today without exaggeration

#badge-shipped[
  Classic web interface at `http://localhost:8000` after setup. Tabs for Create, Projects, Design, Pipeline, Config, and advanced chain tooling.
]

#badge-shipped[
  CLI (`studio`) for the same engine. Scriptable runs for people who live in terminals.
]

#badge-shipped[
  Multiple export formats including EPUB and DOCX, Markdown, PDF pathways, cover embedding hooks, and KDP oriented back matter plumbing in the project design.
]

#badge-shipped[
  Humanizing heuristics and research packs can steer prose and polish away from stiff AI tells, loaded from JSON so behavior stays editable.
]

#v(0.12in)
#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("../assets/raster/pdf_embed/nm-pdf-card-local-first.jpg", width: 100%)
  ],
  [
    #image("../assets/raster/pdf_embed/nm-pdf-card-pipeline.jpg", width: 100%)
  ],
)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("../assets/raster/pdf_embed/nm-pdf-card-export.jpg", width: 100%)
  ],
  [
    #image("../assets/raster/pdf_embed/nm-pdf-card-kdp.jpg", width: 100%)
  ],
)

#pagebreak()

== Black and white documentary strips

These black and white frames are purely atmospheric: shelves, paper, light through stone, a calm study.
They carry no logo and no banned vocabulary because they were generated and checked for a clean frame.

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #image("../assets/raster/pdf_embed/nm-pdf-photo-01-library.jpg", width: 100%)
  ],
  [
    #image("../assets/raster/pdf_embed/nm-pdf-photo-02-desk-topdown.jpg", width: 100%)
  ],
)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,
  [
    #image("../assets/raster/pdf_embed/nm-pdf-photo-03-paper-macro.jpg", width: 100%)
  ],
  [
    #image("../assets/raster/pdf_embed/nm-pdf-photo-04-shelf-gilt.jpg", width: 100%)
  ],
  [
    #image("../assets/raster/pdf_embed/nm-pdf-photo-05-arch-light.jpg", width: 100%)
  ],
)

#hero-img(
  "../assets/raster/pdf_embed/nm-pdf-photo-06-study-luxury.jpg",
  [A study that says: manuscripts belong in rooms with history.],
)

#pagebreak()

== Packaging proof that engineers understand parents worry

#badge-beta[
  There is a customer package builder, smoke tests on Windows, release promotion scripts, and a package contract doc.
  Translation for family readers: David is building the boring adulthood of software, receipts included.
]

This is the opposite of a viral demo that works once on a YouTuber's laptop.
Packaging stories belong in the honesty bucket until a native installer is truly the default path for non technical readers.
When someone asks *can my aunt install it*, the candid answer today is still *not without a patient human nearby*.

#v(0.1in)
#image("../assets/raster/pdf_embed/nm-pdf-candle-today.jpg", width: 4.8in)

#pagebreak()

= Part two: a day in the life (warm, specific, honest)

#hero-img(
  "../assets/raster/pdf_embed/family-hype-desk-writer.jpg",
  [Morning light on a desk: the work is physical even when the mind is elsewhere.],
)

== Wake the machine, wake the model

Picture a day off with purpose. Coffee first. Then the activation sequence remembered in fingers:
open a terminal or a launcher, start the local model host, start Novelmate Studio, watch the health endpoint say OK.

#badge-shipped[
  `GET /api/health` answers JSON that tells you the studio is actually the studio, not a stale process on port 8000.
  If you ever saw David swear at a port, this is why engineers obsess over health checks.
]

#image("../assets/raster/pdf_embed/nm-pdf-ollama-desk.jpg", width: 5in)

== Choose a template like choosing a doorway

#badge-shipped[
  Dozens of templates span fiction and several nonfiction shapes. The template is not a cage. It is a scaffold.
]

If you think of your son as a person who likes systems that respect structure, this is the proof.
Templates, presets, and design packs exist so *you* spend juice on choices that matter, not on reinventing the wheel every session.

#pagebreak()

== Plan with patience

Planning is where you trade fantasy for sequence. Chapters, beats, scenes.
It is the moment a vague someday becomes numbered steps.

#hero-img(
  "../assets/raster/pdf_embed/family-hype-compass-plan.jpg",
  [Planning is direction with evidence, not vibes alone.],
)

== Write in chunks, the way endurance actually works

Full length fiction is not one breath. Chunked drafting is how humans finish ultra distances.
The tool honors that. Long runs queue. Hardware sets the tempo.

#hero-img(
  "../assets/raster/pdf_embed/family-hype-patience-hourglass.jpg",
  [Queue style runs: honest time, honest fans whirring.],
)

== Polish like a serious editor pass, not a spinner

#badge-shipped[
  Combined polish passes exist for speed. Faster passes are a trade, not a moral failure.
]

#pull-quote[
  Polish during write is a real option in the pipeline design: tighten as you go, or keep passes separate for control.
]

#image("../assets/raster/pdf_embed/nm-pdf-flourish-divider.jpg", width: 4.6in)

#pagebreak()

== Export and hold something

#badge-shipped[
  Shipping docs, export checklists, and manual routes list the same responsibilities the CLI prints. Consistency is care.
]

#hero-img(
  "../assets/raster/pdf_embed/family-hype-exports-metaphor.jpg",
  [Exports are objects you can email to yourself, open on a tablet, or place in a drawer as proof.],
)

== Icons from the interface, because nerds still love icons

#align(center)[
  #grid(
    columns: 4,
    gutter: 8pt,
    image("../assets/raster/pdf_embed/nm-pdf-icon-create.jpg", width: 0.7in),
    image("../assets/raster/pdf_embed/nm-pdf-icon-design.jpg", width: 0.7in),
    image("../assets/raster/pdf_embed/nm-pdf-icon-pipeline.jpg", width: 0.7in),
    image("../assets/raster/pdf_embed/nm-pdf-icon-projects.jpg", width: 0.7in),
  )
]

#v(0.15in)
#align(center)[
  #image("../assets/raster/pdf_embed/nm-pdf-accessibility-warm.jpg", width: 4.5in)
]

#pagebreak()

#hero-img(
  "../assets/raster/pdf_embed/nm-pdf-photo-06-study-luxury.jpg",
  [Quiet study light: the calm you want on a hard drafting night.],
)

== Case study language that stays inside the rails

The Novelmate Studio README points to a long manuscript completed with the tool as an existence proof.
Treat that as *literary* evidence of strain and finish, not a sales promise for anyone else's weekend.

#image("../assets/raster/pdf_embed/nm-pdf-hands-writing-finish.jpg", width: 4.5in)

#v(0.2in)

The honest family translation:

- David built a machine that can *attempt* a serious pipeline on local hardware.
- Outputs can be evaluated like real manuscripts, because they are files.
- Marketing that says otherwise gets checked against Phyllux research-status row five.

#pagebreak()
