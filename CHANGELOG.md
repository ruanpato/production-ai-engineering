# Changelog

Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) · [SemVer](https://semver.org/).

## [Unreleased]

### Added

- Ch. 5.7 *Evaluating agents: tasks, verifiers and uncertainty* and Ch. 7.8 *Post-training in
  production: data, objectives and evaluation* (pt-BR and en, `status: review`), with 16 new
  glossary entries, references section 16 and cross-references from Ch. 1.3, 2.11, 5.4, 7.6, 9.2,
  0.8 and the index.

### Changed

- Ch. 1.3 "Comparing systems" (unit, pairing, intervals, minimum effect); Ch. 2.7 query-side
  techniques (rewriting, multi-query, HyDE) and recent retrieval techniques; Ch. 2.2 FP4 formats;
  Ch. 2.9 LazyGraphRAG; Ch. 2.10 long context vs. RAG; Ch. 3.5 state of the MCP spec (2026-07-28),
  A2A 1.0, AGENTS.md and Agent Skills; Ch. 4.3 data-flow restricting architectures and OWASP
  Agentic Top 10; Ch. 5.3 OpenTelemetry GenAI mapping and maturity note; Ch. 6.1/6.4 token cost
  categories; Ch. 7.6 three independent axes and knowledge table; Ch. 9.2 scope wording; glossary
  and references entries.

### Fixed

- KV cache sizing example: 4 KB/token corrected to 512 KiB/token for the stated configuration, formula now uses `num_kv_heads` (Ch. 6.3).
- Statistical significance wording and paired-comparison guidance (Ch. 1.3).
- Group split definition (Ch. 1.6).
- Fine-tuning vs knowledge nuance (Ch. 2.2, 2.10) and training-axes table in Ch. 7.6.
- RLHF/DPO scope paragraph (Ch. 7.6).
- OWASP LLM Top 10 mapping moved from the 2023 list to the 2026 edition (Ch. 4.2, references).
- A2A dates and 1.0 version (Ch. 3.5, glossary, references).
- MCP authorization flow updated to the 2026-07-28 revision; dated spec links (Ch. 4.8, references).
- p50 described as the median (Ch. 6.2).
- TTFT/TPOT row in the quantization trade-offs table (Ch. 2.2).
- G-Eval arXiv id (references).
- Manual table-of-contents sections with anchors MkDocs could not resolve removed (references, glossary, licensing, labs).
- Stale `docs/` links and labels replaced with the current structure.
- Typos and project dictionary cleanup.
- Front matter: `est_minutes` dropped, `status` semantics documented, unique `order` per file.
- Outdated URLs (prefill-decode disaggregation handbook, TensorFlow Serving, Memory Bank, SpiceDB consistency).

## [0.1.0] - 2026-06-21

### Added

- Initial handbook template: `content/<lang>/` structure, module/lab/project templates,
  MkDocs (docs_dir: content) + i18n, CI (lint/spell/links/build/parity), governance.
