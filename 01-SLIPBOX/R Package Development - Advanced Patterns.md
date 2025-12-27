---
creation_date: 2025-12-24
modification_date: 2025-12-24
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: "Opinionated patterns, tips, and best practices for building production-grade R packages."
tags:
  - Type/Note
  - Topic/R
  - Topic/Development
  - Status/Complete
aliases:
  - R Package Development Patterns
  - R Package Best Practices
  - R Package Tips and Tricks
publish: true
---


# R Package Development - Advanced Patterns
## Overview

This note documents opinionated and advanced patterns for building robust, production-grade R packages. These practices are project-type agnostic and apply to any R package regardless of its specific purpose.

> [!TIP] Related Notes
> For specialized package types, see:
> - [Guide - R httr2 API Client Package](Guide - R httr2 API Client Package.md) - httr2-based API client packages
> - [Guide - R Shiny App Package](Guide - R Shiny App Package.md) - Shiny application packages
> - [R - Package Initialization Script](R - Package Initialization Script.md) - Comprehensive initialization script

## Development Workflow

### The `dev/` Folder Pattern

Keep track of development tasks in a dedicated, build-ignored `dev/` folder:

```
dev/
├── R/                  # development-only R scripts
│   └── use_module.R    # custom scaffolding functions
├── scripts/
│   ├── pkg_init.R      # initialization steps
│   ├── pkg_check.R     # R CMD check script
│   └── pkg_release.R   # release checklist
├── check/              # R CMD check output (git-ignored)
└── templates/          # code templates
```

**Setup:**

```R
usethis::use_directory("dev", ignore = TRUE)
fs::dir_create(c("dev/R", "dev/scripts", "dev/check", "dev/templates"))
usethis::use_git_ignore(ignores = c("*", "!.gitignore"), directory = "dev/check")
```

This provides programmatic, traceable steps for initialization and automation while keeping them out of the installed package.

### Separate Example R Scripts

Leverage an `examples/` directory for function examples:

```
examples/
├── ex_my_function.R
├── ex_another_function.R
└── ex_complex_workflow.R
```

In roxygen2, reference these with `@example examples/ex_my_function.R` instead of inline `@examples` blocks. Benefits:
- Examples are real, executable R files
- Easier to test and maintain
- IDE syntax highlighting and completion

**Setup:**

```R
usethis::use_directory("examples", ignore = TRUE)
```

### The `exec/` Folder for Executables

Use `exec/` for command-line scripts or CLIs bundled with your package:

```
exec/
├── run_analysis.R
└── generate_report.R
```

Files in `exec/` are installed with the package and can be located via `system.file("exec", "run_analysis.R", package = "mypkg")`.

