#import "theme.typ": *

= Feature atlas: the dense tour

This section is the deep inventory. It is written for a family reader who wants to understand why this is more than a pretty website, more than a chat window, and more than a weekend experiment. The tone is proud, but every claim stays inside a lane: shipped today, beta on a real machine, or roadmap.

#pull-quote[
  Novelmate Studio is a writing system with memory, stages, exports, health checks, author intent, model controls, packaging discipline, and a local first posture. It is not a cloud promise wearing a book costume.
]

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  mood-tile("../assets/raster/pdf_embed/nm-pdf-fill-01.jpg"),
  mood-tile("../assets/raster/pdf_embed/nm-pdf-fill-02.jpg"),
)

#pagebreak()

== The one sentence version

#badge-shipped[
  Novelmate Studio can create and store projects, capture author intent, organize custom instructions, call a local Ollama model, plan outlines, draft prose, polish text, export manuscript files, serve a Classic web interface, expose an API, and run many of the same actions through a CLI.
]

That is the sentence. The rest of this atlas is the unpacking.

If you want the family translation: the software is a serious attempt to turn the lonely blank page into a managed production line. You still need taste. You still need judgment. You still need patience. But the heavy lifting is divided into named stages instead of one shapeless battle with a blinking cursor.

#v(0.12in)
#image("../assets/raster/pdf_embed/nm-pdf-workflow-four-stage.jpg", width: 100%)

#pagebreak()

== Local first: the moral center

#badge-shipped[
  Generation is designed around Ollama on the local machine. The default story is not “send everything to a hosted writing factory.” It is “run the model here, keep the files here, own the pace here.”
]

Local first matters because manuscripts are not disposable chat scraps. They carry unfinished scenes, private ideas, family traces, spiritual arguments, names, grief, jokes, and weird little notes that only make sense to the author. A tool that treats drafts as ordinary data exhaust starts from the wrong moral angle.

Novelmate Studio treats the author’s machine as the primary studio. The app can still have web surfaces because a local browser is a good interface, but the browser does not automatically mean cloud possession. In the default path, the web page is the face and the local service is the engine.

What this gives a writer:

- A calmer trust model: drafts live where the author can find them.
- A slower but more honest performance model: runs depend on local hardware.
- A clearer support model: if the model is not running, the app can say so instead of pretending.
- A stronger ownership story: the manuscript is an artifact on disk, not only a response in a chat log.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-03.jpg")

== The Classic interface

#badge-shipped[
  The default web surface is the Classic interface served at `http://localhost:8000`. The app exposes tabs for project creation, project management, design instructions, pipeline controls, configuration, and advanced chain tooling.
]

The Classic interface matters because creative tools need a place to breathe. A command line is powerful, but a family reader should picture a browser page with organized regions: create the project, pick or edit a project, describe the book, choose model settings, and run the pipeline. It is not merely a prompt box. It is a workbench.

The design aim is simple: keep the author from carrying the entire book in short term memory. A novel or long manuscript is too large for one mental window. Novelmate Studio breaks the work into surfaces:

- *Create:* start with a title, project type, premise, template, constraints, and initial instructions.
- *Projects:* revisit existing work, load saved decisions, and keep the studio from becoming a one session toy.
- *Design:* capture style, character, world rules, plot requirements, inclusion notes, exclusion notes, author notes, and research notes.
- *Pipeline:* run plan, write, polish, export, one pass expansion, and shipping docs.
- *Config:* control model and pipeline settings without editing code.
- *Advanced tools:* chain, batch, and other power routes for deeper workflows.

The family level point: this is software with rooms, not a text box with a fancy name.

#pagebreak()

== Project creation: the blank page gets a form

#badge-shipped[
  A project can store title, type, premise, series ID, template ID, style bible, constraints, custom instructions, and author intent. The API and app model treat these as structured inputs rather than one giant blob of chat text.
]

