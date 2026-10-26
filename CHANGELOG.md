# Changelog

Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) · [SemVer](https://semver.org/).

## [Unreleased]

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
