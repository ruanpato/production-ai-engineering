# 🤝 Como Contribuir

Obrigado pelo interesse em contribuir com **Engenharia de IA em Produção**, de Ruan Pato. Este guia descreve como participar de forma efetiva e como manter a qualidade técnica do conteúdo.

> 🧭 **Tese editorial.** Este projeto **não é** um README de framework, nem um repositório de marketing técnico. É um livro técnico, em construção, que privilegia honestidade sobre limitações, clareza sobre hype e padrões defensáveis sobre demos.
>
> 📌 **Estado atual.** O repositório está em **rascunho técnico aberto** pré-`v0.1`. A parte editorial (`content/`) é a mais madura; os exemplos práticos em `content/pt-BR/labs/` ainda não foram implementados e estão **planejados**.

---

## 🗂️ Sumário

- [🤝 Como Contribuir](#-como-contribuir)
  - [🗂️ Sumário](#️-sumário)
  - [🧰 Tipos de contribuição bem-vindos](#-tipos-de-contribuição-bem-vindos)
  - [🚫 Contribuições que **não** serão aceitas](#-contribuições-que-não-serão-aceitas)
  - [🧭 Como começar](#-como-começar)
    - [1. Faça um fork e clone](#1-faça-um-fork-e-clone)
    - [2. Leia o material relevante](#2-leia-o-material-relevante)
    - [3. Crie um branch](#3-crie-um-branch)
    - [4. Faça commits pequenos e descritivos](#4-faça-commits-pequenos-e-descritivos)
  - [✍️ Padrões editoriais](#️-padrões-editoriais)
    - [🗣️ Tom](#️-tom)
    - [😀 Emojis](#-emojis)
    - [📝 Estrutura de capítulo](#-estrutura-de-capítulo)
    - [🔗 Referências](#-referências)
    - [✂️ Citações de código](#️-citações-de-código)
    - [🔬 Validação técnica](#-validação-técnica)
  - [🧪 Padrões para exemplos práticos (`examples/`)](#-padrões-para-exemplos-práticos-examples)
    - [📂 Estrutura mínima](#-estrutura-mínima)
    - [✅ Critérios de aceitação](#-critérios-de-aceitação)
  - [🐛 Reportando issues](#-reportando-issues)
  - [🔀 Pull Requests](#-pull-requests)
    - [📋 Checklist do PR](#-checklist-do-pr)
    - [🧪 Revisão](#-revisão)
  - [🧾 Sobre licenciamento das contribuições](#-sobre-licenciamento-das-contribuições)
  - [🚦 Código de conduta](#-código-de-conduta)
  - [🛠️ Manutenção do repositório](#️-manutenção-do-repositório)
  - [🙏 Obrigado](#-obrigado)

---

## 🧰 Tipos de contribuição bem-vindos

| Tipo | O que esperamos |
|---|---|
| 📝 **Correções editoriais** | Erros de digitação, gramática, clareza |
| 🔍 **Correções técnicas** | Conceitos errados, referências quebradas, exemplos incorretos |
| 📚 **Novas referências** | Papers, especificações, docs oficiais |
| 🧪 **Implementação de exemplos** | Códigos rodáveis localmente (ver `docs/examples-map.md`) |
| 🆕 **Novos capítulos ou seções** | Discutir primeiro em issue antes de abrir PR grande |
| 🌍 **Traduções** | Discutir primeiro em issue |
| 🧠 **Issues técnicas** | Reportar erro, propor melhoria, sugerir referência |

---

## 🚫 Contribuições que **não** serão aceitas

- Conteúdo de marketing disfarçado de neutralidade técnica.
- Posts que promovem um produto específico sem comparativo crítico.
- Linkar para conteúdo promocional como fonte primária.
- Afirmações sem base verificável.
- Promessas de "garantia" de segurança ou correção em sistemas de IA.
- Conteúdo escrito sem revisão técnica básica.
- Mudanças que diluem o tom crítico ou removem ressalvas sobre limitações.

---

## 🧭 Como começar

### 1. Faça um fork e clone

```bash
git clone https://github.com/<seu-usuario>/<repo>.git
cd <repo>
git remote add upstream https://github.com/<owner>/<repo>.git
```

### 2. Leia o material relevante

Antes de propor mudança, leia ao menos:

- O capítulo afetado em `BOOK.md`.
- [`docs/gap-analysis.md`](./gap-analysis.md) para entender o plano editorial.
- O glossário em [`docs/glossary.md`](./glossary.md) para garantir consistência terminológica.

### 3. Crie um branch

```bash
git checkout -b fix/typo-cap-3.5
# ou
git checkout -b feat/exemplo-ex-llm-01
# ou
git checkout -b docs/atualizar-referencia-mcp
```

Prefixos sugeridos:

- `fix/` - correções (texto, código, referências).
- `feat/` - novos capítulos, seções ou exemplos.
- `docs/` - mudanças em arquivos de `docs/`.
- `chore/` - manutenção (CI, configuração).

### 4. Faça commits pequenos e descritivos

```text
fix: corrigir referência quebrada em cap. 4.3
feat: adicionar exemplo EX-LLM-01 (RAG local com Ollama)
docs: atualizar glossário com termo "agent identity"
```

---

## ✍️ Padrões editoriais

### 🗣️ Tom

- Português brasileiro.
- Técnico, claro, crítico, sem hype.
- Direto e honesto sobre limitações.
- Sem propaganda de fornecedor.
- Sem expressões como "revolucionário", "game-changer", "mágico".

### 😀 Emojis

- Todo header tem pelo menos um emoji.
- No corpo do texto, use com parcimônia.
- Não substitua palavras por emojis.

### 📝 Estrutura de capítulo

Capítulos novos seguem (quando aplicável):

```markdown
## 🧩 Nome do capítulo

### 🎯 Objetivo do capítulo
### 🧠 Conceito principal
### 🏗️ Como isso aparece em produção
### ⚖️ Trade-offs
### 🚨 Modos de falha
### 🛡️ Controles e mitigações
### 🔭 Como observar e medir
### 🧪 Como testar
### 🧰 Exemplo prático relacionado
### 📌 Checklist
### 📚 Referências
```

Nem todos os blocos são obrigatórios; use o que faz sentido.

### 🔗 Referências

- Não invente links, papers ou autores.
- Prefira fontes técnicas verificáveis (papers, docs oficiais, especificações).
- Quando não puder verificar uma fonte, **não a use** como referência principal. Pode aparecer como leitura complementar **apenas** se identificada como tal.
- Tópicos emergentes (A2A, MCP Authorization, FinOps for AI, etc.) devem ter a maturidade declarada explicitamente, sem afirmar consenso onde ainda não há.
- Documentação de vendor é aceita se for tecnicamente relevante; sinalize se houver lock-in importante.
- Quando uma técnica não garantir comportamento, diga **explicitamente**.

### ✂️ Citações de código

Use o padrão definido no projeto:

- **Código novo** - blocos Markdown com tag de linguagem.
- **Citação de arquivo existente** - formato `startLine:endLine:filepath`.

### 🔬 Validação técnica

Para mudanças com afirmação técnica forte, inclua na descrição do PR:

- Referência primária (paper, doc oficial, código).
- Justificativa da mudança.
- Lista de capítulos afetados.

---

## 🧪 Padrões para exemplos práticos (`examples/`)

Quando adicionar um exemplo (`EX-XXX-NN`):

### 📂 Estrutura mínima

```text
examples/EX-XXX-NN-nome-curto/
├── README.md
├── pyproject.toml (ou requirements.txt)
├── docker-compose.yml (se aplicável)
├── Makefile (ou justfile)
├── src/
│   └── ... código ...
└── tests/
    └── ... testes ...
```

### ✅ Critérios de aceitação

- [ ] `README.md` com objetivo, requisitos, comandos de execução.
- [ ] Comando único para rodar (`make run` ou `docker compose up`).
- [ ] Testes mínimos.
- [ ] Sem dependência obrigatória de credenciais pagas (ou alternativa local documentada).
- [ ] Tempo de "primeira execução com sucesso" ≤ 10 minutos.
- [ ] Stack alinhada com `docs/examples-map.md` (Python, FastAPI, Docker, Ollama, Qdrant/Chroma, OpenTelemetry).
- [ ] Sem dados reais ou PII.
- [ ] Mapeado em `docs/examples-map.md` com status atualizado.

---

## 🐛 Reportando issues

Abra uma issue quando:

- Encontrar erro técnico ou editorial.
- Quiser propor novo capítulo ou seção (discuta antes de implementar).
- Encontrar referência quebrada.
- Tiver dúvida sobre interpretação.

Template recomendado:

```markdown
**Tipo** (escolha): fix / feat / docs / question

**Capítulo ou arquivo afetado.**

**Descrição.**

**Sugestão (se aplicável).**

**Referências (se aplicável).**
```

---

## 🔀 Pull Requests

### 📋 Checklist do PR

Antes de marcar como pronto:

- [ ] Branch baseado em `main` atualizado.
- [ ] Commits descritivos.
- [ ] Texto em português brasileiro.
- [ ] Headers com emoji.
- [ ] Sem promessas de "garantia" em IA.
- [ ] Limitações ditas explicitamente.
- [ ] Referências verificáveis.
- [ ] Sem copy-paste excessivo dos arquivos base.
- [ ] Glossário atualizado, se introduziu termo novo.
- [ ] `docs/examples-map.md` atualizado, se mexeu em exemplos.
- [ ] `docs/references.md` atualizado, se adicionou referências.

### 🧪 Revisão

PRs são revisados pelo autor do projeto. Mudanças grandes podem exigir discussão prévia em issue. Sugestões de melhoria são bem-vindas - mas mudanças que diluem o tom crítico ou removem ressalvas sobre limitações **serão recusadas** com explicação.

---

## 🧾 Sobre licenciamento das contribuições

Ao contribuir, você concorda que sua contribuição será licenciada sob os mesmos termos do projeto:

- Texto (conteúdo editorial, `BOOK.md`, `README.md`, `docs/`): **CC BY 4.0**
  - ver [`../LICENSE`](../LICENSE).
- Código (scripts, notebooks, exemplos em `examples/`): **MIT** - ver [`../LICENSE-CODE`](../LICENSE-CODE).

Justificativa e detalhes em [`docs/licensing.md`](./licensing.md).

Não usamos CLA formal. Usamos o modelo **DCO (Developer Certificate of Origin)** implícito por sign-off em commits (ainda não obrigatório, mas recomendado):

```bash
git commit -s -m "fix: corrigir referência em cap. 4.3"
```

---

## 🚦 Código de conduta

- Trate todas as pessoas com respeito.
- Critique ideias, não pessoas.
- Em discussões técnicas, traga argumento e referência.
- Use linguagem inclusiva e profissional.

Comportamentos não aceitos: assédio, discriminação, ataques pessoais, spam, promoção descarada de produto.

---

## 🛠️ Manutenção do repositório

- Mantenedor atual: **Ruan Pato** (autor do livro).
  - GitHub: <https://github.com/ruanpato>
  - LinkedIn: <https://www.linkedin.com/in/ruanpato/>
  - Site: <https://ruanpato.com>
- PRs ficam abertas até serem mergeadas, recusadas ou marcadas como obsoletas após 30 dias sem atividade.
- Issues sem resposta após 60 dias podem ser fechadas automaticamente, com reabertura permitida.

---

## 🙏 Obrigado

Toda contribuição séria - desde um typo até um capítulo novo - torna este material melhor para a comunidade. Bem-vindo(a) ao projeto.