Project creation is the first act of reducing panic. The blank page asks for everything at once. Novelmate Studio asks for a handful of fields. A premise. A genre or project type. A target direction. Optional constraints. The software can then keep those decisions close while planning and drafting.

Supported project type lanes include:

- Novel
- Nonfiction
- Forms
- Contract
- Report
- Course

That range matters because the studio is not only “make me a fantasy chapter.” It already thinks in several artifact shapes. Fiction gets scene arcs and continuity. Nonfiction gets argument, sections, and reader value. Forms and reports point toward structured output. Courses point toward teaching flow.

#badge-beta[
  Not every project type should be sold as equally polished. The framework supports several lanes, but the strongest story today is still long form manuscript production with local control.
]

#pagebreak()

== Templates: shortcuts without surrendering authorship

#badge-shipped[
  The app has template support and API endpoints for templates, design presets, and premise examples. The documented template expansion includes dozens of book templates, multiple project types, style presets, premise examples, target word presets, and export format presets.
]

Templates are not a substitute for creativity. They are scaffolding. A tired writer can start with a crime procedural, historical romance, memoir, short story collection, travel guide, business book, true crime, dystopian YA, gothic romance, cyberpunk, paranormal romance, hard sci fi, cozy mystery, or another structured lane, then bend it.

Why templates matter:

- They turn “I want to write something” into “I am writing this kind of thing.”
- They give the planner genre expectations.
- They reduce setup friction for people who have plenty of ideas but low energy.
- They make the app feel less like a developer tool and more like a studio.

Premise examples matter for the same reason. A new user does not always know how detailed a premise should be. Examples teach the shape of good input without a lecture.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-04.jpg")

== Design instructions: the author’s control room

#badge-shipped[
  The design layer supports structured custom instruction sections: style directives, character bible, world rules, plot requirements, inclusion notes, exclusion notes, author notes, and research notes.
]

This is one of the most important features because it answers the fear every writer has about AI tools: “Will it flatten my voice?” The answer should never be a vague reassurance. The answer is a control surface.

The design sections give the writer places to say:

- “Write lean and sharp.”
- “Do not make this cozy.”
- “The main character lies, but only to protect someone.”
- “No anachronisms.”
- “The city has three religious factions.”
- “Do not add romance.”
- “Use short chapter endings that pull forward.”
- “Avoid corporate filler.”
- “Remember that the mother in chapter three is grieving, not angry.”

That structure lets the software bring author intent forward stage after stage. It also makes revision easier because the writer can change a design instruction, then rerun a stage with a clearer target.

#pagebreak()

== Author Intent Hub

#badge-shipped[
  The current product snapshot includes an Author Intent Hub available through project storage and API routes: `GET /api/projects/{project_id}/author-intent` and `PUT /api/projects/{project_id}/author-intent`.
]

Author intent deserves its own page because it is the difference between “the model guessed” and “the system remembered what the author meant.” In a long work, intent has many layers:

- What the book is trying to do.
- Who it is for.
- What tone it should avoid.
- What topics need care.
- What the ending should leave the reader feeling.
- What the writer refuses to compromise.

The Author Intent Hub gives that material a durable home. It can be merged into project blobs and carried into later stages. For a family reader, picture this as a promise that the project is not only files and prompts. It has a named place for the writer’s reasons.

#badge-beta[
  The presence of an intent hub does not mean every generated page will obey perfectly. It means the architecture has a real place to store and retrieve intent.
]

#pagebreak()

== Natural language brief parsing

#badge-shipped[
  The API includes brief parsing and brief application routes: parse a natural language brief, create a project from a brief, or apply a brief to an existing project.
]

This is the “tell it like a human” door. Instead of forcing every author to fill every structured field by hand, the brief route can take a paragraph of intention and help convert it into project shape. That matters because creative people often think in messy paragraphs first.

Example family description:

“I want to write a historical mystery about a widow who runs a boarding house near a train station. It should feel intimate, not flashy. The book should be around 70,000 words. The mystery should matter, but the emotional core is grief turning into courage.”

