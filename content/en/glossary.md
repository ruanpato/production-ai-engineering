---
title: "Glossary"
lang: en
order: 98
status: stable
tags: [referencia]
---

# 📖 Glossary

An alphabetical glossary of the core concepts used in the book. For important concepts, the entry explains:

- **What it is.**
- **Where it shows up in production.**
- **Risks.**
- **Relationship to other concepts.**

Auxiliary concepts have a shorter definition. Entries are organized alphabetically; when there is an acronym, it is the title.

---

## A

### A2A (Agent2Agent protocol)

- **What it is.** An open protocol, originally proposed by Google and now maintained by the Agentic AI Foundation (`a2a-protocol.org`), to standardize communication between agents via Agent Cards, messages and a task lifecycle. Announced in April 2025 and transferred to the Linux Foundation in June 2025, it had its 1.0 specification published in March 2026 and moved to the Agentic AI Foundation in August 2026.
- **Where it shows up in production.** Environments where multiple agents (from different vendors or teams) need to interconnect via a common contract.
- **Risks.** As with MCP, A2A is a connector; it is **not** a security mechanism. Authorization, identity and auditing must be in deterministic layers.
- **Relationship.** Complements MCP. MCP standardizes agent↔tool/resource; A2A standardizes agent↔agent.
- **Maturity.** Emerging topic; the spec evolves. Adopt with an explicit migration window and controls outside the protocol.

### ABAC (Attribute-Based Access Control)

- **What it is.** An authorization model based on attributes (user, resource, action, context).
- **Where it shows up.** Access policy for sensitive data, tools and agent memory.
- **Relationship.** An alternative or complement to RBAC; can be implemented in OPA/Rego or Cedar.

### AgentOps

- **What it is.** A set of operational practices specific to agents: versioning of prompts, tools, MCP servers and runtime; semantic tracing observability; end-to-end eval harness; per-agent FinOps.
- **Where it shows up.** In teams that operate a portfolio of agents in production.
- **Risks.** Confusing AgentOps with LLMOps; agents add the complexity of **action** and **state**.

### Agent harness

- **What it is.** The engineering around the model: orchestration, retries, timeouts, fallbacks, policy, observability, evals, sandbox, HITL, auditing.
- **Where it shows up.** In any serious agent in production.
- **Relationship.** The harness is the real product. The model is just a component.

### Agent runtime

- **What it is.** The layer that executes the agent's loop: receives input, assembles context, calls the model, interprets tool calls, executes tools, updates state, decides to stop.
- **Relationship.** A subset of the harness — only the execution, not the surrounding engineering.

### Agency

- **What it is.** The operational capacity to pursue a goal via intermediate decisions and permitted actions.
- **Risks.** Increasing agency without increasing controls is the classic mistake in agents.

### AI Agent

- **What it is.** A concrete implementation of an agentic system with a model, context, tools, memory, policies, runtime, evaluation and observability.
- **Relationship.** Differs from a chatbot (no tools/state), a copilot (assists a human) and an automated workflow (deterministic).

### AI gateway / Model gateway

- **What it is.** An intermediary layer between the application and model providers. Responsibilities: API abstraction, rate limiting (req/s + tokens/s + cost/s), caching (prompt + semantic), routing, fallback, unified observability, redaction/DLP, budget enforcement, audit log, integration with policy engines.
- **What it does NOT do.** It does not replace real IAM/policy, does not eliminate prompt injection, does not guarantee multi-tenant isolation.
- **Widely used projects.** LiteLLM (open-source), Kong AI Gateway plugins, Portkey, Cloudflare AI Gateway.
- **Risks.** Lock-in to the gateway; a single point of failure. Mitigated by a stateless design and portability.

### Audit log

- **What it is.** An immutable record of critical events (decisions, actions, accesses).
- **Where it shows up.** Compliance, incident investigation, accountability attribution.

### Agent identity

- **What it is.** The agent's own identity (service account, workload identity) distinct from the human credential that invoked it.
- **Where it shows up.** Agents acting on-behalf-of with OAuth/OIDC, MCP Authorization, minimal scopes and token rotation.
- **Risks.** Reusing a human credential widens the blast radius and hinders auditing.
- **Relationship.** Complements delegated authorization and policy-as-code.

### Agent Card

- **What it is.** A document (JSON) that describes an A2A-compatible agent: endpoints, capabilities, authentication, execution modes.
- **Where it shows up.** Discovery in multi-agent systems.
- **Risks.** Capabilities that are too broad; lack of explicit versioning.

### Agent Skills / AGENTS.md

- **What it is.** Two file conventions, not protocols, for instructing agents. **`AGENTS.md`** is free-form Markdown at the repository root (or nested in monorepos; the closest file wins) with guidance for coding agents, now governed by the Agentic AI Foundation. **Agent Skills** is an open format in which a folder with a `SKILL.md` (front matter with `name` and `description`, plus `scripts/`, `references/` and `assets/`) packages portable instructions loaded on demand; the `allowed-tools` field is experimental.
- **Where it shows up.** Repositories used by coding agents; distribution of reusable procedures across agents and tools.
- **Risks.** They enter the model's context as text: they are an indirect prompt injection and supply-chain surface, like tool descriptions. They require review, versioning and provenance.
- **Relationship.** They complement MCP (which standardizes tools/resources) without replacing it; see Ch. 3.5, 4.3, 4.9.
- **Maturity.** `AGENTS.md` is a widely adopted convention; Agent Skills is a recent open format (late 2025), with no confirmed foundation governance.

