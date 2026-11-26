# Force UI

Design System da Polícia Militar — web (Angular Material) e mobile (Flutter).

> **Em validação:** usar apenas em projetos novos aprovados. Projetos existentes mantêm o visual atual.

- **Figma:** https://www.figma.com/design/hBuvSBIAFvcgBiq0aA0jfu/Reposit%C3%B3rio (páginas Capa, Guia de uso, Fundamentos, Ícones, componentes, Mobile (Flutter), Padrões de tela)

| Pasta | Conteúdo |
|---|---|
| `logo/` | Logo em SVG: símbolo e horizontal, positivo e negativo |
| `angular/force-ui-theme.scss` | Tema para Angular Material (M3): importar no `styles.scss` |
| `flutter/force_ui_theme.dart` | Tema Flutter (Material 3): `MaterialApp(theme: ForceUI.light, darkTheme: ForceUI.dark)` |

## Fundamentos
- **Paleta essencial:** 14 cores para as telas (3 fundos, marca, 4 textos, borda, ícone e 4 estados). Hover, desabilitado e foco ficam dentro dos componentes.
- **Cores:** modo Claro em Slate + Marinho (primária `#1D2833`, interação `#316BBB`); modo Escuro em Grafite (fundo `#282D31`, superfície `#33393E`).
- **Fonte:** Inter. **Raio:** 6px (campos e botões), 8px (cards e modais).
- **Ícones:** Material Symbols Outlined. Web: `<mat-icon fontSet="material-symbols-outlined">search</mat-icon>`. Flutter: pacote `material_symbols_icons` → `Icon(Symbols.search)`.

## Componentes
Web (36) e mobile (11) — lista completa no CLAUDE.md e no Figma (Guia de uso → "Quando usar cada componente").

## Status
Os temas ainda não foram compilados em projeto real: validar com Angular 22 e com a versão de Flutter do projeto antes de adotar.