That kind of paragraph can become structured project settings. A tool that can move between human brief and machine fields is far more useful than a rigid form.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-05.jpg")

== Planning: outline before flood

#badge-shipped[
  Planning is a first class pipeline stage. It can run through the API, CLI, and streaming endpoints. The app can generate outlines and scene plans before prose drafting.
]

Planning is where Novelmate Studio earns its “studio” name. A manuscript does not become manageable because a model emits paragraphs. It becomes manageable because there is a map.

The planning stage can use:

- Premise
- Project type
- Template
- Style bible
- Custom instructions
- Author intent
- Target word direction
- Design sections
- Model selection

The output is not the final book. It is a commitment to structure. Chapters. Scenes. Beats. A sense of sequence. Without planning, long form generation drifts. With planning, the writer has something to inspect before the prose machine begins.

#pagebreak()

== Seed planning: importing structure

#badge-shipped[
  The CLI includes `studio plan seed`, and the API includes project seed routes. This lets an existing outline or external planning artifact become the starting point instead of forcing every project to begin from scratch.
]

Seed planning matters because many writers already have fragments. Notes in another folder. Outlines from another tool. A long concept document. A partial structure. Novelmate Studio does not need to pretend it is always the beginning of the creative process.

Seed mode says: bring the architecture you already have. Let the studio take it in, normalize it, and continue the pipeline from there.

That is a practical feature. It keeps Novelmate Studio from becoming another silo.

#pagebreak()

== Writing: prose in chunks

#badge-shipped[
  The writing stage generates prose from the planned structure. It supports target words, complete outline mode, fast mode, draft mode, resume from a chunk, content streaming controls, model overrides, and optional polish during write.
]

This is the part everyone imagines first, but it is not where the product begins. Writing works best when it stands on planning, author intent, project design, and model configuration.

Chunked writing is not a compromise. It is the honest way to build long work. A novel length target can be too large for one pass. The system writes in parts, tracks progress, and allows recovery when something goes wrong.

Key controls:

- #strong[Target words:] write toward a defined length.
- #strong[Complete outline:] keep going until planned scenes are handled.
- #strong[Fast mode:] trade some checks for speed.
- #strong[Draft mode:] maximize speed by skipping deeper checks.
- #strong[From chunk:] recover from a partial run instead of throwing everything away.
- #strong[Stream content:] decide whether prose tokens stream through the API.
- #strong[Model override:] run a specific model for the stage.
- #strong[Per stage routing:] let different stages use different model choices when configured.

The family translation: this is not “click and pray.” It is a machine with knobs.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-06.jpg")

== Continuity helpers: entity ledger, summaries, drift checks

#badge-shipped[
  The pipeline includes stages and modules for summarization, entity ledgers, drift checks, repair, and state artifacts. These are intended to reduce long form confusion and preserve continuity across chunks.
]

Long manuscripts fail in boring ways. A character’s hair color changes. A city moves. A promise from chapter two disappears. A side character gets renamed. A scene forgets the emotional state it inherited.

Novelmate Studio attacks that problem by treating continuity as a pipeline concern, not only a prompt wish. Entity ledgers and summaries act like project memory. Drift checks look for movement away from the intended path. Repair stages exist because generation is not perfect and pretending otherwise wastes time.

#badge-beta[
  Continuity tools reduce risk, but they do not eliminate author review. A careful human pass remains part of the publishing path.
]

#pagebreak()

== Polish: three editorial instincts

#badge-shipped[
  The polish lane includes developmental, line, and copy style passes, plus fast and combined modes. Combined polish can run the major polish intentions in one pass for a speed tradeoff.
]

Polish is where rough generation becomes something more readable. Novelmate Studio separates editorial instincts because “make it better” is too vague.

Developmental polish asks:

- Does the scene have a purpose?
- Does the conflict move?
- Does the emotional arc land?
- Does the chapter belong in the book?

