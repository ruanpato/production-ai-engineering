---
title: "AI Engineering in Production"
lang: en
order: 1
status: stable
tags: [inicio]
---

# AI Engineering in Production

> From models to agents — AI systems as critical software.

## 🎯 Why this book exists

There is plenty of material on Machine Learning, LLMs and Agentic AI. Most of it focuses on demos, the framework of the week, or vendor marketing. Little of it explains, with technical seriousness, how these systems are actually operated in corporate environments: bad data, tight latency, costs under scrutiny, mandatory auditing, real regulation, and users who will not accept made-up answers.

The material gathered here brings together personal notes on architecture, MLOps and the operation of AI systems — decisions, patterns, anti-patterns and scars — now compiled and reorganized as a public book/handbook.

The thesis is simple and runs through the entire material:

> **AI systems in production are not just models.** They are sociotechnical systems that must be designed, operated, observed, audited and deprecated as **critical software**.

Everything that follows is a consequence of this thesis. To avoid repetition, it is established here and in Parts 0 and 4, and then referenced briefly in the chapters. When a technique does not back a guarantee, that limit appears **in the text itself**.

## 👥 Who this book is for

- AI architects, ML/LLM engineers, data engineers, MLOps, LLMOps and AgentOps practitioners.
- Technical leaders who must decide between traditional ML, LLMs, RAG, agents, deterministic workflow, or hybrid combinations.
- Security, governance and FinOps specialists who must apply their disciplines to probabilistic systems.

The book assumes prior knowledge of software engineering, APIs, cloud, data and security. It does **not** teach Python, SQL or basic computing concepts.

## 🚫 Who this book is **not** for

- Those looking for "zero to deploy" tutorials on a single tool.
- Those who want a "creative" prompt engineering manual.
- Those who want to rank frameworks by hype.

## 🧾 What this book does **not** promise

This work is explicit about its limitations. It does **not** claim that:

- LLMs are sources of truth.
- RAG eliminates hallucination.
- Guardrails or prompts guarantee security.
- Tool metadata prevents misuse.
- Fine-tuning replaces a dynamic knowledge base.
- Multi-agent automatically solves complex problems.
- AI can be declared "100% safe".

Whenever a technique does not guarantee a behavior, this book says so **explicitly**.

## 📚 How to read this material

There are three suggested reading modes, and none is mandatory:

1. **Linear.** From Part 0 to Part 9, like a course. Ideal for those building a career in the field.
2. **By track.**
   - Traditional ML -> Parts 0, 1, 5 (observability), 6 (costs), 7 (deployment).
   - LLM/RAG -> Parts 0, 2, 4, 5, 6.
   - Agentic AI -> Parts 0, 3, 4, 5, 7.
3. **By reference.** Chapters follow a standardized format (objective, concept, production, trade-offs, risks, observation, testing, checklist), which makes spot lookups easy without losing context.

There is also a **narrative thread** — the **Hermes Logística** case study — introduced in Part 0 and revisited across several parts. It is not a runnable example; it is a plausible story used to connect decisions.

## 🧰 About the practical examples

The book **references** practical examples by code (`EX-RAG-01`, `EX-AGT-02`, etc.) and the full matrix lives in the [labs index](labs/README.md).

> ⚠️ **Honest status.** In this version, **the practical examples have not yet been implemented**. They are **planned**, with declared priority and stack, and will be delivered in later cycles. The text was written so that this link feels natural once the code exists; nothing here depends on the reader running an example now. v0.1 prioritizes structure, content and a technical map, not runnable code.

When the examples are implemented, they will live in `labs/`, favoring an open-source stack: Python 3.11+, FastAPI, scikit-learn, pytest, Ollama (local models), Qdrant or Chroma (local vector DBs), OpenTelemetry + Jaeger (tracing), OPA/Rego (policy-as-code), Docker and Docker Compose. When an example needs a cloud model, it will have a documented local alternative.

## 👤 About the author

**Ruan Pato** works with software and AI systems in production: architecture, MLOps/LLMOps/AgentOps, security, observability and continuous operation. The throughline of his work is that enterprise AI is **critical software** and that most of the real value appears in the system, not in the isolated model.

This material is the result of personal notes reorganized into public form. It is not a manifesto nor a promotional piece; it is the kind of handbook that proves useful to those starting to bring systems into production or who want to revisit concepts easily.

- GitHub: <https://github.com/ruanpato>
- LinkedIn: <https://www.linkedin.com/in/ruanpato/>
- Personal site: <https://ruanpato.com>

## 🤝 How to contribute in the future

Details in [CONTRIBUTING.md](https://github.com/ruanpato/production-ai-engineering/blob/main/CONTRIBUTING.md). In short: editorial and technical fixes are welcome via issue or PR; marketing content disguised as neutrality is not accepted; references must be verifiable technical sources (papers, official docs, specs, RFCs, engineering blogs).

## 🗒️ Conventions and status of this draft

- **Text in English** (translated from the Brazilian Portuguese source of truth).
- **Emojis in headers and markers** are part of the project's style: they are used as visual identity and navigation, not as decoration.
- **Emerging topics** (A2A, MCP Authorization, FinOps for AI, part of the tool lifecycle) have their **maturity declared** in the chapter itself.
- **Uneven depth.** Some parts are more mature than others; sections still in outline form will be expanded in future cycles. Short chapters follow the same editorial pattern as long ones only when it helps reference reading.
- **The central thesis avoids literal repetition.** It appears in the Preface and Part 0, and later chapters use short references (e.g., "as discussed in Part 0") instead of restating it in full.

---
