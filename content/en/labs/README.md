---
title: "Labs"
lang: en
order: 101
status: draft
tags: [exemplos]
---

# 🧪 Practical Examples

This directory will contain the practical examples referenced by the book (see [Home](../index.md)). The full matrix, with status and priority, is maintained internally by the author.

> ⚠️ **Current status.** No example is implemented in this version of the project. All of them appear as **planned**. This folder exists today as a **placeholder** and as a reference for the standard structure. The repository should **not yet be treated as a runnable collection**; v0.1 prioritizes structure, content and a technical map.
>
> 🎯 **Principle.** Each example, when implemented, must be **"easy to run and see by yourself"**: clone, run a single command, see it working locally in minutes, with no mandatory dependency on paid credentials.

---

## 🧭 Standard structure of each example

Each example lives in a folder with an identifier code (`EX-XXX-NN-short-name/`) and has the following minimum content:

```text
labs/EX-XXX-NN-short-name/
├── README.md            # objective, prerequisites, commands
├── pyproject.toml       # or requirements.txt
├── docker-compose.yml   # when applicable
├── Makefile             # short commands (run, test, clean)
├── src/                 # source code
└── tests/               # minimal tests
```

---

## 🚀 How to run

Most examples follow one of these patterns:

```bash
# Pattern 1 - pure Python
cd labs/EX-LLM-01-rag-local
make run

# Pattern 2 - Docker Compose
cd labs/EX-AGT-03-mcp-server-minimo
docker compose up

# Pattern 3 - Pytest (eval/test harness)
cd labs/EX-EVAL-01-pytest-golden
make test
```

---

## 🧰 Preferred stack

| Category | Tool |
|---|---|
| Language | Python 3.11+ |
| Web framework | FastAPI |
| Containerization | Docker + Docker Compose |
| Classic ML | scikit-learn, pandas, pandera |
| Experiments | MLflow (local) |
| Local LLM | Ollama |
| Local vector DB | Qdrant or Chroma |
| Hybrid search | OpenSearch local (in some examples) |
| Agent frameworks | LangGraph, OpenAI Agents SDK (with local fallback) |
| Tracing | OpenTelemetry + Jaeger |
| Policy-as-code | OPA + Rego |
| Workflow engine | A simple FSM in Python for short examples; Temporal only where durability/long-running is the point being demonstrated |
| Tests | pytest, hypothesis |
| Eval | Ragas, pytest-snapshot |

> ⚠️ When an example requires a cloud model (e.g., a direct comparison with GPT/Claude), there is a documented **local fallback** in the example's README.

---

## 📊 Current status

The project's first phase delivers the **editorial structure** — the examples have **not** yet been implemented and are part of the roadmap, not the current delivery. They are **planned** in the examples matrix maintained internally by the author; this index records the groups and the suggested order.

The first suggested batch for implementation:

1. **EX-LLM-01** — basic local RAG (Ollama + Qdrant).
2. **EX-ML-04** — classifier via FastAPI.
3. **EX-AGT-01** — agent with function calling.
4. **EX-AGT-02** — tool registry with versioning.
5. **EX-EVAL-01** — eval harness with pytest.
6. **EX-AGT-07** — tracing with OpenTelemetry.
7. **EX-SEC-01** / **EX-SEC-02** — prompt injection (direct and indirect).
8. **EX-HYB-01** — routed ML + LLM + agent.
9. **EX-COST-01** — budget enforcer.
10. **EX-LIFE-01** — tool deprecation.

Each example, when implemented, must update the matrix with the correct status (`planned` -> `partial` -> `implemented`).

---

## 🧾 Contributing examples

Before submitting a new example:

- Check whether it is covered by the groups in this index; if it is not, open an issue proposing the example.
- Follow the standard structure above.
- Keep the constraints: runs in ≤ 10 minutes, no mandatory paid credentials, with minimal tests.

Full details in [CONTRIBUTING.md](https://github.com/ruanpato/production-ai-engineering/blob/main/CONTRIBUTING.md).

---

## ⚠️ Disclaimer

The examples are for **educational** purposes. They are **not** production code:

- Without complete security hardening.
- Without official support.
- Without a guarantee of working in future dependency versions.

To use snippets in production, review them, add tests, hardening, proper secrets, observability and error handling according to the good practices described in the book.

---

## 📜 License

The practical examples are still **planned** — this folder today serves only as a placeholder and as a reference for the standard structure.

When the examples are implemented, the code here in `labs/` will be licensed under the **MIT License** via [`../LICENSE-CODE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE-CODE). The textual content of the book and documentation remains under CC BY 4.0 via [`../LICENSE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE). Details in [licensing.md](../licensing.md).