Line polish asks:

- Are sentences alive?
- Are images specific?
- Is the rhythm too samey?
- Does the voice hold?

Copy polish asks:

- Are there obvious errors?
- Are repeated phrases becoming annoying?
- Is there clutter that should be cut?
- Does the text sound less mechanical?

Fast polish and combined polish exist because real people have hardware limits and patience limits. A tool that respects both is more useful than one that only worships ideal quality.

#pagebreak()

== Humanizing and style discipline

#badge-shipped[
  The project includes humanizing research and writing style research that can be injected into prose generation and polish. The CLI also exposes humanizing status and scan commands.
]

This matters because many AI writing tools produce prose with a smell. Not a moral failure, a pattern failure. Same transitions. Same empty adjectives. Same emotional beats. Same false symmetry. Same “delve” energy.

Novelmate Studio has a dedicated lane for this problem. It can load avoid lists, prompt blocks, measurable heuristics, and style guidance so the writing process resists flattened machine prose.

What that means for a family reader:

- The tool is not only trying to produce volume.
- It is trying to produce prose that can survive a human reader.
- It treats style as a system concern, not an afterthought.
- It gives David a way to encode taste into the workflow.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-07.jpg")

== Export: where the book becomes an artifact

#badge-shipped[
  Export supports Markdown, EPUB, DOCX, and PDF oriented paths where configured. Export can run from the pipeline, from a file, or through one pass expansion flows.
]

Export is where many writing tools become annoying. A draft that cannot leave the app is not a manuscript. Novelmate Studio’s export lane matters because it turns the writing system into actual files.

Important export ideas:

- #strong[Markdown:] durable, simple, easy to inspect.
- #strong[EPUB:] ebook reader path and publishing prep.
- #strong[DOCX:] editor friendly, review friendly, ordinary office file.
- #strong[PDF:] presentation and fixed layout path where configured.
- #strong[From file:] take an existing Markdown manuscript and export without rerunning the whole project.
- #strong[Embed cover:] attach cover art into relevant output paths where supported.
- #strong[Export profiles:] use marketplace or output specific metadata rules.

Files make the project real. A family reader can understand this easily: if it becomes a file you can open, move, attach, and back up, it has crossed from dream to artifact.

#pagebreak()

== Profile driven metadata and marketplace awareness

#badge-shipped[
  The current snapshot lists export capabilities, profiles, and marketplace routes: `GET /api/export/capabilities`, `GET /api/export/profiles`, and `GET /api/export/marketplaces`.
]

Publishing is full of dull details that matter. Trim sizes. Metadata. Interior image specs. Cover specs. Marketplace expectations. Author profiles. Compliance reports. A tool that ignores those details can still draft, but it cannot guide a writer toward shipping.

Novelmate Studio’s export profile architecture points toward a more serious future: each marketplace or output path can declare what it needs. The run can then emit artifacts like:

- `export_profile.json`
- `compliance_report.json`
- `intent_snapshot.json`

Those files are not glamorous. They are receipts. They help answer: what settings did we use, what did the export think it was doing, and what should be checked before uploading anywhere?

#pagebreak()

== Shipping docs: the conscience in the pipeline

#badge-shipped[
  The app exposes `GET /api/shipping-docs`, serves allowlisted manual files under `/manual/{filename}`, and the CLI command `studio export checklist` prints the same shipping document paths on disk.
]

Shipping docs are not just “documentation.” They are the app reminding the author that publishing is a responsibility. Copyright. AI disclosure. Quality checks. Platform rules. Export hygiene. A tool that helps generate a book should also help slow the author down before upload.

This is where Novelmate Studio becomes more adult than hype. The pipeline can move fast, but the shipping docs say: read before you post, check before you upload, know what you are claiming.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-08.jpg")

== One pass expansion

