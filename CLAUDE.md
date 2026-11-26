# Force UI — Design System PM (v0.2, EM VALIDAÇÃO)
- NÃO usar em projetos existentes (AIA, COFIN, SAT, DEX, SIDEC, Intranet, Escala): PBIs desses seguem a tela base do próprio projeto.
- Só usar em projeto novo quando o usuário disser explicitamente.
Arquivo: https://www.figma.com/design/hBuvSBIAFvcgBiq0aA0jfu/Reposit%C3%B3rio · Pastas: logo/, angular/, flutter/
- Web = Angular Material (Angular 22, M3); Mobile = Flutter (Material 3, página "Mobile (Flutter)").
- Claro: Slate + Marinho (primária #1D2833, interação #316BBB). Escuro: Grafite (canvas #282D31, surface #33393E). Inter; raio md 6 / lg 8.
- Ícones: Material Symbols Outlined (248 componentes "Ícone/nome" na página Ícones). Cor de ícone: gravar a cor resolvida junto com a variável (senão aparece preto).
- Variables: Primitivos (ocultos), Cores (Claro/Escuro: bg/, text/, border/, icon/), Espaçamento (spacing/, radius/). Estilos de texto e Sombra/*, Foco/anel.
- Páginas: Capa, Guia de uso, Fundamentos, Ícones, Button, Formulários, Feedback, Overlay, Dados, Navegação, Mobile (Flutter), Padrões de tela.
- Padrões web: Pesquisa com filtros + resultados (21:694), Cadastro em etapas (26:886). Mobile: Lista com pesquisa (43:106), Formulário (43:294).

## Ao editar no Figma
- Inspecionar antes de criar; usar sempre as Variables da coleção Cores (nunca hex solto) e os estilos de texto Inter.
- Componentes com descrição do equivalente Angular Material e Flutter.
- Mudou token/cor? Atualizar também angular/force-ui-theme.scss e flutter/force_ui_theme.dart.
- Responder em português, curto.
