---
title: "Labs"
lang: pt-BR
order: 101
status: draft
tags: [exemplos]
---

# 🧪 Exemplos Práticos

Este diretório vai conter os exemplos práticos referenciados pelo livro (ver [Início](../index.md)). A matriz completa, com status e prioridade, é mantida internamente pelo autor.

> ⚠️ **Estado atual.** Nenhum exemplo está implementado nesta versão do projeto. Todos aparecem como **planejados**. Esta pasta existe hoje como **espaço reservado** e como referência da estrutura padrão. O repositório ainda **não deve ser tratado como coleção executável**; a v0.1 prioriza estrutura, conteúdo e mapa técnico.
>
> 🎯 **Princípio.** Cada exemplo, quando for implementado, deve ser **"easy to run and see by yourself"**: clonar, rodar um único comando, ver funcionando localmente em minutos, sem dependência obrigatória de credenciais pagas.

---

## 🧭 Estrutura padrão de cada exemplo

Cada exemplo vive em uma pasta com código identificador (`EX-XXX-NN-nome-curto/`) e tem o seguinte conteúdo mínimo:

```text
examples/EX-XXX-NN-nome-curto/
├── README.md            # objetivo, pré-requisitos, comandos
├── pyproject.toml       # ou requirements.txt
├── docker-compose.yml   # quando aplicável
├── Makefile             # comandos curtos (run, test, clean)
├── src/                 # código-fonte
└── tests/               # testes mínimos
```

---

## 🚀 Como rodar

A maioria dos exemplos segue um destes padrões:

```bash
# Padrão 1 - Python puro
cd examples/EX-LLM-01-rag-local
make run

# Padrão 2 - Docker Compose
cd examples/EX-AGT-03-mcp-server-minimo
docker compose up

# Padrão 3 - Pytest (eval/test harness)
cd examples/EX-EVAL-01-pytest-golden
make test
```

---

## 🧰 Stack preferida

| Categoria | Ferramenta |
|---|---|
| Linguagem | Python 3.11+ |
| Framework web | FastAPI |
| Containerização | Docker + Docker Compose |
| ML clássico | scikit-learn, pandas, pandera |
| Experimentos | MLflow (local) |
| LLM local | Ollama |
| Vector DB local | Qdrant ou Chroma |
| Search híbrido | OpenSearch local (em alguns exemplos) |
| Agent frameworks | LangGraph, OpenAI Agents SDK (com fallback local) |
| Tracing | OpenTelemetry + Jaeger |
| Policy-as-code | OPA + Rego |
| Workflow engine | FSM simples em Python para exemplos curtos; Temporal apenas onde durabilidade/long-running é o ponto demonstrado |
| Testes | pytest, hypothesis |
| Eval | Ragas, pytest-snapshot |

> ⚠️ Quando um exemplo exige modelo na nuvem (ex.: comparação direta com GPT/Claude), há **fallback local** documentado no README do exemplo.

---

## 📊 Status atual

A primeira fase do projeto entrega **estrutura editorial** - os exemplos ainda **não** foram implementados e fazem parte do roadmap, não da entrega atual. Eles estão **planejados** na matriz de exemplos mantida internamente pelo autor; este índice registra os grupos e a ordem sugerida.

A primeira leva sugerida para implementação:

1. **EX-LLM-01** - RAG local básico (Ollama + Qdrant).
2. **EX-ML-04** - Classificador via FastAPI.
3. **EX-AGT-01** - Agente com function calling.
4. **EX-AGT-02** - Tool registry com versionamento.
5. **EX-EVAL-01** - Eval harness com pytest.
6. **EX-AGT-07** - Tracing com OpenTelemetry.
7. **EX-SEC-01** / **EX-SEC-02** - Prompt injection (direta e indireta).
8. **EX-HYB-01** - ML + LLM + agente roteados.
9. **EX-COST-01** - Budget enforcer.
10. **EX-LIFE-01** - Depreciação de tool.

Cada exemplo, quando implementado, deve atualizar a matriz com o status correto (`planejado` -> `parcial` -> `implementado`).

---

## 🧾 Contribuindo com exemplos

Antes de submeter um novo exemplo:

- Verifique se ele está previsto nos grupos deste índice; se não estiver, abra uma issue propondo o exemplo.
- Siga a estrutura padrão acima.
- Mantenha as restrições: rodar em ≤ 10 minutos, sem credenciais pagas obrigatórias, com testes mínimos.

Detalhes completos em [`CONTRIBUTING.md`](https://github.com/ruanpato/production-ai-engineering/blob/main/CONTRIBUTING.md).

---

## ⚠️ Disclaimer

Os exemplos têm fins **didáticos**. Eles **não** são código de produção:

- Sem hardening completo de segurança.
- Sem suporte oficial.
- Sem garantia de funcionamento em versões futuras de dependências.

Para usar trechos em produção, revise, adicione testes, hardening, segredos adequados, observabilidade e tratamento de erros conforme as boas práticas descritas neste handbook.

---

## 📜 Licença

Os exemplos práticos ainda são **planejados** - esta pasta hoje serve apenas como espaço reservado e como referência da estrutura padrão.

Quando os exemplos forem implementados, o código aqui em `examples/` será licenciado sob **MIT License** via [`../LICENSE-CODE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE-CODE). O conteúdo textual do livro e da documentação continua sob CC BY 4.0 via [`../LICENSE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE). Detalhes em [`licensing.md`](../licensing.md).
