---
title: "Licensing"
lang: en
order: 97
status: stable
tags: [referencia]
---

## 📜 Licensing

This document describes the project's licensing decision, its rationale and the trade-offs considered. The model is simple: the project separates a **content license** from a **code license**.

> ⚠️ **Notice.** This document is **not** legal advice nor a definitive legal interpretation. For sensitive uses (legal, contractual, significant commercial), consult legal counsel specialized in intellectual property and open-source licensing.

---

## 🗂️ Table of contents

- [📜 Licensing](#-licensing)
- [🗂️ Table of contents](#️-table-of-contents)
- [🧭 1. Decision](#-1-decision)
- [📖 2. Why CC BY 4.0 for the text?](#-2-why-cc-by-40-for-the-text)
- [💻 3. Why MIT for the code?](#-3-why-mit-for-the-code)
- [🧱 4. Why separate the text and code licenses?](#-4-why-separate-the-text-and-code-licenses)
- [📝 5. Attribution](#-5-attribution)
- [🪧 6. File headers (optional)](#-6-file-headers-optional)
- [🌐 7. Distribution of the generated PDF](#-7-distribution-of-the-generated-pdf)
- [🤖 8. Use in model training](#-8-use-in-model-training)
- [📚 References](#-references)

---

## 🧭 1. Decision

The repository contains two types of artifact with different profiles, and each receives the license most appropriate to its use:

| Artifact | Type | License | File |
|---|---|---|---|
| Book text (`content/**`, `README.md`, diagrams, tables, editorial materials) | Editorial content | **Creative Commons Attribution 4.0 International (CC BY 4.0)** | [`LICENSE`](../LICENSE) |
| Code (scripts, notebooks, runnable examples in `labs/**`) | Software | **MIT License** | [`LICENSE-CODE`](../LICENSE-CODE) |

The separation is common in technical editorial projects with supporting code. The two licenses coexist at the root of the repository:

- [`LICENSE`](../LICENSE) covers **textual content**.
- [`LICENSE-CODE`](../LICENSE-CODE) covers **source code**.

When in doubt about which license applies to a specific file: text and documentation follow `LICENSE`; code follows `LICENSE-CODE`.

---

## 📖 2. Why CC BY 4.0 for the text?

**CC BY 4.0** is a standard Creative Commons open license that allows:

- sharing (copying and redistributing in any medium or format);
- adaptation (remix, transform, create derivative works);
- use, including commercial use.

The only relevant requirement is **attribution**: give appropriate credit, indicate whether changes were made, and provide a link to the license.

Criteria that motivated the choice:

- **Maximizes reach and impact** — the book's goal is to circulate as public technical material.
- **Compatible with inclusion in training and corporate materials**, as long as attribution is kept.
- **Compatible with adaptations and translations**.
- **No viral (share-alike) clause** — it does not restrict the license of works that combine this content with other materials.

Accepted trade-off: commercial redistribution is allowed, but requires attribution.

Other options considered and discarded:

| License | Why it was not chosen |
|---|---|
| CC BY-SA 4.0 | Requires share-alike, which can make mixing with other materials harder. |
| CC BY-NC 4.0 | Blocks corporate use, which is part of the target audience. |
| CC BY-NC-SA 4.0 | Combines both restrictions above. |
| CC0 / public domain | Waives rights without requiring attribution. |
| All rights reserved | Hostile to collaboration and reuse. |

---

## 💻 3. Why MIT for the code?

**The MIT License** is a permissive, short license widely adopted in open-source projects. It allows use, copy, modification, merging, publishing, distribution, sublicensing and sale of the software, requiring only that the copyright notice and the permission be preserved in copies.

Criteria that motivated the choice:

- **Simple** — short text, easy to read and audit.
- **Permissive** — does not restrict integration with other projects, including commercial ones or with different licenses.
- **A de facto standard** in educational projects and technical examples.
- **Familiar** to most engineering teams.

Known trade-off: MIT does not cover patents explicitly. If a future example involves patentable techniques, it is worth considering Apache 2.0 specifically for that example.

---

## 🧱 4. Why separate the text and code licenses?

Text and code have different natures:

- **Text** circulates in editorial form: reading, citations, translations, adaptations, slides. Creative Commons licenses were designed for that flow.
- **Code** circulates as software: it is compiled, imported, modified and redistributed as part of other systems. Licenses like MIT are designed for that flow.

Applying CC BY to code creates ambiguity (CC itself **recommends not using** its licenses for software). Applying MIT to a whole book also does not fit well. Keeping both licenses coexisting at the root, with a clear scope in each file, is the cleanest option.

---

## 📝 5. Attribution

A suggested standard attribution block for reusing the text:

```markdown
This content is an adaptation of "AI Engineering in Production"
(author: Ruan Pato), published under CC BY 4.0.
Original repository: https://github.com/ruanpato/production-ai-engineering
```

For the code:

```text
This file is part of the "AI Engineering in Production" project, licensed
under the MIT License. Copyright (c) 2026 Ruan Pato.
```

---

## 🪧 6. File headers (optional)

The `LICENSE` and `LICENSE-CODE` files at the root are already sufficient. To make the license explicit in each individual file, you can add SPDX headers:

For Markdown files:

```markdown
<!--
SPDX-License-Identifier: CC-BY-4.0
Copyright (c) 2026 Ruan Pato
-->
```

For code files:

```python
# SPDX-License-Identifier: MIT
# Copyright (c) 2026 Ruan Pato
```

---

## 🌐 7. Distribution of the generated PDF

A PDF generated from the book content inherits the CC BY 4.0 license of the content. Distributing the PDF is allowed as long as attribution is kept.

---

## 🤖 8. Use in model training

CC BY 4.0 contains no specific clauses about the use of content in model training. This is an evolving legal topic, with significant differences between jurisdictions and no consolidated case law.

This project's editorial stance is to **not add** anti-AI or no-AI-training restrictions. Reasons:

- The project's goal is the diffusion of technical knowledge.
- The legal force of such clauses is contested and varies by jurisdiction.
- Additional clauses may make it no longer standard CC BY 4.0, which harms reuse by those who already understand the license.

Anyone who wants to make different decisions for a fork or adaptation may do so, respecting the conditions of CC BY 4.0.

---

## 📚 References

- Creative Commons — *Choose a License*: <https://creativecommons.org/share-your-work/cclicenses/>
- CC BY 4.0 — full text (legal code): <https://creativecommons.org/licenses/by/4.0/legalcode.txt>
- CC BY 4.0 — readable *deed* version: <https://creativecommons.org/licenses/by/4.0/>
- MIT License — OSI reference: <https://opensource.org/license/mit>
- SPDX License List: <https://spdx.org/licenses/>

> ⚠️ **Editorial notice.** For sensitive legal use — contracts, disputes, significant commercial distribution — consult legal counsel. This document describes the project's editorial intent; it does not constitute a legal opinion.
