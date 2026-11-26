# Force UI — Design System PM (v0.5, EM VALIDAÇÃO)
- NUNCA editar arquivos de projetos antigos (AIA, RSO, SIOPM-V, COFIN, SAT, DEX, SIDEC, Intranet, Escala): só leitura, para referência. O Force UI vale para projetos futuros.
- NÃO usar em projetos existentes (AIA, RSO, SIOPM-V, COFIN, SAT, DEX, SIDEC, Intranet, Escala): PBIs desses seguem a tela base do próprio projeto.
- Só usar em projeto novo quando o usuário disser explicitamente.
Arquivo: https://www.figma.com/design/hBuvSBIAFvcgBiq0aA0jfu/Reposit%C3%B3rio · Pastas: logo/, angular/, flutter/
- Web = Angular Material (Angular 22, M3); Mobile = Flutter (Material 3, página "Mobile (Flutter)").
- Claro: Slate + Marinho (primária #1D2833, interação #316BBB). Escuro: Grafite (canvas #282D31, surface #33393E, primária #316BBB). Inter; raio md 6 / lg 8.
- Contraste WCAG AA verificado: texto ≥ 4.5:1, borda de campo/foco ≥ 3:1. Ao mudar cor, recalcular.
- Ícones: Material Symbols Outlined (248 componentes "Ícone/nome" na página Ícones). Cor de ícone: gravar a cor resolvida junto com a variável (senão aparece preto).
- Cores: só 14 visíveis (paleta essencial) — bg/canvas, bg/surface, bg/subtle, bg/primary, text/primary, text/secondary, text/muted, text/link, border/default, icon/default, text/success, text/danger, text/warning, text/info. As outras ficam em "interno/..." (scopes vazios, só para componentes). Não criar cor nova sem necessidade; em scripts, buscar variáveis internas pelo nome "interno/...".
- Variables: Primitivos (ocultos), Cores (Claro/Escuro), Espaçamento (spacing/, radius/). Estilos de texto e Sombra/*, Foco/anel.
- Páginas: Capa, Guia de uso, Histórico de versões, Fundamentos, Ícones | WEB: Button, Formulários, Feedback, Overlay, Dados, Navegação, Documentos | MOBILE: Mobile (Flutter) | TELAS: Padrões de tela. "Alertas" é do usuário: não mexer.
- Estrutura de cada página de componentes: 3 Sections do Figma lado a lado — "1. Como usar" (quando usar / boas práticas / evite), "2. Componentes" (um cartão por componente, solto na Section, com etiquetas Angular e Flutter), "3. Exemplo de aplicação". Componente novo entra como cartão na Section 2 da página certa. Padrões de tela: uma Section por padrão.
- Padrões web: Home (padrão, 82:1478 claro / 82:2000 escuro), Pesquisa com filtros + resultados (21:694), Cadastro em etapas (26:886), Login (49:1275). Mobile: Lista com pesquisa (43:106), Formulário (43:294).

## Ao editar no Figma
- Inspecionar antes de criar; usar sempre as Variables da coleção Cores (nunca hex solto) e os estilos de texto Inter.
- Componentes com descrição do equivalente Angular Material e Flutter.
- Mudou token/cor? Atualizar também angular/force-ui-theme.scss e flutter/force_ui_theme.dart.
- Responder em português, curto.

## Componentes (v0.3)
Web: Button, InputText, Select, Campo de formulário, Textarea, Password, DatePicker, Checkbox, RadioButton, ToggleSwitch, SelectButton, Chip, Upload de arquivo, Tag, Badge, Tooltip, Message, Toast, Progresso (circular/barra), Skeleton, Estado vazio, Dialog, ConfirmDialog, Modal de seleção, DataTable, Paginator, Card de resultado, Breadcrumb, Menu lateral, Topbar, Tabs, Stepper, Accordion, Menu suspenso, Avatar, Rodapé.
Mobile: AppBar, NavigationBar, Botão, FAB, Campo, SearchBar, ListTile, Card de ocorrência, SnackBar, BottomSheet, Dialog.

## v0.4
- Documentos (PDF): IDÊNTICOS ao padrão RSO/AIA — Roboto, #1E1E1E, bordas 2px, faixas #D3D3D3/#EBEBEB, brasão oficial vetorial (copiado do RSO), campo Padrão=RSO (valor negrito) ou Padrão=AIA (rótulo negrito, valor caixa alta). Não "melhorar" esse padrão.
- Novos: Campo com máscara, Período de datas, Autocomplete, Linha do tempo, DataTable/Seleção, Barra de ações em massa, Card de navegação, Barra de contexto operacional, Indicador de status, Botão de status (atalho), Banner de conexão, Página de erro, Painel de filtros, Painel de notificações; Mobile: Banner/Item de sincronização, Opção, TabBar, Item de ação, Card de contexto do turno.
- Padrões de tela: Página de erro; "Home com cards de navegação" e o componente "Card de navegação" são só REFERÊNCIA (estilo RSO/COFIN), não padrão — não usar em projetos novos; mobile: Home operacional (offline), Login, Pesquisa sem resultado.
- Ao publicar nova versão: registrar na página "Histórico de versões" (mais recente em cima) e atualizar a tag de versão da Capa.

## v0.5
- Home padrão (Padrões de tela › "Home (padrão)"): saudação + "Nova ocorrência", "Precisa da sua atenção" (pendências com Tag e prazo), "Últimas ocorrências" (tabela curta), lateral com Acesso rápido (lista discreta), aviso (Message) e Atividade recente (Linha do tempo). Sem KPIs nem cards grandes.
- Fundamentos › Grade e layout: web 1440 (mín. 1366), menu 280 (recolhido 72), topbar 64, contexto 40, conteúdo margem 32 / 12 colunas / espaço 24; mobile 360, margem 16, 4 colunas, toque mín. 48.
- Documentos: coleção de variáveis "Impressão" (doc/tinta #1E1E1E, doc/faixa #D3D3D3, doc/subfaixa #EBEBEB, doc/papel #FFFFFF) e estilos Documento/* (Roboto). Nada de hex solto nos PDFs.
- Estilo Código/Atalho (Roboto Mono 13) para teclas de atalho.
