---
title: "References"
lang: en
order: 99
status: stable
tags: [referencia]
---

# 📚 References

Bibliography organized by theme. Each entry includes, when applicable:

- **Title**.
- **Author / Organization**.
- **Type** — paper, spec, docs, official technical blog, framework, benchmark, book.
- **Why it is relevant** — in one line.
- **Book section** — where the reference is used.

> **Editorial principle.** Vendor documentation is included only when it is the best available technical source. Purely promotional material does not appear as a primary reference; when useful, it is placed in clearly identified "Further reading". Emerging topics have their maturity level declared explicitly, and the book does not claim consensus where there is none yet.

---

## 📊 1. Traditional ML, MLOps and statistics

### 📑 Papers and books

- **Mitchell et al. — *Model Cards for Model Reporting* (FAT* 2019).** Original paper — <https://arxiv.org/abs/1810.03993>. Basis for Model Cards. Used in Ch. 1.7 and 1.11.
- **Gebru et al. — *Datasheets for Datasets* (CACM 2021).** Paper — <https://arxiv.org/abs/1803.09010>. Basis for Dataset Cards. Ch. 1.2, 1.7, 7.8.
- **Hardt, Price & Srebro — *Equality of Opportunity in Supervised Learning* (NIPS 2016).** Paper — <https://arxiv.org/abs/1610.02413>. Basis for equalized odds and equality of opportunity. Ch. 1.11.
- **Guo et al. — *On Calibration of Modern Neural Networks* (ICML 2017).** Paper — <https://arxiv.org/abs/1706.04599>. Calibration and ECE. Ch. 1.3.
- **Ribeiro, Singh & Guestrin — *"Why Should I Trust You?" Explaining the Predictions of Any Classifier* (KDD 2016).** Paper — <https://arxiv.org/abs/1602.04938>. LIME. Ch. 1.11.
- **Friedman — *Greedy Function Approximation: A Gradient Boosting Machine* (Annals of Statistics 2001).** Paper — <https://projecteuclid.org/journals/annals-of-statistics/volume-29/issue-5/Greedy-function-approximation-A-gradient-boosting-machine/10.1214/aos/1013203451.full>. Origin of the Partial Dependence Plot. Ch. 1.11.
- **Barocas, Hardt & Narayanan — *Fairness and Machine Learning: Limitations and Opportunities* (open book).** <https://fairmlbook.org/>. Ch. 1.11.
- **Chip Huyen — *Designing Machine Learning Systems* (O'Reilly).** Book. Covers pipelines, monitoring and deployment. Ch. 1.1-1.10.
- **Lakshmanan, Robinson & Munn — *Machine Learning Design Patterns* (O'Reilly).** Book. Reusable patterns. Ch. 1.5-1.10.

### 📘 Official documentation

- **scikit-learn — <https://scikit-learn.org/stable/>.** Docs (framework).
- **PyTorch — <https://pytorch.org/docs/stable/index.html>.** Docs (framework).
- **JAX — <https://docs.jax.dev/>.** Docs (framework).
- **MLflow — <https://mlflow.org/docs/latest/index.html>.** Docs (experiment tracking + registry). Ch. 1.7.
- **Kubeflow — <https://www.kubeflow.org/docs/>.** Docs (orchestration).
- **Feast — <https://docs.feast.dev/>.** Docs (feature store).
- **Feast — Point-in-time joins — <https://docs.feast.dev/getting-started/concepts/point-in-time-joins>.** Ch. 1.5.
- **Tecton — <https://docs.tecton.ai/>.** Docs (commercial feature store).
- **Evidently AI — <https://docs.evidentlyai.com/>.** Docs (drift, monitoring). Ch. 1.2, 1.9.
- **Great Expectations — <https://docs.greatexpectations.io/>.** Docs (data quality). Ch. 1.2.
- **Pandera — <https://pandera.readthedocs.io/>.** Docs (validation). Ch. 1.2.
- **Dagster — <https://docs.dagster.io/>.** Docs (orchestration).
- **Apache Airflow — <https://airflow.apache.org/docs/apache-airflow/stable/>.** Docs (orchestration).
- **SHAP — <https://shap.readthedocs.io/>.** Docs (interpretability). Ch. 1.11.

### 📜 Technical blogs

- **Evidently AI — *What is concept drift in ML* — <https://www.evidentlyai.com/ml-in-production/concept-drift>.** Ch. 1.9.
- **Google Developers — *Classification: accuracy, precision, recall* — <https://developers.google.com/machine-learning/crash-course/classification/accuracy-precision-recall>.** Ch. 1.3.
- **ICLR Blog 2025 — *Understanding model calibration (ECE)* — <https://iclr-blogposts.github.io/2025/blog/calibration/>.** Ch. 1.3.
- **Sebastian Raschka — *LoRA vs full fine-tuning* — <https://sebastianraschka.com/faq/docs/lora-vs-full-finetuning.html>.** Ch. 2.2.
- **Hugging Face — *Tokenizers* — <https://huggingface.co/docs/tokenizers/en/index>.** Ch. 2.1.

---

## 🤖 2. LLM fundamentals, tokenization and fine-tuning

### 📑 Papers

- **Vaswani et al. — *Attention Is All You Need* (NeurIPS 2017).** Paper — <https://arxiv.org/abs/1706.03762>. The foundational Transformer. Ch. 2.1.
- **Sennrich, Haddow & Birch — *Neural Machine Translation of Rare Words with Subword Units* (ACL 2016).** Paper — <https://aclanthology.org/P16-1162/>. Origin of BPE. Ch. 2.1.
- **Kudo & Richardson — *SentencePiece: A simple and language independent subword tokenizer* (EMNLP 2018 demo).** Paper — <https://arxiv.org/abs/1808.06226>. Ch. 2.1.
- **Hu et al. — *LoRA: Low-Rank Adaptation of Large Language Models* (ICLR 2022).** Paper — <https://arxiv.org/abs/2106.09685>. Ch. 2.2.
- **Dettmers et al. — *QLoRA: Efficient Finetuning of Quantized LLMs* (NeurIPS 2023).** Paper — <https://arxiv.org/abs/2305.14314>. NF4, double quantization, paged optimizers. Ch. 2.2.
- **Frantar et al. — *GPTQ: Accurate Post-Training Quantization for Generative Pre-trained Transformers* (ICLR 2023).** Paper — <https://arxiv.org/abs/2210.17323>. Ch. 2.2.
- **Lin et al. — *AWQ: Activation-aware Weight Quantization for LLM Compression and Acceleration* (MLSys 2024).** Paper — <https://arxiv.org/abs/2306.00978>. Ch. 2.2.
- **Xiao et al. — *SmoothQuant* (ICML 2023).** Paper — <https://arxiv.org/abs/2211.10438>. Ch. 2.2.
- **OpenAI — *gpt-oss-120b & gpt-oss-20b Model Card* (2025).** Paper — <https://arxiv.org/abs/2508.10925>. MoE weights post-trained in MXFP4. Ch. 2.2.
- **Biderman et al. — *LoRA Learns Less and Forgets Less* (TMLR 2024).** Paper — <https://arxiv.org/abs/2405.09673>. Limits of LoRA in continued pretraining and instruction tuning; forgets less. Ch. 7.6, 7.8.
- **Gekhman et al. — *Does Fine-Tuning LLMs on New Knowledge Encourage Hallucinations?* (EMNLP 2024).** Paper — <https://arxiv.org/abs/2405.05904>. New facts learned slowly; hallucination grows. Ch. 7.6, 7.8.
- **Ovadia et al. — *Fine-Tuning or Retrieval? Comparing Knowledge Injection in LLMs* (2024).** Paper — <https://arxiv.org/abs/2312.05934>. RAG beats unsupervised fine-tuning for knowledge. Ch. 2.10, 7.6.
- **Chen et al. — *MEDITRON-70B: Scaling Medical Pretraining for Large Language Models* (2023).** Paper — <https://arxiv.org/abs/2311.16079>. Domain continued pretraining. Ch. 7.6.
- **Colombo et al. — *SaulLM-7B: A pioneering Large Language Model for Law* (2024).** Paper — <https://arxiv.org/abs/2403.03883>. Domain continued pretraining. Ch. 7.6.

### 📘 Official documentation and frameworks

- **OpenAI API — <https://developers.openai.com/api/docs>.** Docs.
- **OpenAI — *Function calling* — <https://developers.openai.com/api/docs/guides/function-calling>.** Ch. 2.4, 3.5.
- **OpenAI — *Structured outputs* — <https://developers.openai.com/api/docs/guides/structured-outputs>.** Ch. 0.2, 2.4.
- **OpenAI — *Prompt caching* — <https://developers.openai.com/api/docs/guides/prompt-caching>.** Ch. 2.3, 6.4.
- **OpenAI — *Latency optimization* — <https://developers.openai.com/api/docs/guides/latency-optimization>.** Ch. 6.3, 6.4.
- **OpenAI — *Supervised fine-tuning* — <https://developers.openai.com/api/docs/guides/supervised-fine-tuning>.** Ch. 2.2.
- **OpenAI — *Working with evals* — <https://developers.openai.com/api/docs/guides/evals>.** Ch. 2.11, 5.4.
- **OpenAI — *Evaluation best practices* — <https://developers.openai.com/api/docs/guides/evaluation-best-practices>.** Ch. 5.4.
- **OpenAI — *Evaluate agent workflows* — <https://developers.openai.com/api/docs/guides/agent-evals>.** Ch. 5.4.
- **OpenAI — *Graders* — <https://developers.openai.com/api/docs/guides/graders>.** Ch. 5.4.
- **Anthropic Claude docs — <https://docs.anthropic.com/>.** Docs.
- **Anthropic — *Tool use* — <https://docs.anthropic.com/en/docs/build-with-claude/tool-use>.** Ch. 2.4, 3.5.
- **Anthropic — *Prompt caching* — <https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching>.** Ch. 6.4.
- **Google ADK — <https://adk.dev/>.** Docs.
- **Google Vertex AI — <https://docs.cloud.google.com/vertex-ai/docs>.** Docs.
- **Microsoft Foundry Agent Service — <https://learn.microsoft.com/en-us/azure/foundry/agents/overview>.** Docs.
- **Microsoft Agent Framework — <https://learn.microsoft.com/en-us/agent-framework/overview/>.** Docs.
- **Semantic Kernel — <https://learn.microsoft.com/en-us/semantic-kernel/>.** Docs.
- **Amazon Bedrock — <https://docs.aws.amazon.com/bedrock/latest/userguide/>.** Docs.
- **bitsandbytes — <https://huggingface.co/docs/bitsandbytes/main/en/index>.** Docs (8-bit/4-bit in Hugging Face). Ch. 2.2.
- **llama.cpp and GGUF — <https://github.com/ggml-org/llama.cpp>.** Project (local inference + quantization format). Ch. 2.2.
- **MLC LLM — <https://llm.mlc.ai/>.** Docs (cross-hardware inference).
- **Hugging Face — *Transformers: Quantization overview* — <https://huggingface.co/docs/transformers/quantization/overview>.** Current backends (GPT-QModel, AutoAWQ, NVFP4). Ch. 2.2.
- **Hugging Face — *TRL: PEFT integration* — <https://huggingface.co/docs/trl/peft_integration>.** LoRA adapters in SFT, DPO and GRPO; DPO reference without a second model. Ch. 7.6, 7.8.

### 📜 Official technical blogs

- **Anthropic — *Effective context engineering for AI agents* — <https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents>.** Ch. 2.3, 3.3.
- **Anthropic — *Demystifying evals for AI agents* — <https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents>.** Ch. 5.4.
- **Anthropic — *Effective harnesses for long-running agents* — <https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents>.** Ch. 3.3.
- **Anthropic — *Writing effective tools for agents* — <https://www.anthropic.com/engineering/writing-tools-for-agents>.** Ch. 3.5.
- **Anthropic — *Code execution with MCP* — <https://www.anthropic.com/engineering/code-execution-with-mcp>.** Ch. 4.10.
- **Anthropic — *Measuring AI agent autonomy in practice* — <https://www.anthropic.com/news/measuring-agent-autonomy>.** Ch. 3.2.
- **OpenAI Cookbook — *Prompt Caching 201* — <https://developers.openai.com/cookbook/examples/prompt_caching_201>.** Ch. 2.3.
- **Thinking Machines — *LoRA Without Regret* — <https://thinkingmachines.ai/blog/lora/>.** LoRA matches full FT on small/medium datasets and in RL; all layers; 10× LR. Ch. 7.6, 7.8.
- **Thinking Machines — *On-Policy Distillation* — <https://thinkingmachines.ai/blog/on-policy-distillation/>.** Mid-training on internal documents and behavior restoration. Ch. 7.6, 7.8.
- **Modular (LLM Inference Handbook, formerly BentoML) — *Prefill–decode disaggregation* — <https://handbook.modular.com/inference-optimization/prefill-decode-disaggregation/>.** Ch. 2.1, 6.3.

---

## 🧬 3. Embeddings, Matryoshka and retrieval

### 📑 Papers

- **Kusupati et al. — *Matryoshka Representation Learning* (NeurIPS 2022).** Paper — <https://arxiv.org/abs/2205.13147>. Theoretical basis of Matryoshka. Ch. 2.8.
- **Malkov & Yashunin — *Efficient and robust approximate nearest neighbor search using HNSW* (TPAMI 2018).** Paper — <https://arxiv.org/abs/1603.09320>. Ch. 2.7, 2.8.
- **Lewis et al. — *Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks* (NeurIPS 2020).** Paper — <https://arxiv.org/abs/2005.11401>. Ch. 2.6.
- **Edge et al. (Microsoft Research) — *From Local to Global: A Graph RAG Approach to Query-Focused Summarization*.** Paper — <https://arxiv.org/abs/2404.16130>. Ch. 2.9.
- **Gao, Ma, Lin & Callan — *Precise Zero-Shot Dense Retrieval without Relevance Labels* (HyDE; ACL 2023).** Paper — <https://arxiv.org/abs/2212.10496>. Ch. 2.7.
- **Wang, Yang & Wei — *Query2doc: Query Expansion with Large Language Models* (EMNLP 2023).** Paper — <https://arxiv.org/abs/2303.07678>. Ch. 2.7.
- **Ma et al. — *Query Rewriting for Retrieval-Augmented Large Language Models* (EMNLP 2023).** Paper — <https://arxiv.org/abs/2305.14283>. Ch. 2.7.
- **Wang et al. — *Searching for Best Practices in Retrieval-Augmented Generation* (2024).** Paper — <https://arxiv.org/abs/2407.01219>. Comparison of HyDE, hybrid and rewriting with a strong embedder. Ch. 2.7.
- **Yang et al. — *The Geometry of Queries: Query-Based Innovations in Retrieval-Augmented Generation* (2024–2025).** Paper — <https://arxiv.org/abs/2407.18044>. HyDE in clinical QA without significant gain. Ch. 2.7.
- **Santhanam et al. — *ColBERTv2: Effective and Efficient Retrieval via Lightweight Late Interaction* (NAACL 2022).** Paper — <https://arxiv.org/abs/2112.01488>. Ch. 2.7.
- **Faysse et al. — *ColPali: Efficient Document Retrieval with Vision Language Models* (ICLR 2025).** Paper — <https://arxiv.org/abs/2407.01449>. Ch. 2.7.
- **Formal et al. — *SPLADE v2: Sparse Lexical and Expansion Model for Information Retrieval* (2021).** Paper — <https://arxiv.org/abs/2109.10086>. Ch. 2.7.
- **Günther et al. — *Late Chunking: Contextual Chunk Embeddings Using Long-Context Embedding Models* (2024–2025).** Paper — <https://arxiv.org/abs/2409.04701>. Ch. 2.7.
- **Qu, Tu & Bao — *Is Semantic Chunking Worth the Computational Cost?* (2024).** Paper — <https://arxiv.org/abs/2410.13070>. Ch. 2.7.
- **Enevoldsen et al. — *MMTEB: Massive Multilingual Text Embedding Benchmark* (2025).** Paper — <https://arxiv.org/abs/2502.13595>. Ch. 2.7.
- **Li et al. — *Retrieval Augmented Generation or Long-Context LLMs? A Comprehensive Study and Hybrid Approach* (Self-Route; EMNLP 2024 Industry).** Paper — <https://arxiv.org/abs/2407.16833>. Ch. 2.10.
- **Li et al. — *LaRA: Benchmarking Retrieval-Augmented Generation and Long-Context LLMs* (ICML 2025).** Paper — <https://arxiv.org/abs/2502.09977>. Ch. 2.10.
- **Li, Cao, Ma & Sun — *Long Context vs. RAG for LLMs: An Evaluation and Revisits* (2024).** Paper — <https://arxiv.org/abs/2501.01880>. Ch. 2.10.
- **Liu et al. — *Lost in the Middle: How Language Models Use Long Contexts* (TACL 2023).** Paper — <https://arxiv.org/abs/2307.03172>. Ch. 2.10.

### 📘 Official documentation

- **OpenAI — *Embeddings* (includes the `dimensions` parameter) — <https://platform.openai.com/docs/guides/embeddings>.** Ch. 2.8.
- **Cohere — *Embed v3* — <https://docs.cohere.com/docs/cohere-embed>.** Matryoshka support. Ch. 2.8.
- **Nomic — *Nomic Embed Text* — <https://docs.nomic.ai/atlas/embeddings-and-retrieval/text-embedding>.** Open-weight Matryoshka model. Ch. 2.8.
- **Sentence Transformers — *Matryoshka embeddings* — <https://www.sbert.net/examples/training/matryoshka/README.html>.** Ch. 2.8.
- **Faiss — <https://faiss.ai/>.** ANN library. Ch. 2.7, 2.8.
- **Cormack, Clarke & Buettcher — *Reciprocal Rank Fusion outperforms Condorcet and individual Rank Learning Methods* (SIGIR 2009).** Paper — <https://plg.uwaterloo.ca/~gvcormac/cormacksigir09-rrf.pdf>. RRF in hybrid search. Ch. 2.7.
- **Robertson & Zaragoza — BM25 review (classic reference cited in the book).** Ch. 2.7.
- **Pinecone — *Hybrid search* — <https://docs.pinecone.io/guides/search/hybrid-search>.** Ch. 2.7.
- **Weaviate — *Hybrid search* — <https://docs.weaviate.io/weaviate/search/hybrid>.** Ch. 2.7.
- **Qdrant — *Hybrid queries* — <https://qdrant.tech/documentation/search/hybrid-queries/>.** Ch. 2.7.
- **OpenSearch — *Hybrid search* — <https://docs.opensearch.org/latest/vector-search/ai-search/hybrid-search/index/>.** Ch. 2.7.
- **Elasticsearch — *RAG* — <https://www.elastic.co/docs/solutions/search/rag>.**
- **Milvus — <https://milvus.io/docs>.**
- **pgvector — <https://github.com/pgvector/pgvector>.**
- **Amazon Bedrock — *Reranking* — <https://docs.aws.amazon.com/bedrock/latest/userguide/rerank.html>.** Ch. 2.7.
- **Cohere — *Rerank* — <https://docs.cohere.com/docs/rerank-overview>.** Ch. 2.7.

### 📜 Blogs / GraphRAG

- **Microsoft GraphRAG — <https://microsoft.github.io/graphrag/>.** Ch. 2.9.
- **Microsoft Research — *LazyGraphRAG: Setting a new standard for quality and cost* — <https://www.microsoft.com/en-us/research/blog/lazygraphrag-setting-a-new-standard-for-quality-and-cost/>.** Indexing at 0.1% of the cost; research proposal. Ch. 2.9.
- **Anthropic — *Introducing Contextual Retrieval* — <https://www.anthropic.com/news/contextual-retrieval>.** Per-chunk context at indexing time; ~200k-token rule of thumb. Ch. 2.7, 2.10.
- **Neo4j GraphRAG (Python) — <https://neo4j.com/docs/neo4j-graphrag-python/current/>.** Ch. 2.9.
- **Google Cloud — *GraphRAG with Spanner Graph* — <https://docs.cloud.google.com/architecture/gen-ai-graphrag-spanner>.** Ch. 2.9.
- **Toloka — *RAG evaluation* — <https://toloka.ai/blog/rag-evaluation-a-technical-guide-to-measuring-retrieval-augmented-generation/>.** Ch. 2.6.
- **Google Cloud — *Retrieval-Augmented Generation* — <https://cloud.google.com/use-cases/retrieval-augmented-generation>.** Ch. 2.6.
- **Ragas — *Metrics* — <https://docs.ragas.io/en/stable/concepts/metrics/available_metrics/>.** Ch. 2.11, 5.4.
- **TruLens — *RAG triad of metrics* — <https://www.trulens.org/getting_started/core_concepts/rag_triad/>.** Ch. 2.6, 2.11 (further reading).

---

## 🚀 4. Serving, throughput and inference optimization

### 📑 Papers

- **Kwon et al. — *Efficient Memory Management for Large Language Model Serving with PagedAttention* (SOSP 2023).** Paper — <https://arxiv.org/abs/2309.06180>. Basis of vLLM. Ch. 6.3.
- **Leviathan, Kalman & Matias — *Fast Inference from Transformers via Speculative Decoding* (ICML 2023).** Paper — <https://arxiv.org/abs/2211.17192>. Ch. 6.3.
- **Pope et al. — *Efficiently Scaling Transformer Inference* (MLSys 2023).** Paper — <https://arxiv.org/abs/2211.05102>. Ch. 6.3.

### 📘 Official documentation

- **vLLM — <https://docs.vllm.ai/en/latest/>.** Docs (PagedAttention, continuous batching, prefix caching). Ch. 6.3.
- **vLLM — *Architecture overview* — <https://docs.vllm.ai/en/latest/design/arch_overview.html>.** Ch. 6.3.
- **NVIDIA — *Introducing NVFP4 for Efficient and Accurate Low-Precision Inference* — <https://developer.nvidia.com/blog/introducing-nvfp4-for-efficient-and-accurate-low-precision-inference/>.** Block-scaled FP4 format (Blackwell). Ch. 2.2.
- **NVIDIA TensorRT-LLM — <https://nvidia.github.io/TensorRT-LLM/>.** Docs (in-flight batching, paged KV cache). Ch. 6.3.
- **NVIDIA Triton Inference Server — <https://docs.nvidia.com/deeplearning/triton-inference-server/user-guide/docs/>.** Docs. Ch. 1.8.
- **Hugging Face TGI — <https://huggingface.co/docs/text-generation-inference>.** Docs. Ch. 6.3.
- **Ray Serve — <https://docs.ray.io/en/latest/serve/index.html>.** Docs. Ch. 1.8.
- **TensorFlow Serving — <https://github.com/tensorflow/serving>.** Official repository. Ch. 1.8.
- **TorchServe — <https://pytorch.org/serve/>.** Docs. Ch. 1.8.

---

## 🧩 5. Agentic AI, MCP and A2A

### 📘 MCP - Model Context Protocol

- **MCP — Architecture overview — <https://modelcontextprotocol.io/docs/learn/architecture>.** Spec. Ch. 3.5.
- **MCP — Authorization (2026-07-28 revision) — <https://modelcontextprotocol.io/specification/2026-07-28/basic/authorization>.** Spec. Ch. 4.8.
- **MCP — Tools spec (2026-07-28) — <https://modelcontextprotocol.io/specification/2026-07-28/server/tools>.** Spec. Ch. 3.5.
- **MCP — Security best practices — <https://modelcontextprotocol.io/docs/tutorials/security/security_best_practices>.** Ch. 3.5, 4.
- **MCP — *Specification* (current revision 2026-07-28; checked on 2026-10-25) — <https://modelcontextprotocol.io/specification/latest>.** Spec. Ch. 3.5.
- **MCP — *Key Changes — 2026-07-28* — <https://modelcontextprotocol.io/specification/2026-07-28/changelog>.** Stateless protocol; Roots, Sampling and Logging deprecated; Tasks as an extension. Ch. 3.5.
- **MCP — *The 2026-07-28 Specification* (release blog) — <https://blog.modelcontextprotocol.io/posts/2026-07-28/>.** Ch. 3.5.
- **MCP — *Registry* (preview) — <https://github.com/modelcontextprotocol/registry>.** API v0.1 frozen in Oct/2025; no GA as of the check. Ch. 3.5.
- **Anthropic — *Donating the Model Context Protocol and establishing the Agentic AI Foundation* — <https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation>.** Governance (AAIF/Linux Foundation, 2025-12-09). Ch. 3.5.
- **AGENTS.md — <https://agents.md/>.** File convention for coding agents, governed by the AAIF. Ch. 3.5.
- **Agent Skills — *Specification* — <https://agentskills.io/specification>.** Open `SKILL.md` format. Ch. 3.5.
- **MCP — Security Best Practices (2026-07-28) — <https://modelcontextprotocol.io/specification/2026-07-28/basic/security_best_practices>.** Ch. 3.5, 4.8.

### 🤝 A2A - Agent2Agent

- **A2A Protocol — official site — <https://a2a-protocol.org/latest/>.** Spec 1.0 (2026). Ch. 3.5.
- **A2A Protocol — Specification (v1.0) — <https://a2a-protocol.org/latest/specification/>.** Spec. Ch. 3.5.
- **A2A Protocol — Releases (v1.0.0, 2026-03-12) — <https://github.com/a2aproject/A2A/releases>.** Ch. 3.5.
- **A2A Protocol — Google announcement (historical context) — <https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/>.** Context. Ch. 3.5.
- **Agentic AI Foundation — A2A joining the AAIF (Aug 2026) — <https://aaif.io/blog/a2a-joins-aaif>.** Context (governance). Ch. 3.5.
- **A2A — Agent Card schema (in the spec above).** Ch. 3.5.

Maturity: 1.0 spec published in March 2026 (v1.0.0, 2026-03-12) and project transferred to the Agentic AI Foundation in August 2026; publicly named adoption is still scarce. Treat it as a consolidating technology; no closed consensus.

### 📘 Frameworks and SDKs

- **LangGraph — <https://docs.langchain.com/oss/python/langgraph/overview>.**
- **LangGraph — Persistence — <https://docs.langchain.com/oss/python/langgraph/persistence>.** Ch. 3.6.
- **LangChain — Context engineering — <https://docs.langchain.com/oss/python/langchain/context-engineering>.**
- **LangChain — Human-in-the-loop — <https://docs.langchain.com/oss/python/langchain/human-in-the-loop>.**
- **LangSmith — Observability — <https://www.langchain.com/langsmith/observability>.**
- **LlamaIndex — <https://developers.llamaindex.ai/python/framework/>.**
- **AutoGen — <https://microsoft.github.io/autogen/dev/>.**
- **OpenAI Agents SDK — Tracing — <https://openai.github.io/openai-agents-python/tracing/>.**
- **OpenAI Agents SDK — Guardrails — <https://openai.github.io/openai-agents-python/guardrails/>.**
- **OpenAI Agents SDK — Human-in-the-loop — <https://openai.github.io/openai-agents-python/human_in_the_loop/>.**
- **Google Cloud — *Agent Platform Memory Bank* (Gemini Enterprise Agent Platform; previously documented under Vertex AI Agent Engine) — <https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale/memory-bank>.** Ch. 3.6.
- **Amazon Bedrock Agents — <https://docs.aws.amazon.com/bedrock/latest/userguide/agents.html>.**
- **Amazon Bedrock Knowledge Bases — <https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html>.**

### 📑 Memory in agents

- **Packer et al. — *MemGPT: Towards LLMs as Operating Systems*.** Paper — <https://arxiv.org/abs/2310.08560>. Ch. 3.6.
- **Yao et al. — *ReAct: Synergizing Reasoning and Acting in Language Models*.** Paper — <https://arxiv.org/abs/2210.03629>.
- **Schick et al. — *Toolformer: Language Models Can Teach Themselves to Use Tools*.** Paper — <https://arxiv.org/abs/2302.04761>.

### 🏗️ Architectural patterns

- **Google Cloud — *Choose a design pattern for your agentic AI system* — <https://docs.cloud.google.com/architecture/choose-design-pattern-agentic-ai-system>.** Ch. 3.4.

---

## 🛡️ 6. Security, identity and governance

### 📘 Risk frameworks

- **OWASP — *Top 10 for LLM Applications* — <https://owasp.org/www-project-top-10-for-large-language-model-applications/>.** Framework (project page). Ch. 4.
- **OWASP GenAI Security Project — *OWASP Top 10 for LLM Applications 2026* — <https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/>.** Edition used for the mapping in Ch. 4.2 (accessed 2026-10-25).
- **OWASP — *Top 10 for LLM Applications 2025 PDF* (previous edition) — <https://owasp.org/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-v2025.pdf>.**
- **NIST — *AI Risk Management Framework 1.0* — <https://nvlpubs.nist.gov/nistpubs/ai/nist.ai.100-1.pdf>.** Ch. 0.3, 4.
- **NIST — *Generative AI Profile* (AI RMF) — <https://www.nist.gov/itl/ai-risk-management-framework>.** Ch. 4.2.
- **NIST — alternative publication of the GenAI Profile — <https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-generative-artificial-intelligence>.**
- **MITRE ATLAS — <https://atlas.mitre.org/>.** Threat catalog. Ch. 4.2.
- **Microsoft — *STRIDE Threat Model* (tool and vocabulary) — <https://learn.microsoft.com/en-us/azure/security/develop/threat-modeling-tool-threats>.** Ch. 4.2.
- **OWASP GenAI Security Project — *OWASP Top 10 for Agentic Applications 2026* — <https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/>.** Published 2025-12-09. Ch. 4.2, 4.3.

### 🧰 Policy engines (policy-as-code)

- **Open Policy Agent — *Policy Language (Rego)* — <https://www.openpolicyagent.org/docs/policy-language>.** Ch. 4.7.
- **Open Policy Agent — *Policy Testing* — <https://www.openpolicyagent.org/docs/policy-testing>.** Ch. 4.7.
- **AWS Cedar — *Policy Language Reference* — <https://docs.cedarpolicy.com/policies/syntax-policy.html>.** Ch. 4.7.
- **AuthZed SpiceDB — Consistency and ZedTokens — <https://authzed.com/docs/spicedb/concepts/consistency>.** Ch. 4.7.
- **Google Zanzibar (paper) — <https://research.google/pubs/pub48190/>.** Theoretical basis of SpiceDB.

### 🔐 Identity and authorization (OAuth/OIDC)

- **IETF RFC 6749 — *OAuth 2.0 Authorization Framework* — <https://datatracker.ietf.org/doc/html/rfc6749>.** Ch. 4.8.
- **IETF RFC 8693 — *OAuth 2.0 Token Exchange* — <https://datatracker.ietf.org/doc/html/rfc8693>.** Ch. 4.8.
- **IETF RFC 8628 — *OAuth 2.0 Device Authorization Grant* — <https://datatracker.ietf.org/doc/html/rfc8628>.** Ch. 4.8.
- **IETF RFC 7636 — *PKCE* — <https://datatracker.ietf.org/doc/html/rfc7636>.** Ch. 4.8.
- **IETF RFC 9700 — *OAuth 2.0 Security Best Current Practice* — <https://datatracker.ietf.org/doc/html/rfc9700>.** Ch. 4.8.
- **IETF RFC 9728 — *OAuth 2.0 Protected Resource Metadata* — <https://datatracker.ietf.org/doc/html/rfc9728>.** Ch. 4.8.
- **IETF RFC 8707 — *Resource Indicators for OAuth 2.0* — <https://datatracker.ietf.org/doc/html/rfc8707>.** Ch. 4.8.
- **IETF RFC 9207 — *OAuth 2.0 Authorization Server Issuer Identification* — <https://datatracker.ietf.org/doc/html/rfc9207>.** Ch. 4.8.
- **OpenID Connect Core 1.0 — <https://openid.net/specs/openid-connect-core-1_0.html>.** Ch. 4.8.
- **Kubernetes — *ServiceAccount Tokens* — <https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/>.**
- **AWS — *IAM Roles for Service Accounts* — <https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html>.**
- **GCP — *Workload Identity Federation* — <https://cloud.google.com/iam/docs/workload-identity-federation>.**
- **Azure — *Managed Identities* — <https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview>.**

### 🔓 Prompt injection and guardrails (research and practice)

- **Greshake et al. — *Not what you've signed up for: Compromising Real-World LLM-Integrated Applications with Indirect Prompt Injection* (2023).** Paper — <https://arxiv.org/abs/2302.12173>. Ch. 4.3.
- **Anthropic — *Reduce prompt injection* — <https://docs.anthropic.com/en/docs/test-and-evaluate/strengthen-guardrails/reduce-prompt-injection>.** Ch. 4.3.
- **Simon Willison — *Prompt injection* series — <https://simonwillison.net/series/prompt-injection/>.** Ch. 4.3 (vocabulary and cases).
- **Debenedetti et al. — *Defeating Prompt Injections by Design* (CaMeL; 2025).** Paper — <https://arxiv.org/abs/2503.18813>. Provable security on 77% of AgentDojo tasks vs. 84% without defense; ~2.8× tokens. Ch. 4.3.
- **Beurer-Kellner et al. — *Design Patterns for Securing LLM Agents against Prompt Injections* (2025).** Paper — <https://arxiv.org/abs/2506.08837>. Six architectural patterns. Ch. 4.3.
- **Meta AI — *Agents Rule of Two: A Practical Approach to AI Agent Security* — <https://ai.meta.com/blog/practical-ai-agent-security/>.** Ch. 4.3.

---

## 🏗️ 7. AI supply chain

- **SLSA — *Supply-chain Levels for Software Artifacts*, spec v1.2 — <https://slsa.dev/spec/v1.2/>.** Ch. 4.9.
- **SLSA — overview — <https://slsa.dev/>.**
- **SPDX (Linux Foundation) — <https://spdx.dev/>.** Ch. 4.9.
- **SPDX — Specification — <https://spdx.github.io/spdx-spec/>.**
- **CycloneDX (OWASP) — <https://cyclonedx.org/>.** Ch. 4.9.
- **CycloneDX — *ML-BOM* — <https://cyclonedx.org/capabilities/mlbom/>.** Models, datasets and hyperparameters. Ch. 4.9.
- **OpenSSF — <https://openssf.org/>.** Ch. 4.9.
- **OpenSSF Scorecard — <https://github.com/ossf/scorecard>.** Ch. 4.9.
- **Sigstore — *cosign* — <https://docs.sigstore.dev/cosign/signing/overview/>.**
- **in-toto — <https://in-toto.io/>.**
- **NTIA — *SBOM minimum elements* — <https://www.ntia.gov/SBOM>.**
- **CISA — *SBOM resources* — <https://www.cisa.gov/sbom>.**
- **Hugging Face — *Model Cards* — <https://huggingface.co/docs/hub/model-cards>.** Ch. 4.9, 1.7.

---

## 🌐 8. AI gateways

- **LiteLLM — *LiteLLM AI Gateway (LLM Proxy)* — <https://docs.litellm.ai/docs/simple_proxy>.** Open-source. Ch. 2.5.
- **Kong — *AI Gateway / AI Proxy plugin* — <https://docs.konghq.com/hub/kong-inc/ai-proxy/>.** Plugins over Kong. Ch. 2.5.
- **Portkey — *AI Gateway* — <https://portkey.ai/docs/product/ai-gateway>.** SaaS + self-hosted option. Ch. 2.5.
- **Cloudflare — *AI Gateway* — <https://developers.cloudflare.com/ai-gateway/>.** Ch. 2.5.

Editorial stance: neutral comparison. Evaluate the license, supported providers, deployment model and fit with your stack before adopting.

---

## 🔭 9. Observability

- **OpenTelemetry — *GenAI semantic conventions* — <https://opentelemetry.io/docs/specs/semconv/gen-ai/>.** Ch. 2.12, 5.2, 5.3.
- **OpenTelemetry — *GenAI spans* — <https://opentelemetry.io/docs/specs/semconv/gen-ai/gen-ai-spans/>.**
- **OpenTelemetry — *GenAI agent spans* — <https://opentelemetry.io/docs/specs/semconv/gen-ai/gen-ai-agent-spans/>.**
- **OpenTelemetry — *Semantic Conventions for Generative AI* (`semantic-conventions-genai` repository) — <https://github.com/open-telemetry/semantic-conventions-genai>.** Development status; own repository since Jun/2026. Ch. 2.12, 5.2, 5.3.
- **OpenTelemetry — *GenAI client inference span* — <https://github.com/open-telemetry/semantic-conventions-genai/blob/main/docs/gen-ai/client-inference.md>.** `gen_ai.*`; message content opt-in. Ch. 5.3.
- **OpenTelemetry — *GenAI agent spans* (current repository) — <https://github.com/open-telemetry/semantic-conventions-genai/blob/main/docs/gen-ai/gen-ai-agent-spans.md>.** `invoke_agent`, `execute_tool`. Ch. 5.3.
- **OpenTelemetry — *Semantic conventions for MCP* — <https://github.com/open-telemetry/semantic-conventions-genai/blob/main/docs/gen-ai/mcp.md>.** `mcp.*`; trace context in `_meta`. Ch. 5.3.
- **OpenTelemetry — *semantic-conventions v1.37.0* — <https://github.com/open-telemetry/semantic-conventions/releases/tag/v1.37.0>.** `gen_ai.system` → `gen_ai.provider.name`; per-message events deprecated (Aug/2025). Ch. 5.3.
- **OpenTelemetry — *semantic-conventions v1.42.0* — <https://github.com/open-telemetry/semantic-conventions/releases/tag/v1.42.0>.** Migration of the GenAI conventions to their own repository (Jun/2026). Ch. 5.3.
- **Langfuse — <https://langfuse.com/docs>.** Open-source observability for LLM/agents (further reading).
- **Phoenix / Arize — <https://docs.arize.com/phoenix>.** Open-source (further reading).
- **Helicone — <https://docs.helicone.ai/>.** Observability for LLMs (further reading).
- **LangSmith — <https://www.langchain.com/langsmith/observability>.** SaaS.
- **Grafana Tempo — <https://grafana.com/docs/tempo/latest/>.** Trace backend (with OTel). Ch. 5.2.
- **Jaeger — <https://www.jaegertracing.io/docs/>.** Ch. 5.2.

---

## 🔄 10. Workflows and infrastructure

- **Temporal — <https://docs.temporal.io/>.**
- **Temporal — Workflow Execution — <https://docs.temporal.io/workflow-execution>.**
- **AWS Step Functions — <https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html>.**
- **AWS Step Functions — Error handling — <https://docs.aws.amazon.com/step-functions/latest/dg/concepts-error-handling.html>.**
- **Azure Durable Functions — <https://learn.microsoft.com/en-us/azure/azure-functions/durable-functions/durable-functions-overview>.**
- **Apache Airflow — DAGs — <https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/dags.html>.**
- **Dagster — <https://docs.dagster.io/>.**

---

## 💰 11. FinOps

- **FinOps Foundation — *FinOps Framework* — <https://www.finops.org/framework/>.** Ch. 6.5.
- **FinOps Foundation — *FinOps for AI* — <https://www.finops.org/wg/finops-for-ai/>.** Working group, recent material. Ch. 6.5.
- **OpenAI — *Latency optimization* — <https://developers.openai.com/api/docs/guides/latency-optimization>.**
- **Anthropic — *Prompt caching* — <https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching>.**
- **Anthropic — *Batch processing* (Message Batches API) — <https://platform.claude.com/docs/en/docs/build-with-claude/batch-processing>.** −50%; 24-h window. Ch. 6.1, 6.4.
- **OpenAI — *Batch API* — <https://developers.openai.com/api/docs/guides/batch>.** −50%; 24-h window. Ch. 6.1, 6.4.
- **Google — *Gemini API: Context caching* — <https://ai.google.dev/gemini-api/docs/caching>.** Implicit and explicit caching. Ch. 6.1, 6.4.
- **Google — *Gemini API: Pricing* — <https://ai.google.dev/gemini-api/docs/pricing>.** Cache reads at 10% of input; hourly storage. Ch. 6.1, 6.4.
- **Google — *Gemini API: Batch Mode* — <https://ai.google.dev/gemini-api/docs/batch-mode>.** −50%. Ch. 6.1, 6.4.

---

## ✅ 12. Evaluation

- **Anthropic — *Demystifying evals* — <https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents>.**
- **OpenAI — *Working with evals* — <https://developers.openai.com/api/docs/guides/evals>.**
- **OpenAI — *Evaluation best practices* — <https://developers.openai.com/api/docs/guides/evaluation-best-practices>.**
- **OpenAI — *Evaluate agent workflows* — <https://developers.openai.com/api/docs/guides/agent-evals>.**
- **OpenAI — *Graders* — <https://developers.openai.com/api/docs/guides/graders>.**
- **Ragas — Metrics — <https://docs.ragas.io/en/stable/concepts/metrics/available_metrics/>.**
- **Ragas — Faithfulness — <https://docs.ragas.io/en/stable/concepts/metrics/available_metrics/faithfulness/>.**
- **Ragas — Context Precision — <https://docs.ragas.io/en/stable/concepts/metrics/available_metrics/context_precision/>.**
- **Zheng et al. — *Judging LLM-as-a-Judge with MT-Bench and Chatbot Arena* (2023).** Paper — <https://arxiv.org/abs/2306.05685>. Ch. 2.11, 5.4.
- **Liu et al. — *G-Eval: NLG Evaluation using GPT-4 with Better Human Alignment* (2023).** Paper — <https://arxiv.org/abs/2303.16634>. Ch. 2.11.
- **Miller — *Adding Error Bars to Evals: A Statistical Approach to Language Model Evaluations* (2024).** Paper — <https://arxiv.org/abs/2411.00640>. Clustered standard errors; paired difference; ~1,000 items for 3 p.p. Ch. 1.3, 5.7.
- **Bowyer, Aitchison & Ivanova — *Position: Don't Use the CLT in LLM Evals With Fewer Than a Few Hundred Datapoints* (ICML 2025).** Paper — <https://arxiv.org/abs/2503.01747>. Wilson/paired Bayesian intervals on small samples. Ch. 1.3, 5.7.
- **Wasserstein & Lazar — *The ASA's Statement on p-Values: Context, Process, and Purpose* (The American Statistician, 2016).** Article — <https://pmc.ncbi.nlm.nih.gov/articles/PMC5088632>. Six principles on p-values. Ch. 1.3.

---

## 🏋️ 13. Distributed training and scale (vocabulary)

> Minimum scope of Ch. 7.7 — it does not replace GPU cluster manuals.

- **Shoeybi et al. — *Megatron-LM* (tensor parallelism).** Paper — <https://arxiv.org/abs/1909.08053>. Ch. 7.7.
- **Rajbhandari et al. — *ZeRO: Memory Optimizations Toward Training Trillion Parameter Models*.** Paper — <https://arxiv.org/abs/1910.02054>. Ch. 7.7.
- **PyTorch — *FSDP overview* — <https://pytorch.org/docs/stable/fsdp.html>.** Ch. 7.7.
- **Microsoft — *DeepSpeed* — <https://www.deepspeed.ai/>.** Ch. 7.7.
- **Hugging Face — *Accelerate* — <https://huggingface.co/docs/accelerate/index>.** Ch. 7.7.

---

## 🧰 14. Frameworks and ecosystem

- **LangChain — <https://docs.langchain.com/>.**
- **LangGraph — <https://docs.langchain.com/oss/python/langgraph/overview>.**
- **LangSmith — <https://www.langchain.com/langsmith/observability>.**
- **LlamaIndex — <https://developers.llamaindex.ai/python/framework/>.**
- **AutoGen — <https://microsoft.github.io/autogen/dev/>.**
- **Semantic Kernel — <https://learn.microsoft.com/en-us/semantic-kernel/>.**
- **Microsoft Agent Framework — <https://learn.microsoft.com/en-us/agent-framework/overview/>.**
- **Google ADK — <https://adk.dev/>.**
- **Pinecone — <https://docs.pinecone.io/>.**
- **Weaviate — <https://docs.weaviate.io/weaviate>.**
- **Milvus — <https://milvus.io/docs>.**
- **Qdrant — <https://qdrant.tech/documentation/>.**
- **Elasticsearch — <https://www.elastic.co/docs/solutions/search/rag>.**
- **OpenSearch — <https://docs.opensearch.org/latest/vector-search/>.**
- **pgvector — <https://github.com/pgvector/pgvector>.**

---

## 📖 15. Books and cross-cutting reading

- **Chip Huyen — *Designing Machine Learning Systems* (O'Reilly).** Book.
- **Chip Huyen — *AI Engineering: Building Applications with Foundation Models* (O'Reilly, 2024).** Book.
- **Lakshmanan, Robinson & Munn — *Machine Learning Design Patterns* (O'Reilly).** Book.
- **Engineering blogs from OpenAI, Anthropic, Google, Meta, Netflix, Airbnb and Uber.** Varied material on MLOps, LLMOps and Agentic AI.

---

## 🧪 16. Post-training, data and agent evaluation

> Sources for Ch. 7.8 (post-training, data and licenses) and Ch. 5.7 (agent evaluation). Lab recipes are the authors' own technical reports; maturity is declared in the chapters.

### 📑 Papers and technical reports

- **Lambert et al. — *Tülu 3: Pushing Frontiers in Open Language Model Post-Training* (2024).** Paper — <https://arxiv.org/abs/2411.15124>. SFT -> DPO -> RLVR recipe; 8-gram decontamination; "unseen" split. Ch. 7.8.
- **Grattafiori et al. — *The Llama 3 Herd of Models* (2024).** Paper — <https://arxiv.org/abs/2407.21783>. Six SFT -> DPO rounds; rejection sampling; DPO preferred over PPO on cost. Ch. 7.8.
- **Yang et al. — *Qwen3 Technical Report* (2025).** Paper — <https://arxiv.org/abs/2505.09388>. Cold start -> reasoning RL -> mode fusion -> general RL. Ch. 7.8.
- **DeepSeek-AI — *DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning* (Nature 2025).** Paper — <https://arxiv.org/abs/2501.12948>. Pure RL with rule-based rewards; neural reward model "susceptible to reward hacking". Ch. 7.8.
- **OLMo Team — *2 OLMo 2 Furious* (2025).** Paper — <https://arxiv.org/abs/2501.00656>. Operational definition of mid-training. Ch. 7.8.
- **Ouyang et al. — *Training language models to follow instructions with human feedback* (NeurIPS 2022).** Paper — <https://arxiv.org/abs/2203.02155>. Classic RLHF (InstructGPT): SFT, reward model, RL. Ch. 7.8.
- **Rafailov et al. — *Direct Preference Optimization: Your Language Model is Secretly a Reward Model* (NeurIPS 2023).** Paper — <https://arxiv.org/abs/2305.18290>. The DPO loss; reference and β. Ch. 7.6, 7.8.
- **Bai et al. — *Constitutional AI: Harmlessness from AI Feedback* (2022).** Paper — <https://arxiv.org/abs/2212.08073>. AI preferences guided by principles. Ch. 7.8.
- **Lee et al. — *RLAIF vs. RLHF: Scaling Reinforcement Learning from Human Feedback with AI Feedback* (2023).** Paper — <https://arxiv.org/abs/2309.00267>. Definition of RLAIF. Ch. 7.8.
- **Ethayarajh et al. — *KTO: Model Alignment as Prospect Theoretic Optimization* (2024).** Paper — <https://arxiv.org/abs/2402.01306>. Variant with unpaired binary feedback; "no single variant is universally best". Ch. 7.8.
- **Hong, Lee & Thorne — *ORPO: Monolithic Preference Optimization without Reference Model* (2024).** Paper — <https://arxiv.org/abs/2403.07691>. Reference-free variant. Ch. 7.8.
- **Meng, Xia & Chen — *SimPO: Simple Preference Optimization with a Reference-Free Reward* (2024).** Paper — <https://arxiv.org/abs/2405.14734>. Reference-free variant. Ch. 7.8.
- **Wang et al. — *Self-Instruct: Aligning Language Models with Self-Generated Instructions* (2023).** Paper — <https://arxiv.org/abs/2212.10560>. Synthetic instruction generation from seeds. Ch. 7.8.
- **Xu et al. — *WizardLM: Empowering Large Language Models to Follow Complex Instructions* (Evol-Instruct) (2023).** Paper — <https://arxiv.org/abs/2304.12244>. Progressively harder instructions. Ch. 7.8.
- **Xu et al. — *Magpie: Alignment Data Synthesis from Scratch by Prompting Aligned LLMs with Nothing* (2024).** Paper — <https://arxiv.org/abs/2406.08464>. Synthesis from the pre-query template. Ch. 7.8.
- **NVIDIA — *Nemotron-4 340B Technical Report* (2024).** Paper — <https://arxiv.org/abs/2406.11704>. More than 98% synthetic alignment data. Ch. 7.8.
- **Shumailov et al. — *AI models collapse when trained on recursively generated data* (Nature 2024).** Paper — <https://arxiv.org/abs/2305.17493>. Model collapse under recursive training. Ch. 7.8.
- **Gerstgrasser et al. — *Is Model Collapse Inevitable? Breaking the Curse of Recursion by Accumulating Real and Synthetic Data* (2024).** Paper — <https://arxiv.org/abs/2404.01413>. Accumulation avoids collapse; replacement causes it. Ch. 7.8.
- **OpenAI — *GPT-4 Technical Report* (2023).** Paper — <https://arxiv.org/abs/2303.08774>. Decontamination by 50-character substrings. Ch. 7.8.
- **Longpre et al. — *The Data Provenance Initiative: A Large Scale Audit of Dataset Licensing & Attribution in AI* (2023).** Paper — <https://arxiv.org/abs/2310.16787>. Licenses omitted in 70%+ of datasets on hubs. Ch. 7.8.

### 📘 Official documentation

- **Hugging Face — *TRL: SFT Trainer* (v1.16.0) — <https://huggingface.co/docs/trl/sft_trainer>.** Loss masks (`assistant_only_loss`, `completion_only_loss`); datasets with `tools`. Ch. 7.8.
- **Hugging Face — *TRL: DPO Trainer* (v1.16.0) — <https://huggingface.co/docs/trl/dpo_trainer>.** `prompt/chosen/rejected` format; implicit reference; `precompute_ref_log_probs`. Ch. 7.8.
- **Hugging Face — *Hub: Dataset Cards* — <https://huggingface.co/docs/hub/datasets-cards>.** Dataset card template (YAML `license`, `language`, tags). Ch. 7.8.

### 📜 Technical blogs

- **Ben Allal, Lozhkov & van Strien (Hugging Face) — *Cosmopedia: how to create large-scale synthetic data for pre-training* — <https://huggingface.co/blog/cosmopedia>.** Prompt diversity as the bottleneck of synthetic generation. Ch. 7.8.

### ⚖️ Terms of use (legal documents)

- **Anthropic — *Commercial Terms of Service* (effective 2025-06-17) — <https://www.anthropic.com/legal/commercial-terms>.** Prohibits using the services to train competing models. Ch. 7.8.
- **Anthropic — *Consumer Terms of Service* (effective 2025-10-08) — <https://www.anthropic.com/legal/consumer-terms>.** Equivalent clause for the consumer product. Ch. 7.8.
- **Google — *Gemini API Additional Terms of Service* (effective 2026-03-23) — <https://ai.google.dev/gemini-api/terms>.** Prohibits using the services to develop competing models. Ch. 7.8.

### 🤖 Agent evaluation

- **Jimenez et al. — *SWE-bench: Can Language Models Resolve Real-World GitHub Issues?* (ICLR 2024).** Paper — <https://arxiv.org/abs/2310.06770>. Benchmark of real issues in Python repositories; basis for SWE-bench Verified. Ch. 5.7.
- **Princeton NLP / OpenAI — *SWE-bench Verified* (dataset card, 2024).** Dataset — <https://huggingface.co/datasets/princeton-nlp/SWE-bench_Verified>. Subset of 500 instances validated by human review. Ch. 5.7.
- **Merrill et al. — *Terminal-Bench: Benchmarking Agents on Hard, Realistic Tasks in Command Line Interfaces* (ICLR 2026).** Paper — <https://arxiv.org/abs/2601.11868>. Task verification process (oracle, no-op, auditors, adversarial agent, ≥5 runs); tests copied in after the agent. Ch. 5.7.
- **Harbor — *Tasks: overview* — <https://docs.harborframework.com/tasks/overview>.** Docs (task format: `instruction.md`, `task.toml`, `environment/`, `solution/`, `tests/`). Ch. 5.7.
- **Terminal-Bench — *Terminal-Bench 4.0* (2026) — <https://www.tbench.ai/news/terminal-bench-4-0>.** Release note (continuous benchmark with semantic versioning; tasks removed and fixed between versions). Ch. 5.7.
- **Yao et al. — *τ-bench: A Benchmark for Tool-Agent-User Interaction in Real-World Domains* (2024).** Paper — <https://arxiv.org/abs/2406.12045>. Verification by database state; pass^k metric. Ch. 5.7.
- **Zhu et al. — *Establishing Best Practices for Building Rigorous Agentic Benchmarks* (2025).** Paper — <https://arxiv.org/abs/2507.02825>. Agentic Benchmark Checklist; task- and outcome-validity defects in mature benchmarks. Ch. 5.7.
- **Kapoor et al. — *Holistic Agent Leaderboard (HAL)* (ICLR 2026).** Paper — <https://arxiv.org/abs/2510.11977>. Score as a function of model, scaffold and budget; cost reported next to accuracy. Ch. 5.7.
- **METR — *Recent Frontier Models Are Reward Hacking* (2025).** Technical report — <https://metr.org/blog/2025-06-05-recent-reward-hacking>. Reward hacking in evaluation; recommendation to fix the verifier. Ch. 5.7.
- **Denison et al. — *Sycophancy to Subterfuge: Investigating Reward-Tampering in Large Language Models* (2024).** Paper — <https://arxiv.org/abs/2406.10162>. Generalization from specification gaming to reward tampering. Ch. 5.7.
- **Baker et al. — *Monitoring Reasoning Models for Misbehavior and the Risks of Promoting Obfuscation* (2025).** Paper — <https://arxiv.org/abs/2503.11926>. Reasoning monitor; obfuscated cheating when optimizing against the monitor. Ch. 5.7.

### 📐 Statistics for evaluation

- **Chen et al. — *Evaluating Large Language Models Trained on Code* (2021).** Paper — <https://arxiv.org/abs/2107.03374>. Unbiased pass@k estimator. Ch. 5.7.

---

## 🚫 Note on promotional sources

When a reference is primarily promotional of a product, it should **not** be used as the only basis for a technical claim. The criterion:

- ✅ Official documentation with verifiable technical details.
- ✅ Peer-reviewed papers or serious preprints.
- ✅ Open specifications (RFCs, MCP, A2A, OpenTelemetry, SLSA, SPDX, CycloneDX).
- ⚠️ A vendor blog post with technical substance — cite with caution and as complementary.
- ❌ A pure marketing post — do **not** cite.

Emerging topics (A2A, the most recent MCP Authorization, FinOps for AI) have their maturity declared explicitly and should be revisited periodically.