#badge-shipped[
  One pass expansion can take existing Markdown fiction, expand toward a target word count, optionally polish after expansion, and produce Markdown by default with optional additional export formats.
]

One pass expansion is a practical bridge for a writer who already has chapters. It says: take this existing body, expand toward a larger target, split long sections into manageable calls, and optionally polish after.

The documented behavior includes:

- Target words.
- Skip expand option.
- Combined polish default.
- Fast polish option.
- Polish after expand option.
- Optional export formats.
- Model override.
- Per stage routing.

#badge-beta[
  This is powerful, but it should be framed as an assisted expansion workflow, not an instant finished novel machine.
]

#pagebreak()

== File polish: bring existing work

#badge-shipped[
  The API and CLI include file polish routes. A writer can polish an existing file without building an entire project run from scratch.
]

This is important because real creative work is messy. Sometimes the author has a chapter from last year. Sometimes they have a draft from another tool. Sometimes they only need a polish pass on a specific file.

File polish keeps the studio useful outside a perfect pipeline. It is a side door for practical work.

#pagebreak()

== Regeneration and recovery

#badge-shipped[
  Regeneration supports resuming or rerunning from a chunk, and the API includes a project regen route. The writing body also carries `from_chunk` for partial recovery.
]

Long generation fails sometimes. Power flickers. A model stalls. A chapter goes off tone. A draft chunk is salvageable up to a point, then not.

Regeneration gives the author a recovery strategy. Instead of destroying a whole run, the workflow can start again from a known chunk. That is the difference between a toy and a tool: a tool expects failure and gives you a handle.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-09.jpg")

== Model controls: the engine room

#badge-shipped[
  The CLI includes model list, show, set, unset, and content freedom commands. The API can list Ollama models and update config. Pipeline stages can accept model overrides and per stage routing.
]

Model controls matter because no single local model is perfect for every stage. Planning may need structure. Prose may need voice. Polish may need precision. A small model may be fast but thin. A larger model may be stronger but slower.

Novelmate Studio exposes model choice instead of hiding it. That gives David room to experiment:

- List what is installed.
- Show the active model.
- Set a default.
- Unset an override.
- Pass a model for a specific run.
- Let per stage routing choose specialized models when configured.

#badge-beta[
  Model quality depends on what is installed locally and what the machine can handle. The app can expose controls, but it cannot make weak hardware behave like a server farm.
]

#pagebreak()

== Context and speed controls

#badge-shipped[
  `num_ctx`, combined polish, fast polish, fast writing, draft mode, target word controls, and stream controls all exist to let the user balance quality, speed, hardware pressure, and patience.
]

This is one of the most impressive engineering details because it admits tradeoffs. Many tools pretend there is only one quality knob. Novelmate Studio exposes several.

When a run is too slow, the answer may be:

- Use a smaller context window.
- Use combined polish.
- Use fast polish.
- Draft first, refine later.
- Reduce target words.
- Pick a faster model.
- Turn off content streaming when bandwidth matters.

When a run needs more care, the answer may be:

- Use a stronger model.
- Keep polish stages separate.
- Avoid draft mode.
- Let continuity checks run.
- Expand in smaller pieces.

That is mature software thinking: not one “best” path, but a set of controlled tradeoffs.

#pagebreak()

== API: the hidden control panel

#badge-shipped[
  The FastAPI app exposes routes for health, shipping docs, templates, craft packs, design sections, design presets, cover specs, export capabilities, export profiles, marketplace lists, packs, pipeline config, chat, Ollama models, config updates, premise examples, projects, briefs, author intent, plan, write, polish, export, covers, file polish, one pass, batch runs, regeneration, cancellation, QA reports, import, seed, and downloads.
]

The family reader does not need to memorize endpoints. The impressive part is that the app has a real control plane. The web interface is not faking it. It calls an API shaped around meaningful actions.

Endpoint families:

