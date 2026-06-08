
## Objetivo

Construir uma landing page única (rota `/`) de alta conversão, dark mode sofisticado, focada em capturar leads qualificados (Nome, E-mail corporativo, WhatsApp) para serviços de implementação e otimização tecnológica B2B.

## Conteúdo (copy em PT-BR)

**1. Hero**
- Headline: "Tecnologia que escala seu negócio — sem travar sua operação."
- Subheadline: "Implementamos e otimizamos sua stack em semanas, não meses. Sem curva de aprendizado, sem interrupções, com previsibilidade de ponta a ponta."
- CTA primário: "Falar com um especialista" → rola para formulário
- Microcopy abaixo do CTA: "Resposta em até 1 dia útil • Sem compromisso"

**2. Cards de Benefícios (3 pilares)**
- Padronização de processos — "Fluxos replicáveis e auditáveis que eliminam retrabalho e dependência de pessoas-chave."
- Confiabilidade das aplicações — "Uptime monitorado, ambientes resilientes e zero surpresas em produção."
- Suporte humano especializado — "Atendimento direto com engenheiros sêniores. Sem bots, sem fila."

**3. Prova Social**
- Faixa com 5 logos placeholder (clientes/parceiros) em escala de cinza
- 2 depoimentos curtos:
  - "Reduzimos 40% do tempo gasto em tarefas operacionais no primeiro trimestre." — Fundador, SaaS B2B (30 funcionários)
  - "Finalmente paramos de apagar incêndio. Hoje cresço sem medo de quebrar a operação." — CEO, e-commerce (PME)

**4. FAQ (4 perguntas, accordion)**
- Quanto tempo leva a implementação?
- Vou precisar parar minha operação durante o processo?
- Como funciona o investimento?
- Minha equipe precisa ter conhecimento técnico?

**5. Captura + CTA Final**
- Título: "Pronto para uma operação previsível?"
- Subtítulo curto: "Conte seu cenário. Retornamos com um diagnóstico inicial."
- Formulário: Nome • E-mail corporativo • WhatsApp
- CTA: "Quero meu diagnóstico"
- Feedback de sucesso (substitui o form): "Recebemos seu contato. Um especialista responde em até 1 dia útil pelo e-mail e WhatsApp informados."

Footer minimalista (logo + copyright).

## Design

- Dark mode: fundo `#0A0F1C` (azul meia-noite), superfícies `#111827`, texto `#E5E7EB`, muted `#94A3B8`, bordas sutis `oklch` low-alpha.
- Accent único (Azul Elétrico `#3B82F6` → glow `#6366F1`) reservado exclusivamente para CTAs, foco de inputs e ícones essenciais dos cards.
- Tipografia: Geist Sans (ou Inter) para corpo; pesos 400/500/600/700. Tracking apertado nos headlines. Sem serifa.
- Espaçamento generoso, grid 12 col, max-width ~1120px, seções com `py-24/py-32`.
- Geometria limpa: cards com `rounded-xl`, borda 1px translúcida, sem sombras pesadas; um único gradient sutil radial no hero.
- Sem animações decorativas; apenas fade/translate sutil ao entrar viewport e estados de hover/focus precisos.

## Implementação técnica

- Substituir conteúdo de `src/routes/index.tsx` com a landing completa (componentizada inline ou em `src/components/landing/*`: Hero, Benefits, SocialProof, FAQ, LeadForm, Footer).
- Atualizar `head()` da rota com `<title>` < 60 chars e meta description < 160 chars, OG/Twitter tags relevantes; H1 único no Hero.
- Tokens semânticos em `src/styles.css`: redefinir `--background`, `--foreground`, `--card`, `--primary`, `--primary-foreground`, `--muted-foreground`, `--border`, `--ring` no `:root` para a paleta dark (sem depender da classe `.dark`). Adicionar `--accent-glow` e `--gradient-primary`.
- FAQ usando `src/components/ui/accordion.tsx`; form usando `Input`, `Label`, `Button` (variant default custom). Validação client-side simples (HTML5 + check de e-mail/WhatsApp); máscara leve no telefone.
- Submissão do formulário: por ora, handler local que mostra mensagem de sucesso (sem backend). Observação: caso o usuário queira persistência/disparo real de e-mail/WhatsApp, será necessário ativar Lovable Cloud em etapa posterior — fora do escopo deste plano.
- Logos de prova social: SVGs placeholder neutros (sem gerar imagens), com `aria-label`.
- Acessibilidade: contraste AA, foco visível com `--ring`, labels associados, `aria-expanded` no accordion (já vem do componente).

## Fora de escopo

- Backend / persistência de leads / integração e-mail/WhatsApp
- Rotas adicionais, blog, área logada
- Geração de imagens ou logos reais de clientes
