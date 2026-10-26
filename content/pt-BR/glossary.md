---
title: "Glossário"
lang: pt-BR
order: 96
status: stable
tags: [referencia]
---

# 📖 Glossário

Glossário alfabético dos conceitos centrais usados no livro. Para conceitos importantes, a entrada explica:

- **O que é.**
- **Onde aparece em produção.**
- **Riscos.**
- **Relação com outros conceitos.**

Conceitos auxiliares têm definição mais curta. Entradas estão organizadas alfabeticamente; quando há sigla, ela é o título.

---

## A

### A2A (Agent2Agent protocol)

- **O que é.** Protocolo aberto, originalmente proposto pelo Google e hoje mantido na Agentic AI Foundation (`a2a-protocol.org`), para padronizar a comunicação entre agentes via Agent Cards, mensagens e task lifecycle. Anunciado em abril de 2025 e transferido à Linux Foundation em junho de 2025, teve a especificação 1.0 publicada em março de 2026 e passou à Agentic AI Foundation em agosto de 2026.
- **Onde aparece em produção.** Ambientes onde múltiplos agentes (de diferentes fornecedores ou times) precisam se interconectar via contrato comum.
- **Riscos.** Como em MCP, A2A é um conector; **não** é mecanismo de segurança. Autorização, identidade e auditoria precisam estar em camadas determinísticas.
- **Relação.** Complementa MCP. MCP padroniza agente↔tool/recurso; A2A padroniza agente↔agente.
- **Maturidade.** Tópico emergente; a spec evolui. Adotar com janela de migração explícita e controles fora do protocolo.

### ABAC (Attribute-Based Access Control)

- **O que é.** Modelo de autorização baseado em atributos (usuário, recurso, ação, contexto).
- **Onde aparece.** Política de acesso a dados sensíveis, tools e memória de agentes.
- **Relação.** Alternativa ou complemento a RBAC; pode ser implementado em OPA/Rego ou Cedar.

### AgentOps

- **O que é.** Conjunto de práticas operacionais específicas para agentes: versionamento de prompts, tools, MCP servers e runtime; observabilidade de tracing semântico; eval harness fim a fim; FinOps por agente.
- **Onde aparece.** Em times que operam portfólio de agentes em produção.
- **Riscos.** Confundir AgentOps com LLMOps; agentes adicionam complexidade de **ação** e **estado**.

### Agent harness

- **O que é.** Engenharia ao redor do modelo: orquestração, retries, timeouts, fallbacks, policy, observabilidade, evals, sandbox, HITL, auditoria.
- **Onde aparece.** Em qualquer agente sério em produção.
- **Relação.** O harness é o produto real. O modelo é apenas um componente.

### Agent runtime

- **O que é.** Camada que executa o loop do agente: recebe input, monta contexto, chama modelo, interpreta tool calls, executa tools, atualiza estado, decide parar.
- **Relação.** Subconjunto do harness - apenas a execução, não a engenharia ao redor.

### Agency

- **O que é.** Capacidade operacional de perseguir um objetivo via decisões intermediárias e ações permitidas.
- **Riscos.** Aumentar agency sem aumentar controles é o erro clássico em agentes.

### AI Agent

- **O que é.** Implementação concreta de um sistema agentic com modelo, contexto, ferramentas, memória, políticas, runtime, avaliação e observabilidade.
- **Relação.** Difere de chatbot (sem tools/estado), copiloto (assiste humano) e workflow automatizado (determinístico).

### AI gateway / Model gateway

- **O que é.** Camada intermediária entre aplicação e providers de modelo. Responsabilidades: abstração de API, rate limiting (req/s + tokens/s + cost/s), caching (prompt + semantic), routing, fallback, observabilidade unificada, redaction/DLP, enforcement de budget, audit log, integração com policy engines.
- **O que NÃO faz.** Não substitui IAM/policy real, não elimina prompt injection, não garante isolamento multi-tenant.
- **Projetos amplamente usados.** LiteLLM (open-source), Kong AI Gateway plugins, Portkey, Cloudflare AI Gateway.
- **Riscos.** Lock-in no gateway; ponto único de falha. Mitigado por desenho stateless e portabilidade.

### Audit log

- **O que é.** Registro imutável de eventos críticos (decisões, ações, acessos).
- **Onde aparece.** Compliance, investigação de incidente, atribuição de responsabilidade.

### Autonomia limitada

- **O que é.** Autonomia restrita por escopos, permissões, budgets e aprovações.
- **Relação.** Conceito central deste livro: agentes não devem fazer "o que quiserem".

### Agent identity

- **O que é.** Identidade própria do agente (service account, workload identity) distinta da credencial humana que o invocou.
- **Onde aparece.** Agentes que atuam on-behalf-of com OAuth/OIDC, MCP Authorization, escopos mínimos e rotação de tokens.
- **Riscos.** Reutilizar credencial humana amplia blast radius e dificulta auditoria.
- **Relação.** Complementa delegated authorization e policy-as-code.

### Agent Card