- #strong[Diagnostics:] health checks, model listing, config reads.
- #strong[Discovery:] templates, design presets, premise examples, packs.
- #strong[Project life:] create, list, load, update, import, seed, apply brief.
- #strong[Author control:] author intent, design sections, custom instructions.
- #strong[Pipeline:] plan, stream plan, write, stream write, polish, stream polish, export, stream export.
- #strong[Assets:] cover upload and cover embedding.
- #strong[Standalone tools:] polish a file, export from file, one pass expansion.
- #strong[Operations:] batch run, cancel run, QA report, download.

That breadth is why the PDF deserves a dense section. There is a lot of machinery here.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-10.jpg")

== CLI: the automation lane

#badge-shipped[
  The `studio` CLI includes commands for testing, checking, initialization, pack validation, project management, planning, writing, polishing, exporting, regeneration, QA reports, model management, batch runs, chain tools, web launch, humanizing checks, and roadmap voice commands.
]

The CLI matters because it makes Novelmate Studio scriptable. A user can work visually in the Classic interface, then move to terminal automation when they understand the flow.

Practical command families:

- `studio check`: inspect config, packs, and Ollama reachability.
- `studio init`: prepare workspace storage.
- `studio project new`: create a project from arguments or config.
- `studio project brief`: build from a natural language brief.
- `studio project edit`: update project metadata or instructions.
- `studio plan generate`: generate an outline.
- `studio write generate`: draft prose.
- `studio polish run`: polish a project.
- `studio polish file`: polish existing text.
- `studio export`: export project outputs.
- `studio export from-file`: export an existing Markdown file.
- `studio export one-pass`: expand and export existing fiction.
- `studio export checklist`: print shipping docs.
- `studio model list`: see local models.
- `studio batch run`: process a manifest.
- `studio humanizing scan`: inspect prose for style risks.

#pagebreak()

== Packs: knowledge without hardcoding everything

#badge-shipped[
  The pack registry can load core packs, user packs, and extra configured roots. The API can list packs, show packs, and validate packs. The CLI can validate, list, and show packs.
]

Packs are how the app avoids burying every idea inside code. A pack can hold structured knowledge: cover specs, trim sizes, literary forms, sources, user style data, export capabilities, or other guidance. That means the studio can grow by adding data, not only by rewriting Python.

The pack approach is a foundation for:

- Craft guidance.
- Export specs.
- Marketplace rules.
- Style memory.
- User specific preferences.
- Validation.
- Future extension.

#badge-beta[
  Packs are only as useful as their content and schema discipline. The app has the mechanism. The library can keep improving.
]

#pagebreak()

== Craft and research guidance

#badge-shipped[
  Research packs for opening hooks, dialogue craft, and reader psychology are documented as wired into prose generation. Humanizing and writing style packs are also part of the drafting and polish behavior.
]

This is where Novelmate Studio starts feeling like a writing room rather than a generator. Craft guidance means the prose stage can be nudged by more than “continue the story.”

Craft domains can include:

- Opening hooks.
- Dialogue pressure.
- Reader psychology.
- Style avoidance.
- Structural fingerprints.
- Tone discipline.
- Chapter momentum.
- Scene purpose.

No pack guarantees art. But packs can raise the floor. They can remind the model to behave less like a generic assistant and more like a tool sitting inside a literary workflow.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-11.jpg")

== Cover and image awareness

#badge-shipped[
  The API exposes cover specs, cover upload, and cover embedding. Data packs include cover dimensions, trim sizes, interior image specs, and export related references.
]

A book is not only words. Covers, images, trim sizes, and interior formats matter. Novelmate Studio is not pretending the manuscript ends at the last paragraph. It is already growing toward the surrounding production world.

This matters for future polish because:

- Covers need dimensions.
- Interior images need rules.
- EPUBs need validation.
- Marketplace assets need different sizes.
- A writer needs reminders before uploading.

The booklet should make this feel exciting: the studio thinks about the whole path from idea to artifact, not only about the drafting burst.

#pagebreak()

