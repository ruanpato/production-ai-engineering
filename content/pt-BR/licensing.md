---
title: "Licenciamento"
lang: pt-BR
order: 100
status: stable
tags: [referencia]
---

## 📜 Licenciamento

Este documento descreve a decisão de licenciamento do projeto, sua justificativa e os trade-offs considerados. O modelo é simples: o projeto separa **licença de conteúdo** e **licença de código**.

> ⚠️ **Aviso.** Este documento **não é** aconselhamento jurídico nem interpretação jurídica definitiva. Para usos sensíveis (jurídicos, contratuais, comerciais relevantes), consulte assessoria jurídica especializada em propriedade intelectual e licenciamento open-source.

---

## 🧭 1. Decisão

O repositório contém dois tipos de artefato com perfis diferentes, e cada um recebe a licença mais adequada ao seu uso:

| Artefato | Tipo | Licença | Arquivo |
|---|---|---|---|
| Texto do livro (`content/**`, `BOOK.md`, `README.md`, diagramas, tabelas, materiais editoriais) | Conteúdo editorial | **Creative Commons Attribution 4.0 International (CC BY 4.0)** | [`LICENSE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE) |
| Código (scripts, notebooks, exemplos executáveis em `examples/**`) | Software | **MIT License** | [`LICENSE-CODE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE-CODE) |

A separação é comum em projetos editoriais técnicos com código de apoio. As duas licenças coexistem na raiz do repositório:

- [`LICENSE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE) cobre **conteúdo textual**.
- [`LICENSE-CODE`](https://github.com/ruanpato/production-ai-engineering/blob/main/LICENSE-CODE) cobre **código-fonte**.

Na dúvida sobre qual licença se aplica a um arquivo específico: textos e documentação seguem `LICENSE`; código segue `LICENSE-CODE`.

---

## 📖 2. Por que CC BY 4.0 para o texto?

**CC BY 4.0** é uma licença aberta padrão da Creative Commons que permite:

- compartilhamento (cópia e redistribuição em qualquer meio ou formato);
- adaptação (remix, transformação, criação de obras derivadas);
- uso, inclusive comercial.

A única exigência relevante é **atribuição**: dar crédito apropriado, indicar se houve mudanças e fornecer um link para a licença.

Critérios que motivaram a escolha:

- **Maximiza alcance e impacto** - o objetivo do livro é circular como material técnico público.
- **Compatível com inclusão em treinamentos e materiais corporativos**, desde que mantida a atribuição.
- **Compatível com adaptações e traduções**.
- **Sem cláusula viral (share-alike)** - não restringe a licença de obras que combinam este conteúdo com outros materiais.

Trade-off aceito: redistribuição comercial é permitida, mas exige atribuição.

Outras opções consideradas e descartadas:

| Licença | Por que não foi escolhida |
|---|---|
| CC BY-SA 4.0 | Exige share-alike, o que pode dificultar mistura com outros materiais. |
| CC BY-NC 4.0 | Bloqueia uso corporativo, que é parte do público-alvo. |
| CC BY-NC-SA 4.0 | Combina ambas as restrições acima. |
| CC0 / domínio público | Renuncia direitos sem exigir atribuição. |
| All rights reserved | Hostil a colaboração e reuso. |

---

## 💻 3. Por que MIT para o código?

**MIT License** é uma licença permissiva, curta e amplamente adotada em projetos open-source. Permite uso, cópia, modificação, fusão, publicação, distribuição, sublicenciamento e venda do software, exigindo apenas que o aviso de copyright e a permissão sejam preservados nas cópias.

Critérios que motivaram a escolha:

- **Simples** - texto curto, fácil de ler e auditar.
- **Permissiva** - não restringe integração com outros projetos, inclusive comerciais ou com licenças diferentes.
- **Padrão de fato** em projetos educacionais e em exemplos técnicos.
- **Familiar** para a maioria das equipes de engenharia.

Trade-off conhecido: a MIT não cobre patentes explicitamente. Se um exemplo futuro envolver técnicas patenteáveis, vale considerar Apache 2.0 especificamente para esse exemplo.

---

## 🧱 4. Por que separar licença de texto e de código?

Texto e código têm naturezas diferentes:

- **Texto** circula em formato editorial: leituras, citações, traduções, adaptações, slides. Licenças Creative Commons foram desenhadas para esse fluxo.
- **Código** circula como software: é compilado, importado, modificado e redistribuído como parte de outros sistemas. Licenças como MIT são desenhadas para esse fluxo.

Aplicar CC BY a código gera ambiguidade (CC, inclusive, **recomenda não usar** suas licenças para software). Aplicar MIT a um livro inteiro também não encaixa bem. Manter as duas licenças coexistindo na raiz, com escopo claro em cada arquivo, é a opção mais limpa.

---

## 📝 5. Atribuição

Sugestão de bloco de atribuição padrão para reuso do texto:

```markdown
Este conteúdo é uma adaptação de "Engenharia de IA em Produção"
(autor: Ruan Pato), publicado sob CC BY 4.0.
Repositório original: https://github.com/ruanpato/production-ai-engineering
```

Para o código:

```text
Este arquivo é parte do projeto "Engenharia de IA em Produção", licenciado
sob MIT License. Copyright (c) 2026 Ruan Pato.
```

---

## 🪧 6. Cabeçalhos de arquivo (opcional)

Os arquivos `LICENSE` e `LICENSE-CODE` na raiz já são suficientes. Para deixar a licença explícita em cada arquivo individual, é possível adicionar cabeçalhos SPDX:

Para arquivos Markdown:

```markdown
<!--
SPDX-License-Identifier: CC-BY-4.0
Copyright (c) 2026 Ruan Pato
-->
```

Para arquivos de código:

```python
# SPDX-License-Identifier: MIT
# Copyright (c) 2026 Ruan Pato
```

---

## 🌐 7. Distribuição de PDF gerado

Um PDF gerado a partir do `BOOK.md` herda a licença CC BY 4.0 do conteúdo. Distribuir o PDF é permitido desde que a atribuição seja mantida.

---

## 🤖 8. Uso em treinamento de modelos

CC BY 4.0 não contém cláusulas específicas sobre uso de conteúdo em treinamento de modelos. Esse é um tema jurídico em evolução, com diferenças significativas entre jurisdições e sem jurisprudência consolidada.

A postura editorial deste projeto é **não adicionar restrições** anti-AI ou no-AI-training. Razões:

- O objetivo do projeto é difusão de conhecimento técnico.
- A força legal dessas cláusulas é contestada e varia por jurisdição.
- Cláusulas adicionais podem deixar de ser CC BY 4.0 padrão, o que prejudica reuso por quem já entende a licença.

Quem quiser tomar decisões diferentes para um fork ou adaptação pode fazê-lo, respeitando as condições da CC BY 4.0.

---

## 📚 Referências

- Creative Commons - *Choose a License*: <https://creativecommons.org/share-your-work/cclicenses/>
- CC BY 4.0 - texto integral (legal code): <https://creativecommons.org/licenses/by/4.0/legalcode.txt>
- CC BY 4.0 - versão *deed* legível: <https://creativecommons.org/licenses/by/4.0/>
- MIT License - referência OSI: <https://opensource.org/license/mit>
- SPDX License List: <https://spdx.org/licenses/>

> ⚠️ **Aviso editorial.** Para uso jurídico sensível - contratos, disputas, distribuição comercial relevante - consulte assessoria jurídica. Este documento descreve a intenção editorial do projeto, não constitui parecer jurídico.
