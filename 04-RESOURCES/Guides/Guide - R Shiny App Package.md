---
creation_date: 2025-12-24
modification_date: 2025-12-24
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: "Comprehensive guide for building production-grade R Shiny application packages"
tags:
  - Type/Guide
  - Topic/R
  - Topic/Shiny
  - Topic/Development
  - Status/Complete
aliases:
  - Shiny App Package
  - R Shiny Package Structure
  - Shiny Module Package
---


# Guide - R Shiny App Package
## Overview

This guide documents the architecture and patterns for building production-grade R Shiny applications packaged as R packages. This approach provides:

- Namespace management and dependency tracking
- Easy testing with `testthat` and `shinytest2`
- Deployment flexibility (Docker, Posit Connect, shinyapps.io)
- Modular, reusable components
- Professional documentation

## Package Structure

```
myapp/
├── R/
│   ├── _disable_autoload.R      # Disable Shiny's auto-loading
│   ├── aaa.R                    # Shared roxygen2 parameter templates
│   ├── zzz.R                    # Package initialization
│   ├── myapp-package.R          # Package documentation
│   │
│   ├── app_run.R                # run_app() function
│   ├── app_ui.R                 # Main UI function
│   ├── app_server.R             # Main server function
│   ├── app_theme.R              # bslib theme configuration
│   ├── app_assets.R             # Static assets (CSS, JS, meta)
│   ├── app_config.R             # App configuration
│   ├── app_options.R            # App options management
│   ├── app_health.R             # Health check endpoint
│   │
│   ├── mod_<module1>.R          # Feature modules
│   ├── mod_<module2>.R
│   ├── mod_<module3>.R
│   │
│   ├── class_<ClassName>.R      # R6 classes (if any)
│   │
│   ├── utils.R                  # General utilities
│   ├── utils_ui.R               # UI helper functions
│   ├── utils_formats.R          # Formatting utilities
│   ├── utils_validation.R       # Input validation
│   ├── utils_checks.R           # Argument validation
│   └── utils_pkg.R              # Package metadata utilities
│
├── inst/
│   ├── www/
│   │   ├── images/              # Logos, icons, images
│   │   ├── scripts/             # Custom JavaScript
│   │   └── styles/              # Custom CSS
│   ├── config/                  # Configuration files
│   └── scripts/
│       ├── deploy.R             # Deployment script
│       └── sysreqs.R            # System requirements
│
├── tests/
│   ├── testthat/
│   │   ├── helper-shinytest2.R  # Shiny testing helpers
│   │   ├── setup-shinytest2.R   # Shinytest2 setup
│   │   ├── test-app_ui.R        # UI tests
│   │   ├── test-app_server.R    # Server tests
│   │   └── test-mod_*.R         # Module tests
│   ├── testthat.R
│   └── spelling.R
│
├── dev/
│   ├── R/
│   │   └── use_module.R         # Module scaffolding
│   ├── scripts/
│   │   ├── pkg_init.R           # Package initialization
│   │   └── pkg_check.R          # Package checks
│   └── templates/
│       ├── module.template.R    # Module template
│       └── test-module.template.R
│
├── app.R                        # Entry point for deployment
├── DESCRIPTION
├── NAMESPACE
├── .Rbuildignore
├── air.toml
└── .lintr
```

## Core Components

### 1. Entry Point (`app.R`)

Simple entry point for deployment:

```R
# app.R - Entry point for Shiny deployment

# load package
pkgload::load_all()

# run the application
run_app()
```

### 2. Disable Auto-loading (`R/_disable_autoload.R`)

Prevent Shiny from auto-loading R files:

```R
# see ?shiny::loadSupport
```

### 3. Package Initialization (`R/zzz.R`)

```R
.onLoad <- function(libname, pkgname) {
  shiny::addResourcePath("www", system.file("www", package = pkgname))
}

.onAttach <- function(libname, pkgname) {
  msg <- glue::glue("{pkgname} v{pkg_version()}")
  packageStartupMessage(msg)
}

.onUnload <- function(libname, pkgname) {
  shiny::removeResourcePath("www")
}
```

### 4. Shared Parameters (`R/aaa.R`)

```R
#' Shared Parameters
#'
#' @name .shared-params
#' @keywords internal
#'
#' @param conn,pool Database connection or pool object.
#' @param id Module's namespace identifier.
#' @param input,output,session Shiny input, output, and session objects.
#' @param ns Namespace function from [shiny::NS()].
NULL

#' Shiny App Return
#' @name .shared-return-app
#' @keywords internal
#' @noRd
#' @returns A [shiny::shinyApp()] object.
NULL

#' Reactive List Return
#' @name .shared-return-reactive-list
#' @keywords internal
#' @noRd
#' @returns A list of [shiny::reactive()] expressions.
NULL
```

### 5. Run App Function (`R/app_run.R`)

```R
#' Run the Shiny Application
#'
#' @param ... Additional arguments passed to [shiny::shinyApp()].
#'
#' @export
#' @importFrom shiny shinyApp
run_app <- function(...) {
  shiny::shinyApp(
    ui = app_ui,
    server = app_server,
    ...
  )
}
```

