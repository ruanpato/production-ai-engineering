---
title: "Engenharia de IA em Produção"
lang: pt-BR
order: 0
status: stable
tags: [inicio]
---

# Engenharia de IA em Produção

> De modelos a agentes — sistemas de IA como software crítico.

## 🎯 Por que este livro existe

Existe muito material sobre Machine Learning, LLMs e Agentic AI. A maior parte foca em demos, frameworks da semana ou propaganda de fornecedor. Pouca coisa explica, com seriedade técnica, como esses sistemas são operados em ambientes corporativos: dados ruins, latência apertada, custos sob escrutínio, auditoria obrigatória, regulação real e usuários que não aceitam respostas inventadas.

O material reunido aqui reúne diversas notas pessoais sobre arquitetura, MLOps e operação de sistemas de IA - decisões, padrões, anti-padrões e cicatrizes - agora compiladas e reorganizadas em forma de livro/handbook público.

A tese é simples e atravessa o material inteiro:

> **Sistemas de IA em produção não são apenas modelos.** São sistemas sociotécnicos que precisam ser projetados, operados, observados, auditados e depreciados como **software crítico**.

Tudo o que vem a seguir é consequência dessa tese. Para evitar repetição, ela é estabelecida aqui e nas Partes 0 e 4, e depois referenciada de forma curta nos capítulos. Quando uma técnica não sustenta uma garantia, esse limite aparece **no próprio texto**.

## 👥 Para quem é este livro

- Arquitetos de IA, engenheiros de ML/LLM, engenheiros de dados, MLOps, LLMOps e AgentOps.
- Líderes técnicos que precisam decidir entre ML tradicional, LLMs, RAG, agentes, workflow determinístico ou combinações híbridas.
- Especialistas em segurança, governança e FinOps que precisam aplicar suas disciplinas a sistemas probabilísticos.

O livro assume conhecimento prévio em engenharia de software, APIs, cloud, dados e segurança. Ele **não** ensina Python, SQL ou conceitos básicos de computação.

## 🚫 Para quem este livro **não** é

- Para quem busca tutoriais "do zero ao deploy" em uma única ferramenta.
- Para quem quer um manual de prompt engineering "criativo".
- Para quem quer ranquear frameworks por hype.

## 🧾 O que este livro **não** promete

Esta obra é explícita sobre limitações. Ela **não** afirma que:

- LLMs são fontes de verdade.
- RAG elimina alucinação.
- Guardrails ou prompts garantem segurança.
- Metadata de tool impede uso indevido.
- Fine-tuning substitui base de conhecimento dinâmica.
- Multi-agent resolve problemas complexos automaticamente.
- IA pode ser declarada "100% segura".

Sempre que uma técnica não garantir um comportamento, este livro diz isso **explicitamente**.

## 📚 Como ler este material

Há três modos sugeridos de leitura, e nenhum deles é obrigatório:

1. **Linear.** Da Parte 0 à Parte 9, como um curso. Ideal para quem está construindo carreira na área.
2. **Por trilha.**
   - ML tradicional -> Partes 0, 1, 5 (observabilidade), 6 (custos), 7 (deployment).
   - LLM/RAG -> Partes 0, 2, 4, 5, 6.
   - Agentic AI -> Partes 0, 3, 4, 5, 7.
3. **Por consulta.** Capítulos têm formato padronizado (objetivo, conceito, produção, trade-offs, riscos, observação, teste, checklist), o que facilita pesquisa pontual sem perder contexto.

Há também um **fio condutor narrativo** - o estudo de caso **Hermes Logística** - apresentado na Parte 0 e revisitado em várias partes. Não é exemplo executável; é uma história plausível usada para conectar decisões.

## 🧰 Sobre os exemplos práticos

O livro **referencia** exemplos práticos por código (`EX-RAG-01`, `EX-AGT-02`, etc.); o índice dos exemplos fica em [labs/](labs/README.md) e a matriz completa é mantida internamente pelo autor.

> ⚠️ **Status honesto.** Nesta versão, **os exemplos práticos ainda não foram implementados**. Eles são **planejados**, com prioridade e stack declarada, e serão entregues em ciclos posteriores. O texto foi escrito para que essa ligação fique natural quando os códigos existirem; nada aqui depende de o leitor rodar um exemplo agora. A v0.1 prioriza estrutura, conteúdo e mapa técnico, não código rodável.

Quando os exemplos forem implementados, viverão em `examples/`, favorecendo stack open-source: Python 3.11+, FastAPI, scikit-learn, pytest, Ollama (modelos locais), Qdrant ou Chroma (vector DBs locais), OpenTelemetry + Jaeger (tracing), OPA/Rego (policy-as-code), Docker e Docker Compose. Quando um exemplo precisar de modelo na nuvem, terá alternativa local documentada.

## 👤 Sobre o autor

**Ruan Pato** trabalha com software e sistemas de IA em produção: arquitetura, MLOps/LLMOps/AgentOps, segurança, observabilidade e operação contínua. O fio condutor do trabalho dele é que IA enterprise é **software crítico** e que a maior parte do valor real aparece no sistema, não no modelo isolado.

Este material é resultado de notas pessoais reorganizadas em forma pública. Não é manifesto nem peça promocional; é o tipo de handbook que se demonstra útil para quem está começando a subir sistemas em produção ou quem quer revistar conceitos facilmente.

- GitHub: <https://github.com/ruanpato>
- LinkedIn: <https://www.linkedin.com/in/ruanpato/>
- Site pessoal: <https://ruanpato.com>

## 🤝 Como contribuir futuramente

Detalhes em [`CONTRIBUTING.md`](https://github.com/ruanpato/production-ai-engineering/blob/main/CONTRIBUTING.md). Em resumo: correções editoriais e técnicas são bem-vindas via issue ou PR; conteúdo de marketing disfarçado de neutralidade não é aceito; referências precisam ser fontes técnicas verificáveis (papers, docs oficiais, specs, RFCs, blogs de engenharia).

## 🗒️ Convenções e estado deste rascunho

- **Texto em português brasileiro.**
- **Emojis em headers e marcadores** fazem parte do estilo do projeto: são usados como identidade visual e navegação, não como decoração.
- **Tópicos emergentes** (A2A, MCP Authorization, FinOps for AI, parte do tool lifecycle) têm a **maturidade declarada** no próprio capítulo.
- **Profundidade desigual.** Algumas partes estão mais maduras que outras; trechos ainda em forma de outline serão expandidos em ciclos futuros. Capítulos curtos seguem o mesmo padrão editorial dos longos apenas quando isso ajuda a leitura por consulta.
- **Tese central evita repetição literal.** Ela aparece no Prefácio e na Parte 0, e os capítulos subsequentes usam referências curtas (ex.: "como discutido na Parte 0") em vez de reapresentá-la inteira.

---