== QA reports and sanity checks

#badge-shipped[
  The app exposes QA report generation and includes export checklists, pack validation, health checks, model list diagnostics, and path safety checks.
]

Quality assurance is not glamorous, but it is reassuring. Novelmate Studio has routes and commands that say: test the surface, validate packs, make a QA report, check health, avoid path traversal, return useful errors instead of exploding.

Examples of sanity work already visible in the code and changelog:

- Empty project titles rejected.
- Missing projects return proper errors.
- Path traversal blocked for downloads.
- Malformed manifests handled.
- Model list errors explained.
- Stale server confusion gets clearer hints.
- Health endpoint distinguishes the app from Ollama.

That is product maturity hiding inside error messages.

#pagebreak()

== Import and downloads

#badge-shipped[
  Project import and safe download routes exist. Exports are meant to land in run folders and become retrievable artifacts.
]

Import matters because writers bring history. Downloads matter because writers need output. A local studio that cannot import or retrieve artifacts traps the user. Novelmate Studio’s project import and download routes show a practical design direction: move material in, move artifacts out, keep paths safe.

Again, this is not flashy. It is what makes a tool livable.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-12.jpg")

== Batch runs: work at scale

#badge-beta[
  Batch generation from a manifest can run plan, write, polish, and export across items, with skip flags, dry run support, output directory control, wave filtering, fast polish, combined polish, production cost outputs, and progress collection.
]

Batch mode is the sign of a system trying to grow beyond one handwritten demo. It can process a manifest, run multiple items, skip stages, and collect results. That is useful for experiments, repeated project families, test authors, or any scenario where David wants to compare many runs.

The honest caveat: batch mode increases complexity. More items means more failure points, more hardware pressure, more need for naming discipline, and more need for logs.

#pagebreak()

== Chain tools: deep text refinement

#badge-beta[
  The app includes chain tool integration through CLI and API surfaces for running additional text analysis and refinement stages on project text.
]

The chain lane is for power users. It points toward a future where a manuscript can be passed through specialized refiners: concept extraction, outline work, validation, artifact collection, and improved text outputs. It is not the first thing Mom needs to use, but it belongs in the feature atlas because it shows how the system can grow into a wider literary workstation.

Family translation: Novelmate Studio is not only a drafting tool. It has hooks for deeper downstream intelligence.

#pagebreak()

== Packaging and release discipline

#badge-beta[
  The engineering tree includes customer package building, package smoke tests, release promotion scripts, stable release pointers, first run notes, setup scripts, launch scripts, and a package contract.
]

This is the part that tells a family reader David is trying to make something real enough for other people. A package builder gathers the needed files. Smoke tests prove the package can set up, launch, answer health checks, create a project, plan, write, and export a basic artifact. Release promotion moves a validated bundle into a release area. Stable release pointers make the current best package discoverable.

Those details are not decorative. They answer:

- Can the thing be packaged?
- Can the package run somewhere clean?
- Can the app answer health checks?
- Can it create a project?
- Can it produce output?
- Can the latest release be found again?

That is the path from personal tool to product.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-13.jpg")

== What is shipped, what is beta, what is roadmap

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 12pt,
  [
    #badge-shipped[
      Local web app, CLI, project storage, templates, design sections, author intent API, plan, write, polish, export paths, shipping docs, model listing, health checks, pack validation, file polish, project import, safe downloads.
    ]
  ],
  [
    #badge-beta[
      Package release path, batch workflows, chain tooling, one pass expansion at long targets, export profiles, marketplace awareness, compliance reports, advanced model routing, performance tuning across hardware.
    ]
  ],
  [
    #badge-roadmap[
      A smoother installer, broader non technical onboarding, voice input, easier collaboration, stronger visual authoring, stronger publishing guidance, and a polished public product experience.
    ]
  ],
)

#pagebreak()

== The “Mom gets it” version of the architecture

Imagine a workshop with labeled benches.