### 6. Main UI (`R/app_ui.R`)

```R
#' Main Application UI
#'
#' @export
#' @importFrom bslib page_navbar nav_panel nav_spacer
#' @importFrom shiny tagList
app_ui <- function() {
  bslib::page_navbar(
    title = "My App",
    window_title = "My App",
    theme = app_theme(),
    lang = "en",
    header = app_assets(),
    
    bslib::nav_spacer(),
    
    bslib::nav_panel(
      title = "Home",
      value = "home",
      icon = shiny::icon("house"),
      mod_home_ui("home")
    ),
    
    bslib::nav_panel(
      title = "Search",
      value = "search",
      icon = shiny::icon("search"),
      mod_search_ui("search")
    ),
    
    bslib::nav_panel(
      title = "Results",
      value = "results",
      icon = shiny::icon("table"),
      mod_results_ui("results")
    )
  )
}
```

### 7. Main Server (`R/app_server.R`)

```R
#' Main Application Server
#'
#' @inheritParams .shared-params
#'
#' @export
app_server <- function(input, output, session) {
  
  # initialize modules
  home_data <- mod_home_server("home")
  search_results <- mod_search_server("search")
  mod_results_server("results", search_data = search_results)
  
}
```

### 8. Theme Configuration (`R/app_theme.R`)

```R
#' Application Theme
#'
#' @export
#' @importFrom bslib bs_theme
app_theme <- function() {
  bslib::bs_theme(
    version = 5,
    bootswatch = "flatly",
    primary = "#2c3e50",
    secondary = "#95a5a6",
    success = "#18bc9c",
    info = "#3498db",
    warning = "#f39c12",
    danger = "#e74c3c",
    base_font = bslib::font_google("Inter"),
    heading_font = bslib::font_google("Poppins"),
    code_font = bslib::font_google("Fira Code"),
    "navbar-bg" = "#2c3e50"
  )
}
```

### 9. Assets (`R/app_assets.R`)

```R
#' Application Assets
#'
#' @description
#' Returns the HTML head elements for the application including
#' favicon, meta tags, and custom stylesheets.
#'
#' @export
#' @importFrom htmltools tags
app_assets <- function() {
  htmltools::tags$head(
    # favicon
    htmltools::tags$link(rel = "icon", href = "www/images/favicon.ico"),
    
    # meta tags
    htmltools::tags$meta(charset = "utf-8"),
    htmltools::tags$meta(name = "viewport", content = "width=device-width, initial-scale=1"),
    htmltools::tags$meta(name = "description", content = "My Shiny Application"),
    
    # custom styles
    htmltools::tags$link(rel = "stylesheet", href = "www/styles/custom.css")
  )
}

#' Application Logo
#'
#' @param class CSS class to apply.
#' @param height Logo height.
#'
#' @export
app_logo <- function(class = "logo-light", height = "40px") {
  htmltools::tags$img(
    src = "www/images/logo.png",
    class = class,
    style = paste0("height: ", height, ";"),
    alt = "Logo"
  )
}
```

## Module Pattern

### Standard Module Structure

Each module should have three parts: UI, Server, and Demo.

```R
#  ------------------------------------------------------------------------
#
# Title : Home Module
#    By : Jimmy Briggs
#  Date : 2025-06-15
#
#  ------------------------------------------------------------------------

# UI ----------------------------------------------------------------------

#' Home Module UI
#'
#' @param id Module namespace ID.
#'
#' @export
#' @importFrom shiny NS tagList
#' @importFrom bslib card card_header card_body
mod_home_ui <- function(id) {
  ns <- shiny::NS(id)
  
  shiny::tagList(
    bslib::card(
      bslib::card_header("Welcome"),
      bslib::card_body(
        shiny::h2("Welcome to My App"),
        shiny::p("Get started by selecting an option below."),
        shiny::actionButton(ns("get_started"), "Get Started", class = "btn-primary")
      )
    )
  )
}

# Server ------------------------------------------------------------------

#' Home Module Server
#'
#' @inheritParams .shared-params
#'
#' @export
#' @importFrom shiny moduleServer reactive observeEvent
mod_home_server <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    # reactive values
    data <- shiny::reactiveValues(
      started = FALSE
    )
    
    # observers
    shiny::observeEvent(input$get_started, {
      data$started <- TRUE
      shiny::showNotification("Let's go!", type = "message")
    })
    
    # return reactive data
    return(
      list(
        started = shiny::reactive(data$started)
      )
    )
  })
}

# Demo --------------------------------------------------------------------

#' Home Module Demo
#'
#' @description
#' Runs a standalone demo of the home module.
#'
#' @export
mod_home_demo <- function() {
  ui <- bslib::page_navbar(
    title = "Demo: Home",
    window_title = "Demo: Home",
    theme = app_theme(),
    bslib::nav_panel(
      title = "Home",
      mod_home_ui("demo")
    )
  )
  
  server <- function(input, output, session) {
    mod_home_server("demo")
  }
  
  shiny::shinyApp(ui, server)
}
```

### Module Template Generator (`dev/R/use_module.R`)