### AWQ (Activation-aware Weight Quantization)

- **What it is.** A post-training quantization method that preserves "salient" weight channels (high activation magnitude) and quantizes the rest.
- **When to use.** INT4 serving with quality superior to round-to-nearest.
- **Reference.** Lin et al., 2023 (<https://arxiv.org/abs/2306.00978>).

---

## B

### Blue/green deployment

- **What it is.** A rollout strategy with two complete environments; traffic alternates between "blue" (current) and "green" (new) for fast rollback.
- **Where it shows up.** Inference services and agents when instant reversal is a requirement.
- **Relationship.** Complementary to canary and shadow deploy.

### Batch inference

- **What it is.** Mass inference execution, usually offline or in scheduled windows.
- **Trade-off.** High latency, low cost. Useful for scoring, mass embeddings, recomputation.

### Benchmark contamination

- **What it is.** Presence of a benchmark's task, answer or solution in the model's training data or in sources the agent can reach during evaluation.
- **Where it shows up.** Old public benchmarks; agents with web access that look up the solution online; internal sets published together with the verifier.
- **Risks.** A score that measures memory or search, not capability. Mitigations: decontamination of training data, canary string, removal of tasks with public solutions, egress blocked during evaluation (Ch. 1.6, 5.7).

### Bias

- **What it is.** Systematic error from excessive simplification. Leads to underfitting.
- **Relationship.** Complementary to variance.

### Blast radius

- **What it is.** How much a wrong action by an agent can damage the system/company.
- **Where it shows up.** Decisions about permissions, sandboxing and HITL.

### BPE (Byte Pair Encoding)

- **What it is.** A subword tokenization algorithm.
- **Relationship.** An alternative to SentencePiece in some models.
- **Reference.** Sennrich, Haddow & Birch, ACL 2016 (<https://aclanthology.org/P16-1162/>).

### bitsandbytes

- **What it is.** A Python library for loading models in 8-bit/4-bit (including NF4) with Hugging Face Transformers.
- **Where it shows up.** Prototyping and fine-tuning (QLoRA).
- **Limits.** Not the typical path for low-latency serving at large scale; for that, prefer vLLM/TensorRT-LLM kernels.

---

## C

### Chatbot

- **What it is.** A system that responds in natural language, without tools, operational state, or an autonomous action loop.
- **Relationship.** Different from a copilot, workflow, agent and multi-agent.

### Copilot

- **What it is.** A system that assists a human in a specific task, with low-to-medium autonomy.
- **Relationship.** Does not imply a complete tool registry, policy engine or eval harness.

### Calibration

- **What it is.** The correspondence between the probability predicted by the model and the observed real frequency.
- **Metric.** ECE (Expected Calibration Error).
- **Where it shows up.** Risk decisions and ranking.

### Canary deployment

- **What it is.** Releasing a new version to a small slice of traffic, monitoring and expanding.

### Chunking

- **What it is.** Splitting documents into pieces for embedding and retrieval.
- **Risks.** Bad chunking destroys RAG. Strategies: fixed, semantic, hierarchical (parent/child).

### Circuit breaker

- **What it is.** A mechanism that interrupts calls to a component when failures exceed a limit.
- **Where it shows up.** Tool calls, model, retrieval.

### Concept drift

- **What it is.** A change in the relationship between features and label over time.
- **Detection.** Performance metrics compared to a baseline.

### Context engineering

- **What it is.** The discipline of selecting, ordering, compacting and structuring the context sent to the model.
- **Relationship.** Broader than prompt engineering.

### Context window

- **What it is.** The maximum number of tokens the model accepts in a call.
- **Trade-off.** Large windows increase cost and can degrade quality due to noise.

### Contextual retrieval

- **What it is.** An **indexing** technique in which an LLM writes a short context (50–100 tokens) for each chunk, derived from the whole document, before generating the embedding and indexing in BM25.
- **Where it shows up.** RAG pipelines in which chunks lose their referents ("the company", "the contract") when cut from the document.
- **Risks.** A one-off cost of one generation per chunk at each reindexing; gains measured on the author's own benchmark (top-20 retrieval failures −49% with contextual BM25 and −67% with reranking); validate on your golden set.
- **Relationship.** Orthogonal to query-side techniques (HyDE, rewriting) and to late chunking; combines with hybrid search and reranking. See Ch. 2.7.

### Continued pretraining and mid-training

- **What it is.** Continuing pretraining (next-token prediction) on a domain corpus (continued pretraining) or on a curated, high-quality mix applied as a short stage before post-training (mid-training). The naming still varies across reports.
- **Where it shows up.** Domain adaptation with stable knowledge (vocabulary, conventions); recent open-model recipes.
- **Risks.** Requires billions of tokens; breaks instruction following without a restoration step; typical LoRA falls behind full fine-tuning in this regime. See Ch. 7.6 and 7.8.

### Continuous batching

- **What it is.** A scheduling technique in LLM inference servers that adds new sequences to the batch at each step, without waiting for the batch to close.
- **Where it shows up.** vLLM, TensorRT-LLM (in-flight batching), TGI.
- **Why it matters.** Increases GPU utilization and aggregate throughput.

### Cedar

- **What it is.** AWS's policy language for authorization; an alternative to Rego in some cloud-native environments.
- **Where it shows up.** Authorization of APIs and tools when the team has already standardized on Cedar.
- **Relationship.** Complementary to OPA/Rego and SpiceDB (ReBAC).

### CycloneDX

- **What it is.** An SBOM format maintained by OWASP. Supports ML-BOM (models, datasets, hyperparameters).
- **Where it shows up.** Build pipelines, AI supply chain.
- **Relationship.** An alternative/complement to SPDX.

---

## D

### Data contract

- **What it is.** A versioned specification of schema, quality, SLAs and governance rules for a dataset.
- **Where it shows up.** The interface between upstream and ML/LLM pipelines.

### Dataset card

- **What it is.** A document that describes the origin, schema, bias, license, restrictions and recommended use of a dataset (analogous to the model card).
- **Where it shows up.** Data governance, experiment tracking, supply chain.
- **Reference.** Gebru et al. — *Datasheets for Datasets*.

### Data drift

- **What it is.** A change in the distribution of features over time.
- **Detection.** KS test (Kolmogorov-Smirnov), PSI, Jensen-Shannon divergence.

### Decontamination

- **What it is.** Removing from training the examples that overlap the evaluation suite, by n-grams (8-gram, with a per-dataset threshold) or by random substrings, before training.
- **Where it shows up.** Curation of post-training data; preparation of the holdout and of splits by family.
- **Risks.** Passing the n-gram check is not being clean: rephrasings escape it, especially in code and multiple choice. See Ch. 1.6 and 7.8.

### Delegated authorization

- **What it is.** Permission granted to an agent to act on behalf of a user, via patterns such as OAuth 2.0.
- **Risks.** Broad or long-lived tokens; the need for minimal scope and rotation.

### Deprecation

- **What it is.** A controlled process for retiring a prompt, tool, model, schema, MCP server or agent.
- **Risks.** Marking metadata as `deprecated` does **not prevent** the model from trying to use it. Real blocking must be in deterministic layers.

### Deterministic control

- **What it is.** A mechanism whose behavior is predictable and auditable (code, policy-as-code, RBAC).
- **Relationship.** Distinguish it from **mitigation** (which reduces probability, without guaranteeing).

### Distillation

- **What it is.** Training a smaller model (student) from a larger model (teacher).
- **Where it shows up.** Cost optimization in production.

### DataOps

- **What it is.** Practices of quality, lineage, contracts, freshness and SLAs over the data that feeds ML/LLM.
- **Where it shows up.** Ingestion pipelines, feature stores, RAG indexes.
- **Relationship.** Complements MLOps; bad DataOps degrades any model.

### DLP (Data Loss Prevention)

- **What it is.** A set of controls to prevent the leakage of sensitive data.
- **Where it shows up.** Inspection of prompts, outputs, tool calls.

### Dimension (of embeddings)

- **What it is.** The size of the vector produced by an embedding model (`d`). Common values: 256–4096.
- **Trade-off.** A larger `d` tends to yield higher recall, but costs more storage, RAM and ANN latency.
- **Relationship.** In Matryoshka models, dimension can be reduced via truncation without re-embedding.

### DPO (Direct Preference Optimization)

- **What it is.** A training objective that learns from chosen/rejected pairs directly, with a classification loss relative to a reference policy and a coefficient β that limits the deviation; it dispenses with a separate reward model and an online loop.
- **Where it shows up.** Light post-training of open models (combinable with LoRA); public recipes that prefer DPO over PPO for preferences on cost.
- **Risks.** Learns the pairs' proxy (length, confidence) if the pairs are biased; regression on uncovered capabilities. See Ch. 7.6 and 7.8.

---

## E

### Egress control

- **What it is.** Restriction of network egress from sandboxes and agent runtimes (destination allowlist, blocking by default).
- **Where it shows up.** Execution of generated code, MCP servers, external tools.
- **Relationship.** Complements sandbox and policy-as-code.

### Equalized odds

- **What it is.** A fairness criterion: equal TPR and FPR across protected groups.
- **Where it shows up.** Evaluation of classification models in regulated contexts.
- **Reference.** Hardt, Price & Srebro (2016).

### ECE (Expected Calibration Error)

- **What it is.** The weighted average difference between predicted confidence and observed accuracy across bins.
- **Where it shows up.** Calibration evaluation.

### Embedding

- **What it is.** A dense vector representation of text, image or entity.
- **Where it shows up.** Retrieval, clustering, semantic classification.

### Eval harness

- **What it is.** Infrastructure that runs systematic evaluations (datasets, checks, release gates).
- **Where it shows up.** CI/CD of prompts, tools, agents and models.

### Excessive agency

- **What it is.** A situation where the agent has more autonomy/permissions than it needs.
- **Risk.** High blast radius.

### FP8 / FP16 / BF16 / INT8 / INT4 / NF4

- **What they are.** Numerical formats used in training and inference.
  - **FP32 / FP16 / BF16** — floating point; FP16 smaller than FP32 keeping a reasonable range; BF16 keeps range ~ FP32 with 16 bits.
  - **FP8 (E4M3, E5M2)** — 8-bit floating point, modern hardware (H100, H200, MI300).
  - **INT8** — 8-bit integer; W8A8 or W8A16 in inference.
  - **INT4 / NF4** — 4-bit integer; NF4 is QLoRA's "NormalFloat" 4-bit, optimized for the weight distribution.
- **Where they show up.** Quantization for inference and fine-tuning.

---

## F

### FSDP (Fully Sharded Data Parallel)

- **What it is.** A PyTorch strategy that shards parameters, gradients and optimizer states across GPUs (conceptually equivalent to ZeRO-3).
- **Where it shows up.** Fine-tuning/training of large models that do not fit in one GPU.
- **Relationship.** With ZeRO/DeepSpeed; an operational scope distinct from serving.

### F1 score

- **What it is.** The harmonic mean of precision and recall.
- **Where it shows up.** Classification with imbalanced classes.

### Feature store

- **What it is.** A platform that stores, versions and serves features.
- **Patterns.** Offline store (training) + online store (inference) with parity.

### Fine-tuning

- **What it is.** Adapting the weights of a pre-trained model to a domain.
- **When to use.** Style, format, narrow competence.
- **When NOT to use.** To insert mutable factual knowledge (use RAG).

### FinOps

- **What it is.** A discipline for cost and consumption management.
- **In AI.** Includes token budget, cost per task, cost per tenant, chargeback.

### Function calling

- **What it is.** A schema-first mechanism for the model to propose calls to functions.
- **Important.** The model **proposes**; the application **validates, authorizes and executes**.

---

## G

### GGUF

- **What it is.** The `llama.cpp` file format for quantized models (Q4_K_M, Q5_K_M, Q8_0, IQ-quants, etc.).
- **Where it shows up.** Local mixed CPU/GPU inference, prototyping.

### GPTQ

- **What it is.** A layer-by-layer post-training quantization method that uses a second-order approximation of the reconstruction error.
- **When to use.** INT4/INT3 serving with a good quality/cost balance.
- **Reference.** Frantar et al., ICLR 2023 (<https://arxiv.org/abs/2210.17323>).

### GraphRAG

- **What it is.** RAG that uses a graph structure (knowledge graph) to retrieve relations and subgraphs.
- **When to use.** Multi-hop questions, relational compliance, investigation.

### Groundedness

- **What it is.** The degree to which the model's answer is supported by retrieved/cited evidence.
- **Where it shows up.** RAG evaluation.

### Guardrail

- **What it is.** A heuristic layer that tries to filter dangerous inputs/outputs.
- **Limits.** Reduces risk, does **not guarantee**. It is not a deterministic control.

---

## H

### Hallucination

- **What it is.** A plausible but factually incorrect output from an LLM.
- **Mitigation.** Grounding, RAG, validation, citations; nothing eliminates it.

### Hybrid search

- **What it is.** A combination of lexical search (BM25) and vector search.
- **When to use.** Technical documents with acronyms, codes and natural language.

### HyDE (Hypothetical Document Embeddings)

- **What it is.** A query-side technique in which an LLM writes a **hypothetical document** that would answer the question; the embedding of that document (mean of N samples plus the query embedding) is used for dense search, shifting the problem from "query → document" to "document → document".
- **Where it shows up.** Zero-shot retrieval without relevance labels; short queries against long documents; a domain outside the retriever's training.
- **Risks.** One synchronous generation per query (2.5–3× retrieval latency in independent measurements); the LLM may hallucinate in the wrong direction on ambiguous queries, rare entities and recent facts; with a fine-tuned encoder or a strong reranker the gain shrinks or turns into a loss.
- **Relationship.** An alternative to rewriting and multi-query; competes with hybrid search + reranking and with contextual retrieval. See Ch. 2.7.
- **Maturity.** A 2023 paper with mixed evidence in 2024–2025; a niche technique, not a default.

### HNSW (Hierarchical Navigable Small World)

- **What it is.** An approximate nearest neighbor (ANN) search algorithm for vector similarity based on hierarchical graphs.
- **Where it shows up.** Almost every modern vector DB (Qdrant, Weaviate, pgvector, Pinecone, OpenSearch).
- **Reference.** Malkov & Yashunin, TPAMI 2018 (<https://arxiv.org/abs/1603.09320>).

### Human-in-the-loop (HITL)

- **What it is.** Human intervention at defined points of the flow.
- **Important.** The human must approve a **concrete plan**, not a vague intention.

---

## I

### Indirect prompt injection

- **What it is.** Content retrieved by RAG/tool contains malicious instructions that the model may obey.
- **Mitigation.** Sanitization, allowlists, policy checks, separation of instructions and data.

### Inference

- **What it is.** Execution of the trained model to produce outputs.
- **Modes.** Batch, online, streaming, edge.

---

## K

### Knowledge graph

- **What it is.** A graph of entities, relations and properties.
- **Where it shows up.** GraphRAG, relational compliance, investigation.

### Knowledge source catalog / registry

- **What it is.** The governed inventory of knowledge sources (collections, databases, graphs, feeds) with owner, origin/lineage, sensitivity classification, access policy, jurisdiction, freshness, version and lifecycle status. Metadata *about the sources*, distinct from the vector index itself.
- **Where it shows up.** RAG/GraphRAG governance, audit, supply chain (Ch. 4.12).
- **Note.** "Knowledge Base Registry" is acceptable as a name (registry/catalog is data-governance vocabulary). Product-sounding labels like "Memory Bank", "Engine Orchestration" and "Evaluation Center" are **not** adopted — their concepts already have better names (persistent memory, agent harness/runtime, eval harness).

### KV cache

- **What it is.** A cache of attention keys/values during inference.
- **Where it shows up.** Accelerates decode in LLMs (after prefill).

---

## L

### Label leakage

- **What it is.** A feature contains the label itself (or a direct function of it).
- **Risk.** Unrealistic performance offline; disaster in production.

### label_source

- **What it is.** A field recorded per example (and aggregated in the dataset card) that identifies the origin of a label or preference: human annotator, LLM judge (with model and version), verifier or heuristic.
- **Where it shows up.** Preference and demonstration datasets; dataset cards; post-training reports.
- **Risks.** Without it, judge bias cannot be separated from real gain and the curation cannot be reproduced. See Ch. 7.8.

### LIME (Local Interpretable Model-agnostic Explanations)

- **What it is.** A local explanation technique that approximates the model with a linear regressor around a prediction.
- **Limits.** An approximation, not the "truth" of the model.
- **Reference.** Ribeiro, Singh & Guestrin (KDD 2016).

### Late interaction

- **What it is.** A family of retrieval models (ColBERT, ColBERTv2, ColPali) that keeps **one vector per document token** and scores the query against all of them (MaxSim), instead of compressing each document into a single vector.
- **Where it shows up.** High-precision search; visually rich documents (tables, figures, layouts), where ColPali embeds page images without OCR.
- **Risks.** A larger index (ColBERTv2's residual compression shrinks it 6–10×, still above single-vector) and more expensive scoring; it has not been shown to replace OCR in every case.
- **Relationship.** An alternative to traditional dense embeddings; combines with reranking. See Ch. 2.7.

### Latency (p50, p95, p99)

- **What it is.** Response-time metrics.
- **Important.** Production SLOs should use percentiles, not the average.

### Learned sparse retrieval

- **What it is.** Retrieval in which a neural model learns **sparse vectors over the vocabulary** (per-term weights, with term expansion), indexable in an ordinary inverted index. Canonical example: SPLADE (v2, 2021).
- **Where it shows up.** As a "learned" lexical component inside hybrid search, in place of or alongside BM25.
- **Risks.** Depends on supervised training or distillation; gains reported on academic benchmarks must be confirmed on your own corpus.
- **Relationship.** Between BM25 (sparse, not learned) and dense embeddings; see Ch. 2.7.

### Limited autonomy

- **What it is.** Autonomy restricted by scopes, permissions, budgets and approvals.
- **Relationship.** A central concept of this book: agents should not do "whatever they want".

### LLM-as-a-judge

- **What it is.** Use of an LLM to evaluate answers according to a rubric.
- **Limits.** Useful for scaling, **not** the only source of quality; calibrate against humans.

### LLMOps

- **What it is.** Practices for operating LLM-based applications (versioning, caching, evals, observability, cost).

### LoRA / QLoRA

- **What it is.** Efficient fine-tuning techniques that update low-rank matrices.
- **LoRA.** Low-rank adapters over the frozen base model (Hu et al., 2021).
- **QLoRA.** LoRA over a 4-bit base (NF4) with double quantization and paged optimizers (Dettmers et al., 2023).
- **Where it shows up.** Behavior adaptation without the cost of full fine-tuning.

---

## M

### Metadata filtering

- **What it is.** Restriction of retrieval candidates by structured attributes (tenant, language, jurisdiction, date).
- **Where it shows up.** Multi-tenant RAG, hybrid search, compliance.
- **Risks.** A missing or poorly applied filter causes cross-tenant leakage.

### Matryoshka embeddings / Matryoshka Representation Learning (MRL)

- **What it is.** A family of embeddings trained so that **prefixes** of the vector (e.g., 64, 128, 256, 512, 1024 dimensions) are already semantically valid representations. Allows truncating the dimension without re-embedding.
- **Where it shows up.** OpenAI `text-embedding-3-*` (`dimensions` parameter), Cohere Embed v3, Nomic Embed, Sentence Transformers.
- **Trade-off.** Reduces cost/storage with controlled quality loss.
- **Reference.** Kusupati et al., NeurIPS 2022 (<https://arxiv.org/abs/2205.13147>).

### MCP (Model Context Protocol)

- **What it is.** An open protocol to connect AI applications to tools, resources and prompts via clients and servers.
- **Limits.** A useful connector; it does **not replace** corporate authorization, threat modeling, runtime, evals, observability or human approval.

### MCP server

- **What it is.** A server that exposes MCP capabilities (tools, resources, prompts) to clients.
- **Risks.** Capabilities that are too broad; lack of granular authorization; supply chain.

### MCP client

- **What it is.** A component that connects an application (host) to an MCP server.

### Memory (in agents)

- **What it is.** Persisted and retrievable state used by the agent.
- **Types.** Short-term, working, long-term, episodic, semantic, operational, tools, decisions.
- **Risks.** Memory poisoning, privacy, obsolescence.

### Memory poisoning

- **What it is.** Contamination of the agent's memory with incorrect or malicious data, which is later reused.
- **Mitigation.** Provenance, TTL, confirmation for preferences, evals.

### Mitigation

- **What it is.** A mechanism that reduces the probability of a risk, without guaranteeing its elimination.
- **Relationship.** Distinguish it from **deterministic control**.

### MITRE ATLAS

- **What it is.** A taxonomy of tactics and techniques for attacks on ML systems.
- **Where it shows up.** Threat modeling complementary to the OWASP LLM Top 10.
- **Reference.** <https://atlas.mitre.org/>

### MLOps

- **What it is.** Practices for the lifecycle of traditional ML models (pipeline, registry, observability, governance).

### Model card

- **What it is.** A technical document that describes the purpose, training data, metrics, limits, risks and recommended use of a model.

### Model registry

- **What it is.** A versioned catalog of models with metadata, status (staging, production, archived) and approval.

### Model routing

- **What it is.** Dynamic model selection (by complexity, cost, jurisdiction).

### Multi-agent

- **What it is.** A system with multiple coordinated agents.
- **Risks.** Cost, coordination, loops. Use only with real decomposition.

---

## N

### NDCG

- **What it is.** Normalized Discounted Cumulative Gain. A ranking metric with ordinal relevance and position weighting.

### NIST AI RMF

- **What it is.** NIST's Risk Management Framework for AI systems.

### NIST Generative AI Profile

- **What it is.** A cut of the AI RMF applied to generative AI systems.
- **Where it shows up.** Governance and compliance in deployments with LLMs/agents.

---

## O

### OAuth 2.0 Token Exchange (RFC 8693)

- **What it is.** An IETF standard for token exchange; enables on-behalf-of flows and controlled impersonation.
- **Where it shows up.** Delegated authorization for agents acting on behalf of a user.

### OPA / Rego

- **What it is.** Open Policy Agent + the Rego language for policy-as-code.
- **Where it shows up.** Authorization of agent tools, microservices, Kubernetes.

### Observability

- **What it is.** The ability to infer a system's internal state from its outputs (logs, metrics, traces).
- **In AI.** Includes semantic tracing, quality, cost and security metrics.

### OpenTelemetry GenAI

- **What it is.** OpenTelemetry's semantic conventions for tracing LLMs and agents.

### Overfitting

- **What it is.** The model memorizes training noise; low training error, high test error.

### OWASP LLM Top 10

- **What it is.** A list maintained by OWASP with the main risks for LLM applications (prompt injection, insecure output handling, supply chain, excessive agency, etc.).

---

## P

### Planner-executor (architectural pattern)

- **What it is.** An agent that first plans steps and then executes with tools, with human approval points.
- **Where it shows up.** Auditable multi-step tasks in enterprise.
- **Relationship.** A variant of workflow-first; distinct from free multi-agent.

### Population Stability Index (PSI)

- **What it is.** A metric of distribution change between baseline and production; common in drift monitoring.
- **Where it shows up.** Data drift, feature validation.

### Post-Training Quantization (PTQ)

- **What it is.** Quantization applied after training (GPTQ, AWQ, SmoothQuant).
- **Where it shows up.** Serving with INT8/INT4.
- **Relationship.** An alternative to QAT.

### PagedAttention

- **What it is.** A KV cache management algorithm using paged blocks; avoids fragmentation and enables larger batches.
- **Where it shows up.** vLLM (origin); inspired similar approaches in other engines.
- **Reference.** Kwon et al., SOSP 2023 (<https://arxiv.org/abs/2309.06180>).

### Paired bootstrap

- **What it is.** A method to estimate the uncertainty of the difference between two systems evaluated on the same items: resample the items (or the clusters) with replacement and recompute the mean difference on each resample; the interval comes from the distribution of those differences.
- **Where it shows up.** Paired comparison of prompts, models or scaffolds on the same evaluation set (Ch. 1.3, 5.7).
- **Risks.** With a few dozen items, the bootstrap also underestimates uncertainty; below a few hundred, prefer a paired Bayesian interval for the difference and Wilson or Beta for each system's rate. Resampling attempts instead of items inflates n.

### pass@k

- **What it is.** Probability that at least one of k independent attempts solves the task. Estimated without bias with n ≥ k samples per task and c successes: `1 − C(n − c, k) / C(n, k)`, averaged across tasks.
- **Where it shows up.** Evaluation of code generation and of agents where several attempts are possible (Ch. 5.7).
- **Risks.** It only becomes performance if a selector exists that can pick the right attempt; without one, it is a ceiling. The naive estimator `1 − (1 − p̂)^k` is biased, and there is no unbiased estimator with fewer samples than k.

### pass^k

- **What it is.** Probability that all k independent attempts solve the task: per task, `C(c, k) / C(n, k)`; then averaged across tasks.
- **Where it shows up.** Reliability of agents that run the same class of task repeatedly in production (Ch. 5.7).
- **Risks.** It drops fast with k (in one public benchmark, about 61% at pass^1 became less than 25% at pass^8); comparing one system's pass@k with another's pass^k is comparing different metrics.

### Point-in-time correctness

- **What it is.** In feature stores, ensuring that the features used in training reflect the state of the world at the time of the event, not at the time of the query.
- **Operational reference.** Feast — point-in-time joins (<https://docs.feast.dev/getting-started/concepts/point-in-time-joins>).

### Policy-as-code

- **What it is.** Codified, testable and versioned policies (OPA/Rego, Cedar, etc.).
- **Important.** Critical policies **must** be in code, not in prompts.

### Prompt caching

- **What it is.** Caching of stable parts of the prompt to reduce cost and latency.
- **Caution.** Poorly designed caching can mask policy or version changes.

### Prompt engineering

- **What it is.** Formulating instructions to guide the model.
- **Relationship.** A subset of context engineering.

### Prompt injection

- **What it is.** Input (direct or indirect) that tries to change the model's behavior.
- **Mitigation.** Delimitation, allowlists, policy-as-code, validation. There is no complete defense.

### PTQ

- See **Post-Training Quantization (PTQ)**.

### QAT (Quantization-Aware Training)

- **What it is.** Training that simulates quantization during the forward/backward pass for better quality than pure PTQ.
- **Trade-off.** Higher engineering cost than PTQ.

### Preference pairs (chosen/rejected)

- **What it is.** Data in the format prompt + preferred answer (chosen) + rejected answer (rejected), produced by humans, an LLM judge or a verifier; it feeds DPO and variants or the training of a reward model.
- **Where it shows up.** Preference optimization; paired evaluation.
- **Risks.** Preferences that encode only length or style; mishandled ties; pairs without `label_source`. See Ch. 7.8.

### Prefill / Decode

- **What they are.** The two phases of LLM inference.
  - **Prefill** — processes the prompt in parallel; the dominant latency of TTFT. Limited by compute.
  - **Decode** — generates tokens one by one; the dominant latency of TPOT. Limited by memory bandwidth.

### Protected Resource Metadata (RFC 9728)

- **What it is.** A metadata document published by an OAuth 2.0 *resource server* at a well-known URL, telling the client, among other fields, which *authorization servers* issue tokens valid for that resource and which scopes it accepts.
- **Where it shows up.** Authorization of remote MCP servers: since the 2025-06-18 revision the MCP server is classified as a resource server and **must** publish RFC 9728, and the client **must** send *resource indicators* (RFC 8707) so the token is issued for that specific server.
- **Risks.** Without audience validation, a token issued for one service can be reused at another (*token passthrough*, forbidden by the spec); metadata discovery is an SSRF vector if the client follows URLs without restriction.
- **Relationship.** Basis of the client → resource server → authorization server flow described in Ch. 4.8; see also Ch. 3.5.

### Provenance

- **What it is.** The verifiable origin of an artifact (dataset, model, document, memory preference).

---

## R

### Reciprocal Rank Fusion (RRF)

- **What it is.** A method of fusing rankings (e.g., BM25 + vector) without calibrating scores directly.
- **Where it shows up.** Hybrid search in enterprise RAG.
- **Reference.** Cormack, Clarke & Buettcher (SIGIR 2009).

### RAG (Retrieval-Augmented Generation)

- **What it is.** Generation of answers supported by retrieval of external documents.
- **Limits.** Does **not eliminate** hallucination; reduces risk *when* retrieval is good.

### RBAC (Role-Based Access Control)

- **What it is.** Role-based authorization.

### ReBAC (Relationship-Based Access Control)

- **What it is.** Authorization based on relationships between entities.
- **Where it shows up.** Systems with a permission graph (SpiceDB).

### Reranking

- **What it is.** Reordering of retrieved results with a model or heuristic.

### Residual risk

- **What it is.** The risk that remains after applying all controls.
- **Important.** It must be explicitly accepted or transferred.

### Reward hacking (specification gaming)

- **What it is.** Behavior that maximizes the reward or passes the verifier without fulfilling the task's intent: editing tests, returning the expected output without computing it, replacing the evaluator.
- **Where it shows up.** Agent evaluation (in a 2025 report, 30.4% of the runs of a research benchmark) and training with verifiable rewards.
- **Risks.** A score that does not correspond to capability; penalizing the model instead of fixing the verifier can teach subtler or obfuscated cheating. Mitigations: verifier outside the agent's context, adversarial control, trajectory inspection (Ch. 5.7).

### Reward model

- **What it is.** A model trained on comparisons to assign a scalar reward to an answer; in classic RLHF, it replaces the human annotator inside the RL loop.
- **Where it shows up.** RLHF; rejection sampling (picking the best of K answers); filtering of synthetic data.
- **Risks.** It is exploitable: policies optimized against it find high-reward, low-quality answers (reward hacking). See Ch. 5.7 and 7.8.

### RLHF / RLAIF / RLVR

- **What it is.** Families of reward-based post-training: **RLHF** uses human preferences (reward model + RL, or DPO); **RLAIF** uses preferences generated by an LLM; **RLVR** uses a programmatic verifier (tests, gold answer, constraint) in place of the reward model.
- **Where it shows up.** Public open-model recipes (SFT -> preferences -> RLVR); for teams that consume models, mostly as vocabulary and as an evaluation data format.
- **Risks.** A biased LLM judge (RLAIF); an incomplete verifier becomes a target (RLVR); RL algorithms stay out of this book's scope. See Ch. 7.8.

### Runbook

- **What it is.** An operational procedure for incidents and routines.

---

## S

### SentencePiece

- **What it is.** A language-independent subword tokenizer; the basis of BBPE in several LLMs.
- **Relationship.** An alternative/complement to BPE.
- **Reference.** Kudo & Richardson (2018).

### SHAP (SHapley Additive exPlanations)

- **What it is.** Per-feature contribution values based on game theory (approximate).
- **Limits.** An approximate explanation; computational cost in large models.

### STRIDE

- **What it is.** A threat modeling model (Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege).
- **Where it shows up.** Architecture review of AI systems (adapted in Ch. 4.2).

### Sandbox

- **What it is.** An isolated environment for executing code generated/executed by an agent.
- **Components.** Ephemeral file system, blocked network, minimal secrets, resource limits.

### SBOM (Software Bill of Materials)

- **What it is.** An inventory of a software artifact's dependencies.
- **Formats.** SPDX, CycloneDX.

### Semantic cache

- **What it is.** A cache based on semantic similarity (not on an exact hash).
- **Risk.** A stale response.

### SFT (Supervised Fine-Tuning)

- **What it is.** Supervised training that maximizes the probability of the demonstrations' target tokens (the assistant's answers and tool calls), with a mask over instructions, user turns and tool results.
- **Where it shows up.** Format, style and tool use; the first phase of post-training; distillation by SFT on a larger model's outputs.
- **Risks.** Lower loss is not a better task; wrong mask, template and truncation; a poor mechanism for inserting mutable facts. See Ch. 7.6 and 7.8.

### Shadow deploy

- **What it is.** A new version runs in parallel to the current one, without affecting users.

### SLSA

- **What it is.** Supply-chain Levels for Software Artifacts. A framework of levels (1 to 4) of build security and provenance.
- **Current version.** v1.x. Reference: <https://slsa.dev/spec/v1.2/>.

### SmoothQuant

- **What it is.** A quantization method that redistributes difficulty between weights and activations via rescaling, enabling W8A8.
- **Reference.** Xiao et al., ICML 2023 (<https://arxiv.org/abs/2211.10438>).

### Solvability

- **What it is.** The property of an evaluation task that can be solved, in the declared environment and under the declared budget, by a known reference solution.
- **Where it shows up.** A benchmark's positive control: the reference must pass 100% of the tasks before any agent is measured (Ch. 5.7).
- **Risks.** Unsolvable tasks lower every system equally and hide the real difference; intentionally impossible tasks require a verifier that rewards the correct refusal, not the empty answer.

### Speculative decoding

- **What it is.** An acceleration technique in which a small draft model proposes tokens and the large model verifies in parallel.
- **Where it shows up.** vLLM, TensorRT-LLM, Medusa, Lookahead Decoding.
- **Reference.** Leviathan et al., ICML 2023 (<https://arxiv.org/abs/2211.17192>).

### SPDX

- **What it is.** An SBOM format maintained by the Linux Foundation; ISO/IEC 5962:2021.
- **Reference.** <https://spdx.dev/>.

### Structured outputs

- **What it is.** Model output adhering to a schema (JSON, Pydantic).
- **Important.** Guarantees form, does **not** guarantee correct content.

### Supply chain risk

- **What it is.** The risk of compromise via dependencies, MCP servers, models or datasets.

---

## T

### Task family

- **What it is.** A group of tasks correlated by common origin — same repository, scenario, document or seed — whose results tend to vary together.
- **Where it shows up.** Design of evaluation sets and uncertainty computation; train/eval splits by family to avoid leakage (Ch. 1.6, 5.7).
- **Risks.** Treating each task as independent when it belongs to a family narrows the interval artificially; in published examples, clustered standard errors reached 3× the naive ones.

### Tenant isolation

- **What it is.** The guarantee that data, memory and context of one tenant do not leak to another.
- **Important.** One of the worst possible incidents in RAG is cross-tenant leakage.

### Token

- **What it is.** The basic processing unit of an LLM (subword).

### Token budget

- **What it is.** The token budget allowed per step, task or tenant.

### Tool registry

- **What it is.** A versioned catalog of tools, with schemas, owners, permissions and status.

### Tool use

- **What it is.** The agent's ability to use external systems to obtain data or execute actions.

### Tracing

- **What it is.** Structured tracking of execution, with spans and semantic attributes.

### TTFT (Time To First Token)

- **What it is.** The perceived latency until the first generated token; dominated by prefill.
- **Where it shows up.** Streaming SLA in chat and agents.

### TPOT (Time Per Output Token)

- **What it is.** The time between generated tokens; dominated by decode and by memory bandwidth.
- **Where it shows up.** SLA of long responses; the feeling of "fluidity".

---

## U

### Underfitting

- **What it is.** The model does not capture the pattern; high error in training and test.

---

## V

### Variance

- **What it is.** The model's sensitivity to small changes in the dataset.
- **Relationship.** Complementary to bias; high variance leads to overfitting.

### Vector database

- **What it is.** A database specialized in vector similarity search.
- **Limits.** Similarity ≠ relevance; bad with IDs, dates, exact numbers.

### Vector poisoning

- **What it is.** Insertion of a malicious document into the RAG index.
- **Mitigation.** Ingestion validation, provenance, isolation, reindexing.

### Verifier

- **What it is.** The component that decides, independently of the agent, whether a task was solved: tests, a target-state comparator or, where there is no verifiable state, a calibrated judge. It produces a numeric result.
- **Where it shows up.** Agent benchmarks, release gates, reward in training with verifiable RL (Ch. 5.4, 5.7).
- **Risks.** A verifier that accepts the initial state or an empty answer, that is readable or editable by the agent, or that covers only part of the requirement produces inflated scores. It must be tested with positive, no-op, shortcut and adversarial controls.

### vLLM

- **What it is.** An open-source LLM serving engine. It popularized PagedAttention and continuous batching.
- **Where it shows up.** Enterprise self-hosting and serious prototyping.
- **Reference.** <https://docs.vllm.ai/en/latest/>.

---

## W

### Workflow-first agent

- **What it is.** A pattern in which a deterministic workflow controls the process and the LLM steps in at specific points.
- **Important.** It tends to be more defensible in corporate production than free autonomous agents.

---

## Z

### ZeRO (Zero Redundancy Optimizer)

- **What it is.** A family of techniques (DeepSpeed) that partitions optimizer states, gradients and parameters across GPUs.
- **Where it shows up.** Training/fine-tuning of large models.
- **Relationship.** Conceptually equivalent to FSDP (stage 3).

### Zero trust (applied to AI)

- **What it is.** A stance of not trusting any component by default — inputs, retrieved documents, tool outputs and memory are treated as potentially hostile.

---

> 🧾 **Suggestions for new entries?** Open an issue with the title `glossary: add term X` and follow the format of this file.
