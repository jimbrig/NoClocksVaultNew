---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Curated list of R Shiny packages, extensions, UI libraries, and deployment options
tags:
  - Status/Ongoing
  - Type/List
  - Topic/R
  - Topic/Shiny
  - Topic/Web
aliases:
  - R Shiny Ecosystem
  - Shiny Packages
  - Shiny Extensions
publish: true
---

# List - R Shiny Ecosystem
## Overview

Curated collection of **R Shiny packages, extensions, and tools** for building production-ready web applications. See the [Awesome Shiny Extensions](https://github.com/nanxstats/awesome-shiny-extensions) for a community-maintained list.

## Core Packages

| Package | Description | Links |
|---------|-------------|-------|
| shiny | The core Shiny package | [CRAN](https://cran.r-project.org/package=shiny) - [Docs](https://shiny.posit.co/) |
| bslib | Bootstrap theming for Shiny | [CRAN](https://cran.r-project.org/package=bslib) - [Docs](https://rstudio.github.io/bslib/) |
| htmltools | HTML generation utilities | [CRAN](https://cran.r-project.org/package=htmltools) |
| httpuv | HTTP and WebSocket server | [CRAN](https://cran.r-project.org/package=httpuv) |

## UI Frameworks & Components

### Layout & Theming

| Package | Description | Links |
|---------|-------------|-------|
| bslib | Bootstrap 5 theming and layouts | [CRAN](https://cran.r-project.org/package=bslib) - [Docs](https://rstudio.github.io/bslib/) |
| shinydashboard | Admin dashboard layouts | [CRAN](https://cran.r-project.org/package=shinydashboard) |
| bs4Dash | Bootstrap 4 AdminLTE dashboards | [CRAN](https://cran.r-project.org/package=bs4Dash) - [Docs](https://rinterface.github.io/bs4Dash/) |
| shinydashboardPlus | Enhanced shinydashboard | [CRAN](https://cran.r-project.org/package=shinydashboardPlus) |
| semantic.dashboard | Semantic UI dashboards | [CRAN](https://cran.r-project.org/package=semantic.dashboard) |

### UI Components

| Package | Description | Links |
|---------|-------------|-------|
| shinyWidgets | Custom input widgets (pickers, switches, knobs) | [CRAN](https://cran.r-project.org/package=shinyWidgets) - [Docs](https://dreamrs.github.io/shinyWidgets/) |
| bsicons | Bootstrap Icons for Shiny | [CRAN](https://cran.r-project.org/package=bsicons) |
| fontawesome | Font Awesome icons | [CRAN](https://cran.r-project.org/package=fontawesome) |
| shinyFeedback | Input validation feedback | [CRAN](https://cran.r-project.org/package=shinyFeedback) |
| waiter | Loading screens and spinners | [CRAN](https://cran.r-project.org/package=waiter) - [Docs](https://waiter.john-coene.com/) |
| shinybusy | Busy indicators | [CRAN](https://cran.r-project.org/package=shinybusy) |
| tippy | Tooltips | [CRAN](https://cran.r-project.org/package=tippy) |

### Modern UI Libraries

| Package | Description | Links |
|---------|-------------|-------|
| shiny.fluent | Microsoft Fluent UI components | [CRAN](https://cran.r-project.org/package=shiny.fluent) - [Docs](https://appsilon.github.io/shiny.fluent/) |
| shiny.semantic | Semantic UI framework | [CRAN](https://cran.r-project.org/package=shiny.semantic) |
| shiny.tailwind | Tailwind CSS integration | [GitHub](https://github.com/kylebutts/shiny.tailwind) |

## Data Display

### Tables

| Package | Description | Links |
|---------|-------------|-------|
| DT | DataTables wrapper | [CRAN](https://cran.r-project.org/package=DT) - [Docs](https://rstudio.github.io/DT/) |
| reactable | Interactive data tables | [CRAN](https://cran.r-project.org/package=reactable) - [Docs](https://glin.github.io/reactable/) |
| reactablefmtr | reactable styling helpers | [CRAN](https://cran.r-project.org/package=reactablefmtr) |
| gt | Grammar of tables | [CRAN](https://cran.r-project.org/package=gt) - [Docs](https://gt.rstudio.com/) |
| rhandsontable | Excel-like editing | [CRAN](https://cran.r-project.org/package=rhandsontable) |

### Visualization

| Package | Description | Links |
|---------|-------------|-------|
| plotly | Interactive ggplot2 via Plotly | [CRAN](https://cran.r-project.org/package=plotly) - [Docs](https://plotly.com/r/) |
| echarts4r | Apache ECharts wrapper | [CRAN](https://cran.r-project.org/package=echarts4r) - [Docs](https://echarts4r.john-coene.com/) |
| highcharter | Highcharts wrapper | [CRAN](https://cran.r-project.org/package=highcharter) - [Docs](https://jkunst.com/highcharter/) |
| apexcharter | ApexCharts wrapper | [CRAN](https://cran.r-project.org/package=apexcharter) |
| ggiraph | Interactive ggplot2 graphics | [CRAN](https://cran.r-project.org/package=ggiraph) |
| billboarder | Billboard.js charts | [CRAN](https://cran.r-project.org/package=billboarder) |

### Maps

| Package | Description | Links |
|---------|-------------|-------|
| leaflet | Interactive maps | [CRAN](https://cran.r-project.org/package=leaflet) - [Docs](https://rstudio.github.io/leaflet/) |
| mapview | Quick spatial visualization | [CRAN](https://cran.r-project.org/package=mapview) |
| mapdeck | Deck.gl maps | [CRAN](https://cran.r-project.org/package=mapdeck) |

See [List - R Geospatial Packages](List - R Geospatial Packages.md) for more spatial packages.

## Modules & Code Organization

| Package | Description | Links |
|---------|-------------|-------|
| golem | Production app framework | [CRAN](https://cran.r-project.org/package=golem) - [Docs](https://thinkr-open.github.io/golem/) |
| rhino | Enterprise Shiny framework by Appsilon | [CRAN](https://cran.r-project.org/package=rhino) - [Docs](https://appsilon.github.io/rhino/) |
| leprechaun | Lightweight modular Shiny | [CRAN](https://cran.r-project.org/package=leprechaun) |
| box | Modern R module system | [CRAN](https://cran.r-project.org/package=box) - [Docs](https://klmr.me/box/) |

## Performance & Async

| Package | Description | Links |
|---------|-------------|-------|
| promises | Async programming for Shiny | [CRAN](https://cran.r-project.org/package=promises) |
| future | Parallel/async evaluation | [CRAN](https://cran.r-project.org/package=future) |
| shiny.worker | Background processing | [GitHub](https://github.com/Appsilon/shiny.worker) |
| memoise | Function memoization | [CRAN](https://cran.r-project.org/package=memoise) |
| cachem | Cache management | [CRAN](https://cran.r-project.org/package=cachem) |

## Testing & Development

| Package | Description | Links |
|---------|-------------|-------|
| shinytest2 | Automated Shiny testing | [CRAN](https://cran.r-project.org/package=shinytest2) - [Docs](https://rstudio.github.io/shinytest2/) |
| shinyloadtest | Load testing | [CRAN](https://cran.r-project.org/package=shinyloadtest) |
| reactlog | Reactivity visualization | [CRAN](https://cran.r-project.org/package=reactlog) |
| profvis | Performance profiling | [CRAN](https://cran.r-project.org/package=profvis) |

## Authentication & Security

| Package | Description | Links |
|---------|-------------|-------|
| shinymanager | Authentication UI | [CRAN](https://cran.r-project.org/package=shinymanager) |
| shinyauthr | Authentication module | [CRAN](https://cran.r-project.org/package=shinyauthr) |
| firebase | Firebase authentication | [CRAN](https://cran.r-project.org/package=firebase) |
| polished | Authentication and user management | [Site](https://polished.tech/) |

## Database Integration

| Package | Description | Links |
|---------|-------------|-------|
| pool | Database connection pooling | [CRAN](https://cran.r-project.org/package=pool) - [Docs](https://rstudio.github.io/pool/) |
| DBI | Database interface | [CRAN](https://cran.r-project.org/package=DBI) |
| dbplyr | dplyr backend for databases | [CRAN](https://cran.r-project.org/package=dbplyr) |

See [List - R Database Packages](List - R Database Packages.md) for database packages.

## Deployment

| Platform | Description | Links |
|----------|-------------|-------|
| ShinyApps.io | Managed hosting by Posit | [Site](https://www.shinyapps.io/) - [Docs](https://docs.posit.co/shinyapps.io/) |
| Posit Connect | Enterprise deployment | [Site](https://posit.co/products/enterprise/connect/) |
| Shiny Server (Open Source) | Self-hosted server | [Docs](https://posit.co/download/shiny-server/) |
| Docker + Cloud Run | Containerized deployment | See [R - Shiny Cloud Run Deployment](R - Shiny Cloud Run Deployment.md) |
| ShinyProxy | Container-based scaling | [Site](https://www.shinyproxy.io/) |

## Extensions & Utilities

| Package | Description | Links |
|---------|-------------|-------|
| shinyjs | JavaScript utilities | [CRAN](https://cran.r-project.org/package=shinyjs) - [Docs](https://deanattali.com/shinyjs/) |
| shinyAce | Ace code editor | [CRAN](https://cran.r-project.org/package=shinyAce) |
| sortable | Drag-and-drop sorting | [CRAN](https://cran.r-project.org/package=sortable) |
| shinyFiles | Server-side file chooser | [CRAN](https://cran.r-project.org/package=shinyFiles) |
| shinyalert | Modal dialogs | [CRAN](https://cran.r-project.org/package=shinyalert) |
| shinybrowser | Browser info detection | [CRAN](https://cran.r-project.org/package=shinybrowser) |
| cicerone | Guided tours | [CRAN](https://cran.r-project.org/package=cicerone) |

---

## Related Notes

- [R - Shiny UI Helpers](R - Shiny UI Helpers.md)
- [R - Shiny DT Table Helpers](R - Shiny DT Table Helpers.md)
- [R - Shiny Highcharter Helpers](R - Shiny Highcharter Helpers.md)

## See Also

- [MOC - R](MOC - R.md)
- [List - R Geospatial Packages](List - R Geospatial Packages.md)
- [List - R Database Packages](List - R Database Packages.md)

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024