```R
#' Create a New Module
#'
#' @param name Module name (lowercase, underscores allowed).
#' @param title Human-readable title.
#' @param author Author name.
#' @param open Open the file after creation?
#'
#' @export
use_module <- function(name, title = NULL, author = "Jimmy Briggs", open = TRUE) {
  if (is.null(title)) {
    title <- gsub("_", " ", name) |> tools::toTitleCase()
  }
  
  # read template
  template <- readLines("dev/templates/module.template.R")
  
  # substitute placeholders
  content <- gsub("//{//{name//}//}", name, template)
  content <- gsub("//{//{title//}//}", title, content)
  content <- gsub("//{//{author//}//}", author, content)
  content <- gsub("//{//{date//}//}", format(Sys.Date()), content)
  
  # write module file
  module_file <- file.path("R", paste0("mod_", name, ".R"))
  writeLines(content, module_file)
  cli::cli_alert_success("Created {.file {module_file}}")
  
  # write test file
  test_template <- readLines("dev/templates/test-module.template.R")
  test_content <- gsub("//{//{name//}//}", name, test_template)
  test_content <- gsub("//{//{title//}//}", title, test_content)
  test_content <- gsub("//{//{author//}//}", author, test_content)
  test_content <- gsub("//{//{date//}//}", format(Sys.Date()), test_content)
  
  test_file <- file.path("tests", "testthat", paste0("test-mod_", name, ".R"))
  writeLines(test_content, test_file)
  cli::cli_alert_success("Created {.file {test_file}}")
  
  if (open) {
    usethis::edit_file(module_file)
  }
  
  invisible(list(module = module_file, test = test_file))
}
```

## Testing Patterns

### Test Helpers (`tests/testthat/helper-shinytest2.R`)

```R
require(testthat)
require(shiny)
require(shinytest2)

expect_shiny_tag <- function(tag) {
  expect_s3_class(tag, "shiny.tag")
}

expect_shiny_taglist <- function(taglist) {
  expect_s3_class(taglist, "shiny.tag.list")
}

expect_shiny_app <- function(app) {
  expect_s3_class(app, "shiny.appobj")
}

expect_bslib_fragment <- function(obj) {
  expect_shiny_tag(obj)
  expect_s3_class(obj, "bslib_fragment")
}

create_test_session <- function() {
  session <- shiny::MockShinySession$new()
  session$clientData <- list(
    url_protocol = "http:",
    url_hostname = "localhost",
    url_port = "3838"
  )
  return(session)
}

create_test_data <- function() {
  tibble::tibble(
    id = 1:10,
    name = paste("Item", 1:10),
    value = runif(10, 0, 100)
  )
}
```

### Setup (`tests/testthat/setup-shinytest2.R`)

```R
library(shiny)
library(shinytest2)
options(shiny.autoload.r = FALSE)
shinytest2::load_app_env()
```

### Module Test Example

```R
# tests/testthat/test-mod_home.R

test_that("mod_home_ui returns taglist", {
  ui <- mod_home_ui("test")
  expect_shiny_taglist(ui)
})

test_that("mod_home_server works", {
  shiny::testServer(
    mod_home_server,
    args = list(),
    {
      ns <- session$ns
      expect_true(inherits(ns, "function"))
      expect_true(grepl(id, ns("")))
    }
  )
})

test_that("mod_home_demo runs", {
  demo <- mod_home_demo()
  expect_shiny_app(demo)
})
```

## Deployment

### Docker Deployment

**`Dockerfile`:**

```dockerfile
FROM rocker/shiny:4.4.0

# install system dependencies
RUN apt-get update -y -qq && apt-get -y --no-install-recommends install /
  libcurl4-openssl-dev /
  libssl-dev /
  libxml2-dev /
  && apt-get clean /
  && rm -rf /var/lib/apt/lists/*

# install R dependencies
COPY DESCRIPTION /tmp/DESCRIPTION
RUN Rscript -e "pak::pak('local::/tmp')"

# copy app
COPY . /srv/shiny-server/app
WORKDIR /srv/shiny-server/app

EXPOSE 3838

CMD ["R", "-e", "pkgload::load_all(); run_app(host = '0.0.0.0', port = 3838)"]
```

### Health Check (`R/app_health.R`)

```R
#' Health Check Endpoint
#'
#' @description
#' Adds a health check route for container orchestration.
#'
#' @param session Shiny session object.
#'
#' @export
app_health_check <- function(session = shiny::getDefaultReactiveDomain()) {
  shiny::observe({
    query <- shiny::parseQueryString(session$clientData$url_search)
    if ("health" %in% names(query)) {
      shiny::stopApp(returnValue = list(status = "ok", timestamp = Sys.time()))
    }
  })
}
```

***

## Appendix

*Note created on [2025-12-24](2025-12-24.md) and last modified on [2025-12-24](2025-12-24.md).*

### See Also

- [R - Package Environment and Initialization](R - Package Environment and Initialization.md)
- [R - Shiny UI Helpers](R - Shiny UI Helpers.md)
- [R Package Development - Advanced Patterns](R Package Development - Advanced Patterns.md)
- [Guide - R httr2 API Client Package](Guide - R httr2 API Client Package.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025