- **O que é.** Documento (JSON) que descreve um agente compatível com A2A: endpoints, capabilities, autenticação, modos de execução.
- **Onde aparece.** Discovery em sistemas multi-agente.
- **Riscos.** Capacidades amplas demais; falta de versionamento explícito.

### Agent Skills / AGENTS.md

- **O que é.** Duas convenções de arquivo, não protocolos, para dar instruções a agentes. **`AGENTS.md`** é um Markdown livre na raiz do repositório (ou aninhado em monorepos; o arquivo mais próximo prevalece) com orientações para agentes de codificação, hoje governado pela Agentic AI Foundation. **Agent Skills** é um formato aberto em que uma pasta com `SKILL.md` (front matter com `name` e `description`, mais `scripts/`, `references/` e `assets/`) empacota instruções portáteis carregadas sob demanda; o campo `allowed-tools` é experimental.
- **Onde aparece.** Repositórios usados por agentes de codificação; distribuição de procedimentos reutilizáveis entre agentes e ferramentas.
- **Riscos.** Entram no contexto do modelo como texto: são superfície de prompt injection indireta e de supply chain, como as descrições de tools. Exigem revisão, versionamento e proveniência.
- **Relação.** Complementam MCP (que padroniza tools/resources) sem substituí-lo; ver Cap. 3.5, 4.3, 4.9.
- **Maturidade.** `AGENTS.md` é convenção amplamente adotada; Agent Skills é formato aberto recente (fim de 2025), sem governança por fundação confirmada.

### AWQ (Activation-aware Weight Quantization)