See [r-lib/Rapp](https://github.com/r-lib/Rapp) for an excellent example.

## Data Preparation Workflows

### Systematic `data-raw/` Organization

Distinguish between internal and exported datasets with dedicated entry points:

```
data-raw/
├── internal.R          # → R/sysdata.rda
├── exported.R          # → data/*.rda
├── scripts/
│   ├── dataset1.R
│   ├── dataset2.R
│   └── lookup_tables.R
├── raw/                # downloaded/source data
├── processed/          # intermediate processed data
├── cache/              # cached API responses, etc.
└── README.md
```

**`data-raw/internal.R`:**

```R
source("data-raw/scripts/lookup_tables.R")
source("data-raw/scripts/internal_config.R")

usethis::use_data(
  lookup_tables,
  internal_config,
  internal = TRUE,
  overwrite = TRUE,
  version = 3
)
```

**`data-raw/exported.R`:**

```R
source("data-raw/scripts/dataset1.R")
source("data-raw/scripts/dataset2.R")

usethis::use_data(my_dataset, overwrite = TRUE)
usethis::use_data(another_dataset, overwrite = TRUE)
```

### Idempotent Data Preparation

Treat data preparation like a build process:
- Scripts should be **idempotent** (safe to re-run)
- Use **hashing and caching** to avoid redundant downloads
- **Source layered scripts** for modularity
- Store **raw downloads** separately from processed data

## Package Initialization

### Internal Package Environment

Use an internal environment for package-wide state management:

```R
# R/zzz.R
.pkg_env <- rlang::new_environment(parent = emptyenv())
.pkg_env$config <- NULL
.pkg_env$cache <- NULL
```

This provides:
- Centralized state management
- Singleton storage for connections, caches, loggers
- Runtime configuration without polluting global namespace

### Declarative Initializers with `rlang`

Use `rlang::on_load()` for declarative initialization:

```R
# R/zzz.R
rlang::on_load({ rlang::local_use_cli() })
rlang::on_load({ pkg_options_init() })

.onLoad <- function(libname, pkgname) {
  rlang::run_on_load()
}
```

Benefits over inline `.onLoad()` code:
- Declarative and composable
- Each initializer is self-contained
- Easier to test and debug

### Startup Messages

Provide informative startup messages with configuration status:

```R
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(pkg_startup_msg())
}
```

> [!NOTE] Use `crayon` for startup messages
> `cli` functions don't work well inside `packageStartupMessage()`. Use `crayon` for colored/styled startup output.

## Standard File Conventions

### Core R Files

| File | Purpose |
|------|---------|
| `R/zzz.R` | Package initialization (`.onLoad`, `.onAttach`, internal environment) |
| `R/aaa.R` | Shared roxygen2 templates (parameters, returns, topics) |
| `R/package-{name}.R` | Package-level documentation (`"_PACKAGE"` sentinel) |
| `R/data.R` | Exported dataset documentation |
| `R/utils.R` | General utility functions |
| `R/utils_checks.R` | Argument validation functions |
| `R/utils_predicates.R` | Boolean predicate functions (`is_*`) |
| `R/utils_pkg.R` | Package metadata (`pkg_name()`, `pkg_version()`, `pkg_sys()`) |

### Thematic Function Organization

Organize functions by **functional purpose** rather than arbitrary grouping:

```
R/
├── api_request.R       # all request-building functions
├── api_response.R      # all response-handling functions
├── parse_*.R           # parsing functions by type
└── validate_*.R        # validation functions
```

## Documentation Patterns

### Documentation Assets in `man/`

```
man/
├── figures/
│   ├── logo.png           # package logo
│   ├── hex-sticker.png    # hex sticker
│   └── workflow.png       # diagrams
└── fragments/
    ├── header.Rmd         # shared header content
    ├── installation.Rmd   # installation instructions
    ├── badges.Rmd         # README badges
    └── contributing.Rmd   # contributing section
```

Use fragments as children in README and vignettes:

````markdown
```{r child = "man/fragments/installation.Rmd"}
```
````

### Shared Parameter Documentation

Define shared parameters in `R/aaa.R` to avoid repetition:

```R
#' Shared Parameters
#' @name .shared_params
#' @param verbose Logical. Print progress messages?
#' @param quiet Logical. Suppress all messages?
#' @param ... Additional arguments passed to downstream functions.
#' @keywords internal
NULL
```

Then inherit in other functions:

```R
#' @inheritParams .shared_params
```

Also inherit from external packages:

```R
#' @inheritParams rlang::args_error_context
```

### Shared Return Documentation

```R
#' Tibble Return
#' @name .returns_tibble
#' @returns A [tibble::tibble()].
#' @keywords internal
NULL
```

Use with `@inherit .returns_tibble return`.

## DESCRIPTION Configuration

### `Config/Needs/*` for Dependency Groups

Use `Config/Needs/<name>` for development-only dependencies:

```yaml
Config/Needs/website: pkgdown
Config/Needs/docs: roxygen2, rmarkdown, knitr
Config/Needs/dev: devtools, usethis, testthat, lintr
Config/Needs/coverage: covr, codecov
```

Benefits:
- DESCRIPTION remains the single source of truth
- Clear separation of runtime vs. development dependencies
- Used by GitHub Actions and other CI tools

## Code Formatting

### Air Formatter (`air.toml`)

```toml
[format]
line-width = 120
indent-width = 2
indent-style = "space"
line-ending = "auto"
persistent-line-breaks = true
skip = ["tryCatch", "tribble", "if", "on_load"]
```

### Lintr (`.lintr`)

```yaml
linters: linters_with_defaults(
    line_length_linter(120),
    commented_code_linter = NULL,
    trailing_blank_lines_linter = NULL
  )
exclusions: list()
encoding: "UTF-8"
```

## Testing Infrastructure

### Test Organization

```
tests/
├── testthat.R              # testthat runner
├── spelling.R              # spelling tests
└── testthat/
    ├── setup.R             # test setup (runs once)
    ├── helper.R            # test helpers (loaded for each test file)
    ├── fixtures/           # test fixtures (data, mocks)
    └── test-*.R            # test files
```

### Custom Test Helpers

Create `tests/testthat/helper.R` for reusable test utilities:

```R
expect_valid_output <- function(x) {
  expect_true(!is.null(x))
  expect_true(length(x) > 0)
}

skip_if_no_api <- function() {
  if (Sys.getenv("API_KEY") == "") {
    skip("API key not available")
  }
}
```

### Spelling Tests

```R
# tests/spelling.R
if (requireNamespace("spelling", quietly = TRUE)) {
  spelling::spell_check_test(
    vignettes = TRUE,
    error = FALSE,
    skip_on_cran = TRUE
  )
}
```

## Global Variables Declaration

Suppress R CMD check notes for NSE variables:

```R
# R/zzz.R
utils::globalVariables(c(
  # exported data objects
  "my_dataset",
  # NSE column names (dplyr/tidyverse)
  "name", "value", "group",
  # .data pronoun fallback
  "data"
))
```

## Vignette Pre-computation

Pre-compute expensive vignette artifacts:

```R
# vignettes/compile.R
source("vignettes/precompute_data.R")
rmarkdown::render("vignettes/my-vignette.Rmd.orig", output_file = "my-vignette.Rmd")
```

Use `.Rmd.orig` for source files that need pre-computation.

***

## Appendix

*Note created on [2025-12-24](2025-12-24.md) and last modified on [2025-12-24](2025-12-24.md).*

### See Also

- [R - Package Initialization Script](R - Package Initialization Script.md) - Comprehensive initialization script
- [R - Package Environment and Initialization](R - Package Environment and Initialization.md) - Detailed `R/zzz.R` patterns
- [R - Shared Roxygen2 Parameter Templates](R - Shared Roxygen2 Parameter Templates.md) - `R/aaa.R` patterns
- [R - Argument Validation Check Utilities](R - Argument Validation Check Utilities.md) - `check_*` function patterns
- [Guide - R httr2 API Client Package](Guide - R httr2 API Client Package.md) - API client package structure
- [Guide - R Shiny App Package](Guide - R Shiny App Package.md) - Shiny app package structure
- [MOC - R](MOC - R.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025