The first bench is #strong[idea intake]. That is project creation, templates, briefs, and author intent.

The second bench is #strong[design]. That is style, characters, rules, constraints, and research notes.

The third bench is #strong[planning]. That is outline and scene structure.

The fourth bench is #strong[drafting]. That is local model generation, chunks, target words, and recovery.

The fifth bench is #strong[polish]. That is developmental, line, copy, fast, and combined passes.

The sixth bench is #strong[export]. That is Markdown, EPUB, DOCX, PDF, cover embedding, profiles, and shipping docs.

The seventh bench is #strong[operations]. That is health checks, model controls, package tests, batch runs, and logs.

Novelmate Studio is impressive because it has all seven benches.

#image("../assets/raster/pdf_embed/nm-pdf-journey-proof-map.jpg", width: 5.5in)

#pagebreak()

== Why this is exciting even before version one

#badge-beta[
  The version number is still early, and the support boundary is honest. The product is not being sold here as a finished native installer for every non technical reader.
]

The excitement is not that every surface is finished. The excitement is that the shape is right.

The shape is:

- Local custody first.
- Author intent first.
- Structured pipeline first.
- Export artifacts first.
- Humanizing and craft support inside the workflow.
- Real API and CLI surfaces.
- Release discipline instead of only vibes.
- Honest roadmap labels.

That is a serious product skeleton. Many projects never reach that skeleton. They remain a demo, a prompt, or a screenshot. Novelmate Studio has a body plan.

#pagebreak()

#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-14.jpg")

== The feature list as a brag sheet

Here is the dense list, compressed for someone who wants the firehose:

- Local Ollama based generation.
- Classic web interface at `localhost:8000`.
- API health check.
- Project create, list, load, update, import, and seed routes.
- Natural language brief parsing.
- Project creation from brief.
- Author intent get and put routes.
- Author intent presets.
- Template listing.
- Design section listing.
- Design preset listing.
- Premise example listing.
- Pack listing, pack display, and pack validation.
- Pipeline config read and update.
- Ollama model listing.
- Model set, show, unset, and list commands.
- Plan stage.
- Plan streaming.
- Write stage.
- Write streaming.
- Polish stage.
- Polish streaming.
- Export stage.
- Export streaming.
- Cover upload.
- Cover embedding.
- File polish.
- Export from file.
- One pass expansion.
- Batch run from manifest.
- Run cancellation.
- QA report generation.
- Safe downloads.
- Shipping docs API.
- Shipping docs manual route.
- Export checklist CLI.
- EPUB validation command.
- Pack validate CLI.
- Pack list CLI.
- Pack show CLI.
- Humanizing status command.
- Humanizing scan command.
- Tests command.
- Workspace check command.
- Web launch command.
- Streamlit and Gradio commands still present as optional commands, while the default surface is Classic.
- Voice command stub marked as roadmap.
- Target word controls.
- Complete outline mode.
- Fast write mode.
- Draft mode.
- Polish during write.
- Fast polish.
- Combined polish.
- From chunk recovery.
- Stream content toggle.
- Model override.
- Per stage model routing.
- Clean export flag.
- Output directory override.
- Export profile selector.
- Marketplace selector.
- Cover spec data.
- Trim size data.
- Interior image specs.
- User style packs.
- Core literary form packs.
- Shipping docs catalog.
- Release package scripts.
- Smoke test package script.
- Stable release pointer.

#pagebreak()

== What the document should make her feel

It should feel like: “Oh, this is not just David making another folder. This is a serious workspace.”

It should feel like: “There is a product brain here.”

It should feel like: “The local first thing is not random. It is the ethics of the tool.”

It should feel like: “The software has a path from idea to manuscript file.”

It should feel like: “He is allowed to be proud of this before it is perfect.”

#pull-quote[
  Novelmate Studio is a draft engine, a project memory, a control surface, an export lane, and a promise that the author stays in the room.
]

#pagebreak()