- **O que é.** Método de quantização pós-treino que preserva canais de peso "salientes" (alta magnitude de ativação) e quantiza o resto.
- **Quando usar.** Serving INT4 com qualidade superior a round-to-nearest.
- **Referência.** Lin et al., 2023 (<https://arxiv.org/abs/2306.00978>).

---

## B

### Blue/green deployment

- **O que é.** Estratégia de rollout com dois ambientes completos; tráfego alterna entre "azul" (atual) e "verde" (novo) para rollback rápido.
- **Onde aparece.** Serviços de inferência e agentes quando reversão instantânea é requisito.
- **Relação.** Complementar a canary e shadow deploy.

### Batch inference

- **O que é.** Execução de inferência em massa, geralmente offline ou em janelas programadas.
- **Trade-off.** Latência alta, custo baixo. Útil para scoring, embeddings em massa, recomputação.

### Bias

- **O que é.** Erro sistemático por simplificação excessiva. Leva a underfitting.
- **Relação.** Complementar a variance.

### Blast radius

- **O que é.** O quanto uma ação errada de um agente pode danificar o sistema/empresa.
- **Onde aparece.** Decisões sobre permissões, sandboxing e HITL.

### BPE (Byte Pair Encoding)

- **O que é.** Algoritmo de tokenização sub-palavra.
- **Relação.** Alternativa a SentencePiece em alguns modelos.
- **Referência.** Sennrich, Haddow & Birch, ACL 2016 (<https://aclanthology.org/P16-1162/>).

### bitsandbytes

- **O que é.** Biblioteca Python para carregar modelos em 8-bit/4-bit (incluindo NF4) com Hugging Face Transformers.
- **Onde aparece.** Prototipagem e fine-tuning (QLoRA).
- **Limites.** Não é o caminho típico para serving de baixa latência em larga escala; para isso prefira kernels do vLLM/TensorRT-LLM.

---

## C

### Chatbot

- **O que é.** Sistema que responde em linguagem natural, sem tools, estado operacional nem loop de ação autônoma.
- **Relação.** Diferente de copiloto, workflow, agente e multi-agent.

### Copiloto

- **O que é.** Sistema que assiste um humano em tarefa específica, com autonomia baixa a média.
- **Relação.** Não implica tool registry, policy engine nem eval harness completos.

### Calibração

- **O que é.** Correspondência entre probabilidade prevista pelo modelo e frequência real observada.
- **Métrica.** ECE (Expected Calibration Error).
- **Onde aparece.** Decisões de risco e ranking.

### Canary deployment

- **O que é.** Liberar nova versão para fatia pequena de tráfego, monitorar e expandir.

### Catálogo de fontes de conhecimento (registro)

- **O que é.** Inventário governado das fontes de conhecimento (coleções, bancos, grafos, feeds) com owner, origem/lineage, classificação de sensibilidade, política de acesso, jurisdição, freshness, versão e status de ciclo de vida. Metadado *sobre as fontes*, distinto do índice vetorial em si.
- **Onde aparece.** Governança de RAG/GraphRAG, auditoria, supply chain (Cap. 4.12).
- **Nota.** "Knowledge Base Registry" é nome aceitável (registro/catálogo é vocabulário de *data governance*). Rótulos com cara de produto como "Memory Bank", "Engine Orchestration" e "Evaluation Center" **não** são adotados - seus conceitos já têm nomes melhores (memória persistente, harness/runtime, eval harness).

### Chunking

- **O que é.** Divisão de documentos em pedaços para embedding e retrieval.
- **Riscos.** Chunking ruim destrói RAG. Estratégias: fixo, semântico, hierárquico (parent/child).

### Circuit breaker

- **O que é.** Mecanismo que interrompe chamadas para um componente quando falhas excedem limite.
- **Onde aparece.** Tool calls, modelo, retrieval.

### Concept drift

- **O que é.** Mudança na relação entre features e label ao longo do tempo.
- **Detecção.** Métricas de performance comparadas a baseline.

### Context engineering

- **O que é.** Disciplina de selecionar, ordenar, compactar e estruturar o contexto enviado ao modelo.
- **Relação.** Mais ampla que prompt engineering.

### Context window

- **O que é.** Máximo de tokens que o modelo aceita em uma chamada.
- **Trade-off.** Janelas grandes aumentam custo e podem degradar qualidade por ruído.

### Contextual retrieval

- **O que é.** Técnica de **indexação** em que um LLM escreve um contexto curto (50–100 tokens) para cada chunk, derivado do documento inteiro, antes de gerar o embedding e indexar em BM25.
- **Onde aparece.** Pipelines de RAG em que chunks perdem referentes ("a empresa", "o contrato") ao serem cortados do documento.
- **Riscos.** Custo único de uma geração por chunk a cada reindexação; ganhos medidos em benchmark do próprio autor (falhas de recuperação no top-20 −49% com BM25 contextual e −67% com reranking); validar no seu golden set.
- **Relação.** Ortogonal às técnicas do lado da consulta (HyDE, reescrita) e ao late chunking; combina com hybrid search e reranking. Ver Cap. 2.7.

### Controle determinístico

- **O que é.** Mecanismo cujo comportamento é previsível e auditável (código, policy-as-code, RBAC).
- **Relação.** Distinguir de **mitigação** (que reduz probabilidade, sem garantir).

### Continuous batching

- **O que é.** Técnica de scheduling em servidores de inferência LLM que adiciona novas sequências ao batch a cada step, sem esperar batch fechar.
- **Onde aparece.** vLLM, TensorRT-LLM (in-flight batching), TGI.
- **Por que importa.** Aumenta utilização de GPU e throughput agregado.

### Cedar

- **O que é.** Linguagem de policy da AWS para autorização; alternativa a Rego em alguns ambientes cloud-native.
- **Onde aparece.** Autorização de APIs e tools quando o time já padronizou Cedar.
- **Relação.** Complementar a OPA/Rego e SpiceDB (ReBAC).

### CycloneDX

- **O que é.** Formato de SBOM mantido pela OWASP. Suporta ML-BOM (modelos, datasets, hyperparameters).
- **Onde aparece.** Build pipelines, supply chain de IA.
- **Relação.** Alternativa/complemento a SPDX.

---

## D

### Data contract

- **O que é.** Especificação versionada de schema, qualidade, SLAs e regras de governança de um dataset.
- **Onde aparece.** Interface entre upstream e pipelines de ML/LLM.

### Dataset card

- **O que é.** Documento que descreve origem, schema, viés, licença, restrições e uso recomendado de um dataset (análogo ao model card).
- **Onde aparece.** Governança de dados, experiment tracking, supply chain.
- **Referência.** Gebru et al. - *Datasheets for Datasets*.

### Data drift

- **O que é.** Mudança na distribuição das features ao longo do tempo.
- **Detecção.** KS test (Kolmogorov-Smirnov), PSI, Jensen-Shannon divergence.

### Delegated authorization

- **O que é.** Permissão concedida a um agente para agir em nome de um usuário, via padrões como OAuth 2.0.
- **Riscos.** Tokens amplos ou longos; necessidade de escopo mínimo e rotação.

### Depreciação

- **O que é.** Processo controlado de retirar um prompt, tool, modelo, schema, MCP server ou agente.
- **Riscos.** Marcar metadata como `deprecated` **não impede** que o modelo tente usar. Bloqueio real precisa estar em camadas determinísticas.

### Distillation

- **O que é.** Treinar modelo menor (student) a partir de modelo maior (teacher).
- **Onde aparece.** Otimização de custo em produção.

### DataOps

- **O que é.** Práticas de qualidade, lineage, contratos, freshness e SLAs sobre dados que alimentam ML/LLM.
- **Onde aparece.** Pipelines de ingestão, feature stores, índices RAG.
- **Relação.** Complementa MLOps; DataOps ruim degrada qualquer modelo.

### DLP (Data Loss Prevention)

- **O que é.** Conjunto de controles para evitar vazamento de dados sensíveis.
- **Onde aparece.** Inspeção de prompts, outputs, tool calls.

### Dimensão (de embeddings)

- **O que é.** Tamanho do vetor produzido por um modelo de embedding (`d`). Valores comuns: 256–4096.
- **Trade-off.** `d` maior tende a recall maior, mas custa mais storage, RAM e latência de ANN.
- **Relação.** Em modelos Matryoshka, dimensão pode ser reduzida via truncamento sem reembedding.

---

## E

### Egress control

- **O que é.** Restrição de saída de rede de sandboxes e runtimes de agente (allowlist de destinos, bloqueio por padrão).
- **Onde aparece.** Execução de código gerado, MCP servers, tools externas.
- **Relação.** Complementa sandbox e policy-as-code.

### Equalized odds

- **O que é.** Critério de fairness: TPR e FPR iguais entre grupos protegidos.
- **Onde aparece.** Avaliação de modelos de classificação em contextos regulados.
- **Referência.** Hardt, Price & Srebro (2016).

### ECE (Expected Calibration Error)

- **O que é.** Diferença média ponderada entre confiança prevista e acurácia observada em bins.
- **Onde aparece.** Avaliação de calibração.

### Embedding

- **O que é.** Representação vetorial densa de texto, imagem ou entidade.
- **Onde aparece.** Retrieval, clustering, classificação semântica.

### Eval harness

- **O que é.** Infraestrutura que executa avaliações sistemáticas (datasets, checks, release gates).
- **Onde aparece.** CI/CD de prompts, tools, agentes e modelos.

### Excessive agency

- **O que é.** Situação em que o agente tem mais autonomia/permissões do que precisa.
- **Risco.** Blast radius alto.

### FP8 / FP16 / BF16 / INT8 / INT4 / NF4

- **O que são.** Formatos numéricos usados em treino e inferência.
  - **FP32 / FP16 / BF16** - ponto flutuante; FP16 menor que FP32 mantendo range razoável; BF16 mantém range ~ FP32 com 16 bits.
  - **FP8 (E4M3, E5M2)** - ponto flutuante de 8 bits, hardware moderno (H100, H200, MI300).
  - **INT8** - inteiro 8 bits; W8A8 ou W8A16 em inferência.
  - **INT4 / NF4** - inteiro 4 bits; NF4 é o "NormalFloat" 4-bit do QLoRA, otimizado para distribuição de pesos.
- **Onde aparecem.** Quantização para inferência e fine-tuning.

---

## F

### FSDP (Fully Sharded Data Parallel)

- **O que é.** Estratégia PyTorch que sharda parâmetros, gradientes e estados do otimizador entre GPUs (equivalente conceitual ao ZeRO-3).
- **Onde aparece.** Fine-tuning/treino de modelos grandes que não cabem em uma GPU.
- **Relação.** Com ZeRO/DeepSpeed; escopo operacional distinto de serving.

### F1 score

- **O que é.** Média harmônica de precisão e recall.
- **Onde aparece.** Classificação com classes desbalanceadas.

### Feature store

- **O que é.** Plataforma que armazena, versiona e serve features.
- **Padrões.** Offline store (treino) + online store (inferência) com paridade.

### Fine-tuning

- **O que é.** Adaptação dos pesos de um modelo pré-treinado a um domínio.
- **Quando usar.** Estilo, formato, competência estreita.
- **Quando NÃO usar.** Para inserir conhecimento factual mutável (use RAG).

### FinOps

- **O que é.** Disciplina para gestão de custo e consumo.
- **Em IA.** Inclui token budget, custo por tarefa, custo por tenant, chargeback.

### Function calling

- **O que é.** Mecanismo schema-first para o modelo propor chamadas a funções.
- **Importante.** O modelo **propõe**; a aplicação **valida, autoriza e executa**.

---

## G

### GGUF

- **O que é.** Formato de arquivo do `llama.cpp` para modelos quantizados (Q4_K_M, Q5_K_M, Q8_0, IQ-quants etc.).
- **Onde aparece.** Inferência local CPU/GPU mista, prototipagem.

### GPTQ

- **O que é.** Método de quantização pós-treino camada-a-camada que usa aproximação de segunda ordem do erro de reconstrução.
- **Quando usar.** Serving INT4/INT3 com bom equilíbrio qualidade/custo.
- **Referência.** Frantar et al., ICLR 2023 (<https://arxiv.org/abs/2210.17323>).

### GraphRAG

- **O que é.** RAG que usa estrutura de grafo (knowledge graph) para recuperar relações e subgrafos.
- **Quando usar.** Perguntas multi-hop, compliance relacional, investigação.

### Groundedness

- **O que é.** Grau em que a resposta do modelo é apoiada por evidências recuperadas/citadas.
- **Onde aparece.** Avaliação de RAG.

### Guardrail

- **O que é.** Camada heurística que tenta filtrar inputs/outputs perigosos.
- **Limites.** Reduz risco, **não garante**. Não é controle determinístico.

---

## H

### Hallucination (alucinação)

- **O que é.** Saída plausível mas factualmente incorreta de um LLM.
- **Mitigação.** Grounding, RAG, validação, citações; nada elimina.

### Hybrid search

- **O que é.** Combinação de busca lexical (BM25) e busca vetorial.
- **Quando usar.** Documentos técnicos com siglas, códigos e linguagem natural.

### HyDE (Hypothetical Document Embeddings)

- **O que é.** Técnica do lado da consulta em que um LLM escreve um **documento hipotético** que responderia à pergunta; o embedding desse documento (média de N amostras mais o embedding da consulta) é usado na busca densa, deslocando o problema de "consulta → documento" para "documento → documento".
- **Onde aparece.** Retrieval zero-shot sem rótulos de relevância; consultas curtas contra documentos longos; domínio fora do treino do retriever.
- **Riscos.** Uma geração síncrona por consulta (latência de recuperação 2,5–3× em medições independentes); o LLM pode alucinar para o lado errado em consultas ambíguas, entidades raras e fatos recentes; com encoder fine-tuned ou reranker forte o ganho encolhe ou vira perda.
- **Relação.** Alternativa a reescrita e multi-query; compete com hybrid search + reranking e com contextual retrieval. Ver Cap. 2.7.
- **Maturidade.** Paper de 2023 com evidência mista em 2024–2025; técnica de nicho, não padrão.

### HNSW (Hierarchical Navigable Small World)

- **O que é.** Algoritmo de busca aproximada (ANN) por similaridade vetorial baseado em grafos hierárquicos.
- **Onde aparece.** Quase todo vector DB moderno (Qdrant, Weaviate, pgvector, Pinecone, OpenSearch).
- **Referência.** Malkov & Yashunin, TPAMI 2018 (<https://arxiv.org/abs/1603.09320>).

### Human-in-the-loop (HITL)

- **O que é.** Intervenção humana em pontos definidos do fluxo.
- **Importante.** O humano deve aprovar **plano concreto**, não intenção vaga.

---

## I

### Indirect prompt injection

- **O que é.** Conteúdo recuperado por RAG/tool contém instruções maliciosas que o modelo pode obedecer.
- **Mitigação.** Sanitização, allowlists, policy checks, separação de instruções e dados.

### Inference

- **O que é.** Execução do modelo treinado para produzir saídas.
- **Modalidades.** Batch, online, streaming, edge.

---

## K

### Knowledge graph

- **O que é.** Grafo de entidades, relações e propriedades.
- **Onde aparece.** GraphRAG, compliance relacional, investigação.

### KV cache

- **O que é.** Cache de chaves/valores da atenção durante inferência.
- **Onde aparece.** Acelera decode em LLMs (após prefill).

---

## L

### Label leakage

- **O que é.** Feature contém o próprio label (ou função direta dele).
- **Risco.** Performance irreal em offline; desastre em produção.

### LIME (Local Interpretable Model-agnostic Explanations)

- **O que é.** Técnica de explicação local que aproxima o modelo por um regressor linear em torno de uma predição.
- **Limites.** Aproximação, não "verdade" do modelo.
- **Referência.** Ribeiro, Singh & Guestrin (KDD 2016).

### Late interaction

- **O que é.** Família de modelos de retrieval (ColBERT, ColBERTv2, ColPali) que mantém **um vetor por token** do documento e pontua a consulta contra todos eles (MaxSim), em vez de comprimir cada documento em um único vetor.
- **Onde aparece.** Busca de alta precisão; documentos visualmente ricos (tabelas, figuras, layouts), em que o ColPali gera embeddings de imagens de páginas sem OCR.
- **Riscos.** Índice maior (a compressão residual do ColBERTv2 reduz 6–10×, ainda assim acima do single-vector) e scoring mais caro; não está demonstrado que substitua OCR em todos os casos.
- **Relação.** Alternativa ao embedding denso tradicional; combina com reranking. Ver Cap. 2.7.

### Latência (p50, p95, p99)

- **O que é.** Métricas de tempo de resposta.
- **Importante.** SLOs de produção devem usar percentis, não média.

### Learned sparse retrieval

- **O que é.** Retrieval em que um modelo neural aprende **vetores esparsos sobre o vocabulário** (pesos por termo, com expansão de termos), indexáveis em um motor de índice invertido comum. Exemplo canônico: SPLADE (v2, 2021).
- **Onde aparece.** Como componente lexical "aprendido" dentro de hybrid search, no lugar ou ao lado de BM25.
- **Riscos.** Depende de treino supervisionado ou destilação; ganhos reportados em benchmarks acadêmicos precisam ser confirmados no corpus próprio.
- **Relação.** Entre BM25 (esparso, não aprendido) e embeddings densos; ver Cap. 2.7.

### LLM-as-a-judge

- **O que é.** Uso de LLM para avaliar respostas conforme rubrica.
- **Limites.** Útil para escalar, **não é** única fonte de qualidade; calibrar contra humanos.

### LLMOps

- **O que é.** Práticas para operar aplicações baseadas em LLM (versionamento, caching, evals, observabilidade, custo).

### LoRA / QLoRA

- **O que é.** Técnicas de fine-tuning eficiente que atualizam matrizes de baixo posto.
- **LoRA.** Adapters de baixo posto sobre o modelo base congelado (Hu et al., 2021).
- **QLoRA.** LoRA sobre base 4-bit (NF4) com double quantization e paged optimizers (Dettmers et al., 2023).
- **Onde aparece.** Adaptação de comportamento sem custo de full fine-tuning.

---

## M

### Metadata filtering

- **O que é.** Restrição de candidatos no retrieval por atributos estruturados (tenant, idioma, jurisdição, data).
- **Onde aparece.** RAG multi-tenant, hybrid search, compliance.
- **Riscos.** Filtro ausente ou mal aplicado causa cross-tenant leakage.

### Matryoshka embeddings / Matryoshka Representation Learning (MRL)

- **O que é.** Família de embeddings treinados para que **prefixos** do vetor (ex.: 64, 128, 256, 512, 1024 dimensões) já sejam representações semanticamente válidas. Permite truncar dimensão sem reembedding.
- **Onde aparece.** OpenAI `text-embedding-3-*` (parâmetro `dimensions`), Cohere Embed v3, Nomic Embed, Sentence Transformers.
- **Trade-off.** Reduz custo/storage com perda controlada de qualidade.
- **Referência.** Kusupati et al., NeurIPS 2022 (<https://arxiv.org/abs/2205.13147>).

### MCP (Model Context Protocol)

- **O que é.** Protocolo aberto para conectar aplicações de IA a tools, resources e prompts via clients e servers.
- **Limites.** Conector útil; **não substitui** autorização corporativa, threat modeling, runtime, evals, observabilidade ou aprovação humana.

### MCP server

- **O que é.** Servidor que expõe capabilities MCP (tools, resources, prompts) para clients.
- **Riscos.** Capacidades amplas demais; falta de autorização granular; supply chain.

### MCP client

- **O que é.** Componente que conecta uma aplicação (host) a um MCP server.

### Memória (em agentes)

- **O que é.** Estado persistido e recuperável usado pelo agente.
- **Tipos.** Short-term, working, long-term, episodic, semantic, operacional, de ferramentas, de decisões.
- **Riscos.** Memory poisoning, privacidade, obsolescência.

### Memory poisoning

- **O que é.** Contaminação da memória do agente com dado incorreto ou malicioso, que depois é reutilizado.
- **Mitigação.** Provenance, TTL, confirmação para preferências, evals.

### Mitigação

- **O que é.** Mecanismo que reduz probabilidade de um risco, sem garantir eliminação.
- **Relação.** Distinguir de **controle determinístico**.

### MITRE ATLAS

- **O que é.** Taxonomia de táticas e técnicas de ataque a sistemas de ML.
- **Onde aparece.** Threat modeling complementar ao OWASP LLM Top 10.
- **Referência.** <https://atlas.mitre.org/>

### MLOps

- **O que é.** Práticas para ciclo de vida de modelos ML tradicionais (pipeline, registry, observabilidade, governança).

### Model card

- **O que é.** Documento técnico que descreve propósito, dados de treino, métricas, limites, riscos e uso recomendado de um modelo.

### Model registry

- **O que é.** Catálogo versionado de modelos com metadata, status (staging, production, archived) e aprovação.

### Model routing

- **O que é.** Seleção dinâmica de modelo (por complexidade, custo, jurisdição).

### Multi-agent

- **O que é.** Sistema com múltiplos agentes coordenados.
- **Riscos.** Custo, coordenação, loops. Usar apenas com decomposição real.

---

## N

### NDCG

- **O que é.** Normalized Discounted Cumulative Gain. Métrica de ranking com relevância ordinal e ponderação por posição.

### NIST AI RMF

- **O que é.** Risk Management Framework do NIST para sistemas de IA.

### NIST Generative AI Profile

- **O que é.** Recorte do AI RMF aplicado a sistemas de IA generativa.
- **Onde aparece.** Governança e compliance em deployments com LLMs/agentes.

---

## O

### OAuth 2.0 Token Exchange (RFC 8693)

- **O que é.** Padrão IETF para troca de tokens; viabiliza fluxos on-behalf-of e impersonation controlada.
- **Onde aparece.** Delegated authorization para agentes que atuam em nome de usuário.

### OPA / Rego

- **O que é.** Open Policy Agent + linguagem Rego para policy-as-code.
- **Onde aparece.** Autorização de tools de agente, microsserviços, Kubernetes.

### Observabilidade

- **O que é.** Capacidade de inferir o estado interno de um sistema a partir de seus outputs (logs, métricas, traces).
- **Em IA.** Inclui tracing semântico, métricas de qualidade, custo e segurança.

### OpenTelemetry GenAI

- **O que é.** Convenções semânticas do OpenTelemetry para tracing de LLMs e agentes.

### Overfitting

- **O que é.** Modelo memoriza ruído do treino; baixo erro em treino, alto em teste.

### OWASP LLM Top 10

- **O que é.** Lista mantida pela OWASP com os principais riscos para aplicações com LLMs (prompt injection, insecure output handling, supply chain, excessive agency etc.).

---

## P

### Planner-executor (padrão arquitetural)

- **O que é.** Agente que primeiro planeja etapas e depois executa com tools, com pontos de aprovação humana.
- **Onde aparece.** Tarefas multi-etapa auditáveis em enterprise.
- **Relação.** Variante de workflow-first; distinto de multi-agent livre.

### Population Stability Index (PSI)

- **O que é.** Métrica de mudança de distribuição entre baseline e produção; comum em monitoramento de drift.
- **Onde aparece.** Data drift, validação de features.

### Post-Training Quantization (PTQ)

- **O que é.** Quantização aplicada após o treino (GPTQ, AWQ, SmoothQuant).
- **Onde aparece.** Serving com INT8/INT4.
- **Relação.** Alternativa a QAT.

### PagedAttention

- **O que é.** Algoritmo de gestão de KV cache em blocos paginados; evita fragmentação e habilita batches maiores.
- **Onde aparece.** vLLM (origem); inspirou abordagens similares em outros engines.
- **Referência.** Kwon et al., SOSP 2023 (<https://arxiv.org/abs/2309.06180>).

### Point-in-time correctness

- **O que é.** Em feature stores, garantir que as features usadas em treino refletem o estado do mundo no momento do evento, não no momento da query.
- **Referência operacional.** Feast - point-in-time joins (<https://docs.feast.dev/getting-started/concepts/point-in-time-joins>).

### Policy-as-code

- **O que é.** Políticas codificadas, testáveis e versionadas (OPA/Rego, Cedar, etc.).
- **Importante.** Políticas críticas **devem** estar em código, não em prompts.

### Prompt caching

- **O que é.** Cache de partes estáveis do prompt para reduzir custo e latência.
- **Cuidado.** Caching mal desenhado pode mascarar mudanças de política ou versão.

### Prompt engineering

- **O que é.** Formulação de instruções para orientar o modelo.
- **Relação.** Subconjunto de context engineering.

### Prompt injection

- **O que é.** Entrada (direta ou indireta) que tenta alterar o comportamento do modelo.
- **Mitigação.** Delimitação, allowlists, policy-as-code, validação. Não há defesa completa.

### PTQ

- Ver **Post-Training Quantization (PTQ)**.

### QAT (Quantization-Aware Training)

- **O que é.** Treino que simula quantização durante o forward/backward para melhor qualidade que PTQ puro.
- **Trade-off.** Maior custo de engenharia que PTQ.

### Prefill / Decode

- **O que são.** As duas fases da inferência de LLM.
  - **Prefill** - processa prompt em paralelo; latência dominante do TTFT. Limitada por compute.
  - **Decode** - gera tokens um a um; latência dominante do TPOT. Limitada por memory bandwidth.

### Protected Resource Metadata (RFC 9728)

- **O que é.** Documento de metadados publicado por um *resource server* OAuth 2.0 em URL conhecida, que informa ao cliente, entre outros campos, quais *authorization servers* emitem tokens válidos para aquele recurso e quais escopos ele aceita.
- **Onde aparece.** Autorização de servidores MCP remotos: desde a revisão 2025-06-18 o servidor MCP é classificado como resource server e **deve** publicar RFC 9728, e o cliente **deve** enviar *resource indicators* (RFC 8707) para que o token seja emitido para aquele servidor específico.
- **Riscos.** Sem validação de audience, um token emitido para um serviço pode ser reaproveitado em outro (*token passthrough*, proibido pela spec); descoberta de metadados é vetor de SSRF se o cliente seguir URLs sem restrição.
- **Relação.** Base do fluxo cliente → resource server → authorization server descrito no Cap. 4.8; ver também Cap. 3.5.

### Provenance

- **O que é.** Origem verificável de um artefato (dataset, modelo, documento, preferência de memória).

---

## R

### Reciprocal Rank Fusion (RRF)

- **O que é.** Método de fusão de rankings (ex.: BM25 + vetorial) sem calibrar scores diretamente.
- **Onde aparece.** Hybrid search em RAG enterprise.
- **Referência.** Cormack, Clarke & Buettcher (SIGIR 2009).

### RAG (Retrieval-Augmented Generation)

- **O que é.** Geração de respostas apoiada em recuperação de documentos externos.
- **Limites.** **Não elimina** alucinação; reduz risco *quando* a recuperação é boa.

### RBAC (Role-Based Access Control)

- **O que é.** Autorização baseada em papéis.

### ReBAC (Relationship-Based Access Control)

- **O que é.** Autorização baseada em relações entre entidades.
- **Onde aparece.** Sistemas com grafo de permissões (SpiceDB).

### Reranking

- **O que é.** Reordenação dos resultados recuperados com modelo ou heurística.

### Risco residual

- **O que é.** Risco que permanece após aplicar todos os controles.
- **Importante.** Deve ser explicitamente aceito ou transferido.

### Runbook

- **O que é.** Procedimento operacional para incidentes e rotinas.

---

## S

### SentencePiece

- **O que é.** Tokenizador sub-palavra independente de idioma; base de BBPE em vários LLMs.
- **Relação.** Alternativa/complemento a BPE.
- **Referência.** Kudo & Richardson (2018).

### SHAP (SHapley Additive exPlanations)

- **O que é.** Valores de contribuição por feature baseados em teoria dos jogos (aproximados).
- **Limites.** Explicação aproximada; custo computacional em modelos grandes.

### STRIDE

- **O que é.** Modelo de threat modeling (Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege).
- **Onde aparece.** Revisão de arquitetura de sistemas de IA (adaptado no Cap. 4.2).

### Sandbox

- **O que é.** Ambiente isolado para execução de código gerado/executado por agente.
- **Componentes.** Filesystem efêmero, rede bloqueada, secrets mínimos, limites de recurso.

### SBOM (Software Bill of Materials)

- **O que é.** Inventário de dependências de um artefato de software.
- **Formatos.** SPDX, CycloneDX.

### Semantic cache

- **O que é.** Cache baseado em similaridade semântica (não em hash exato).
- **Risco.** Resposta stale.

### Shadow deploy

- **O que é.** Nova versão roda paralelamente à atual, sem afetar usuários.

### SLSA

- **O que é.** Supply-chain Levels for Software Artifacts. Framework de níveis (1 a 4) de segurança de build e provenance.
- **Versão atual.** v1.x. Referência: <https://slsa.dev/spec/v1.2/>.

### SmoothQuant

- **O que é.** Método de quantização que redistribui dificuldade entre pesos e ativações via reescala, permitindo W8A8.
- **Referência.** Xiao et al., ICML 2023 (<https://arxiv.org/abs/2211.10438>).

### Speculative decoding

- **O que é.** Técnica de aceleração em que um draft model pequeno propõe tokens e o modelo grande verifica em paralelo.
- **Onde aparece.** vLLM, TensorRT-LLM, Medusa, Lookahead Decoding.
- **Referência.** Leviathan et al., ICML 2023 (<https://arxiv.org/abs/2211.17192>).

### SPDX

- **O que é.** Formato de SBOM mantido pela Linux Foundation; ISO/IEC 5962:2021.
- **Referência.** <https://spdx.dev/>.

### Structured outputs

- **O que é.** Saída do modelo aderente a um schema (JSON, Pydantic).
- **Importante.** Garante forma, **não** garante conteúdo correto.

### Supply chain risk

- **O que é.** Risco de comprometimento via dependências, MCP servers, modelos ou datasets.

---

## T

### Tenant isolation

- **O que é.** Garantia de que dados, memória e contexto de um tenant não vazam para outro.
- **Importante.** Um dos piores incidentes possíveis em RAG é cross-tenant leakage.

### Token

- **O que é.** Unidade básica de processamento de um LLM (sub-palavra).

### Token budget

- **O que é.** Orçamento de tokens permitido por etapa, tarefa ou tenant.

### Tool registry

- **O que é.** Catálogo versionado de tools, com schemas, owners, permissões e status.

### Tool use

- **O que é.** Capacidade do agente de usar sistemas externos para obter dados ou executar ações.

### Tracing

- **O que é.** Rastreamento estruturado da execução, com spans e atributos semânticos.

### TTFT (Time To First Token)

- **O que é.** Latência percebida até o primeiro token gerado; dominada pelo prefill.
- **Onde aparece.** SLA de streaming em chat e agentes.

### TPOT (Time Per Output Token)

- **O que é.** Tempo entre tokens gerados; dominado pelo decode e por memory bandwidth.
- **Onde aparece.** SLA de respostas longas; sensação de "fluidez".

---

## U

### Underfitting

- **O que é.** Modelo não captura padrão; erro alto em treino e teste.

---

## V

### Variance

- **O que é.** Sensibilidade do modelo a pequenas mudanças no dataset.
- **Relação.** Complementar a bias; alta variance leva a overfitting.

### Vector database

- **O que é.** Banco especializado em busca por similaridade vetorial.
- **Limites.** Similaridade ≠ relevância; ruim com IDs, datas, números exatos.

### Vector poisoning

- **O que é.** Inserção de documento malicioso no índice RAG.
- **Mitigação.** Validação de ingestão, provenance, isolamento, reindexação.

### vLLM

- **O que é.** Engine open-source de serving de LLM. Introduziu PagedAttention e continuous batching de forma popular.
- **Onde aparece.** Self-hosting enterprise e prototipagem séria.
- **Referência.** <https://docs.vllm.ai/en/latest/>.

---

## W

### Workflow-first agent

- **O que é.** Padrão em que um workflow determinístico controla o processo e o LLM entra em pontos específicos.
- **Importante.** Costuma ser mais defensável em produção corporativa do que agentes autônomos livres.

---

## Z

### ZeRO (Zero Redundancy Optimizer)

- **O que é.** Família de técnicas (DeepSpeed) que particiona estados do otimizador, gradientes e parâmetros entre GPUs.
- **Onde aparece.** Treinamento/fine-tuning de modelos grandes.
- **Relação.** Equivalente conceitual ao FSDP (estágio 3).

### Zero trust (aplicado a IA)

- **O que é.** Postura de não confiar em nenhum componente por padrão -inputs, documentos recuperados, tool outputs e memória são tratados como potencialmente hostis.

---

> 🧾 **Sugestões de novas entradas?** Abra uma issue com o título `glossary: adicionar termo X` e siga o formato deste arquivo.
