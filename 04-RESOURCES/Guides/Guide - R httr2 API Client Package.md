---
creation_date: 2025-12-24
modification_date: 2025-12-24
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: "Comprehensive guide for building production-grade httr2-based API client R packages"
tags:
  - Type/Guide
  - Topic/R
  - Topic/API
  - Topic/Development
  - Status/Complete
aliases:
  - httr2 API Client Package
  - R API Client Guide
  - httr2 Package Structure
---


# Guide - R httr2 API Client Package
## Overview

This guide documents the architecture and patterns for building production-grade R packages that serve as API clients using [httr2](httr2.md). The patterns here are derived from real-world implementations and provide a robust foundation for API integrations.

## Package Structure

```
mypackage/
├── R/
│   ├── aaa.R                    # Shared roxygen2 parameter templates
│   ├── zzz.R                    # Package initialization
│   ├── mypackage-package.R      # Package documentation
│   ├── data.R                   # Exported data documentation
│   │
│   ├── api_config.R             # Configuration management
│   ├── api_cache.R              # Caching utilities
│   ├── api_logger.R             # Logging utilities
│   ├── api_options.R            # Package options management
│   │
│   ├── api_request.R            # Request construction
│   ├── api_perform.R            # Request execution
│   ├── api_response.R           # Response handling
│   ├── api_tidy.R               # Response tidying/rectangularization
│   ├── api_validate.R           # Request/response validation
│   ├── api_errors.R             # Error handling
│   │
│   ├── api_<endpoint1>.R        # Endpoint-specific functions
│   ├── api_<endpoint2>.R        # Endpoint-specific functions
│   │
│   ├── utils.R                  # General utilities
│   ├── utils_checks.R           # Argument validation
│   ├── utils_predicates.R       # Boolean predicates
│   └── utils_pkg.R              # Package metadata utilities
│
├── inst/
│   ├── config/
│   │   ├── config.template.yml  # Configuration template
│   │   └── .gitignore           # Ignore actual config
│   ├── extdata/                 # Example data/fixtures
│   └── schemas/                 # JSON validation schemas
│
├── tests/
│   ├── testthat/
│   │   ├── setup.R              # Test setup
│   │   ├── helper.R             # Test helpers
│   │   ├── setup-vcr.R          # VCR mock setup (optional)
│   │   └── test-*.R             # Test files
│   ├── testthat.R
│   └── spelling.R
│
├── data-raw/
│   ├── internal.R               # Internal data prep
│   ├── exported.R               # Exported data prep
│   └── scripts/                 # Layered data scripts
│
├── man/
│   ├── figures/                 # Logo, images
│   └── fragments/               # Shared documentation chunks
│
├── vignettes/
│   ├── architecture.Rmd         # Package architecture docs
│   └── getting-started.Rmd      # User getting started guide
│
├── DESCRIPTION
├── NAMESPACE
├── .Rbuildignore
├── air.toml                     # Air formatter config
└── .lintr                       # Lintr config
```

## Core Components

### 1. Configuration Management (`R/api_config.R`)

Handle API credentials and configuration using the `config` package:

```R
#' @export
api_config <- function(
    base_url = NULL,
    api_key = NULL,
    user_id = NULL,
    file = Sys.getenv("R_CONFIG_FILE", "config.yml"),
    config = Sys.getenv("R_CONFIG_ACTIVE", "default")
) {
  # load from config file if available
  if (file.exists(file)) {
    cfg <- config::get(file = file, config = config)
  } else {
    cfg <- list()
  }
  
  # override with explicit arguments or environment variables
  list(
    base_url = base_url %||% cfg$base_url %||% Sys.getenv("API_BASE_URL"),
    api_key = api_key %||% cfg$api_key %||% Sys.getenv("API_KEY"),
    user_id = user_id %||% cfg$user_id %||% Sys.getenv("API_USER_ID")
  )
}

#' @export
get_api_config <- function() {
  .pkg_env$config %||% api_config()
}

#' @export
validate_api_config <- function(config, quiet = FALSE) {
  issues <- character()
  
  if (is.null(config$api_key) || nchar(config$api_key) < 3) {
    issues <- c(issues, "API key is missing or invalid.")
  }
  
  if (is.null(config$base_url) || !grepl("^https?://", config$base_url)) {
    issues <- c(issues, "Base URL is missing or invalid.")
  }
  
  if (length(issues) == 0) {
    if (!quiet) cli::cli_alert_success("Configuration is valid.")
    return(TRUE)
  } else {
    if (!quiet) {
      cli::cli_alert_danger("Configuration issues found:")
      purrr::walk(issues, ~ cli::cli_alert_warning(.x))
    }
    return(issues)
  }
}
```

### 2. Request Construction (`R/api_request.R`)

Build requests using a fluent, pipe-friendly API:

```R
#' Create Base API Request
#' @export
#' @importFrom httr2 request
api_request <- function(config = get_api_config()) {
  check_api_config(config)
  
  httr2::request(config$base_url) |>
    api_req_auth(config) |>
    api_req_user_agent()
}

#' Add Authentication Headers
#' @export
api_req_auth <- function(req, config = get_api_config()) {
  check_request(req)
  httr2::req_headers(
    req,
    "x-api-key" = config$api_key,
    "x-user-id" = config$user_id
  )
}

#' Set User Agent
#' @export
api_req_user_agent <- function(req) {
  check_request(req)
  user_agent <- paste0(pkg_name(), "/", pkg_version(), " (R/", R.version$major, ".", R.version$minor, ")")
  httr2::req_user_agent(req, user_agent)
}

#' Add Endpoint to Request
#' @export
api_req_endpoint <- function(req, endpoint) {
  check_request(req)
  check_string(endpoint)
  httr2::req_url_path_append(req, endpoint)
}

#' Set Request Body as JSON
#' @export
#' @importFrom httr2 req_body_json
api_req_body <- function(req, body) {
  check_request(req)
  httr2::req_body_json(req, body, auto_unbox = TRUE)
}

#' Configure Error Handling
#' @export
api_req_error <- function(req) {
  check_request(req)
  httr2::req_error(req, body = api_error_body)
}

#' Configure Retry Logic
#' @export
api_req_retry <- function(req, max_tries = 3, backoff = ~ 2) {

  check_request(req)
  httr2::req_retry(
    req,
    max_tries = max_tries,
    is_transient = api_is_transient,
    backoff = backoff
  )
}

#' Configure Throttling
#' @export
api_req_throttle <- function(req, rate = 10) {
  check_request(req)
  httr2::req_throttle(req, rate = rate)
}
```

### 3. Request Execution (`R/api_perform.R`)

Execute requests with optional caching and logging:

```R
#' Perform API Request
#' @export
api_req_perform <- function(
    req,
    cache = get_api_cache(),
    logger = get_api_logger(),
    ...
) {
  check_request(req)
  
  # check cache first
  if (!is.null(cache)) {
    cache_key <- api_req_hash(req)
    cached <- cache$get(cache_key)
    if (!is.null(cached)) {
      if (!is.null(logger)) {
        logger$info("Cache hit for request", key = cache_key)
      }
      return(cached)
    }
  }
  
  # log request
  if (!is.null(logger)) {
    logger$info("Performing API request", url = httr2::req_url(req))
  }
  
  # perform request
  resp <- httr2::req_perform(req, ...)
  
  # store in cache
  if (!is.null(cache) && httr2::resp_status(resp) == 200) {
    cache$set(cache_key, resp)
  }
  
  # store for debugging
  .pkg_env$last_request <- req
  .pkg_env$last_response <- resp
  
  resp
}

#' Generate Request Hash for Caching
#' @export
#' @importFrom digest digest
api_req_hash <- function(req, max_chars = 8) {
  check_request(req)
  body <- purrr::pluck(req, "body", "data", .default = list())
  url <- httr2::req_url(req)
  hash_input <- list(url = url, body = body)
  hash <- digest::digest(hash_input, algo = "sha256")
  substr(hash, 1, max_chars)
}
```

### 4. Response Handling (`R/api_response.R`)

Process and extract data from responses:

```R
#' Parse API Response Body
#' @export
api_resp_body <- function(resp) {
  check_response(resp)
  httr2::resp_body_json(resp)
}

#' Check Response Status
#' @export
api_resp_is_success <- function(resp) {
  check_response(resp)
  httr2::resp_status(resp) >= 200 && httr2::resp_status(resp) < 300
}

#' Extract Data from Response
#' @export
api_resp_data <- function(resp, path = "data") {
  check_response(resp)
  body <- api_resp_body(resp)
  purrr::pluck(body, path, .default = NULL)
}
```

### 5. Response Tidying (`R/api_tidy.R`)

Convert API responses to tidy tibbles:
```R
#' Tidy API Response
#' @export
api_resp_tidy <- function(resp, spec = NULL, as_sf = TRUE) {
  check_response(resp)
  
  data <- api_resp_data(resp)
  
  if (is.null(data) || length(data) == 0) {
    return(tibble::tibble())
  }
  
  # use tibblify for structured conversion
  if (!is.null(spec)) {
    tidy_data <- tibblify::tibblify(data, spec = spec)
  } else {
    tidy_data <- tibble::as_tibble(data)
  }
  
  # convert to sf if coordinates present
  if (as_sf && all(c("latitude", "longitude") %in% names(tidy_data))) {
    tidy_data <- sf::st_as_sf(
      tidy_data,
      coords = c("longitude", "latitude"),
      crs = 4326,
      remove = FALSE
    )
  }
  
  tidy_data
}
```

### 6. Error Handling (`R/api_errors.R`)

Custom error handling for API-specific errors:

```R
#' Determine if Error is Transient
#' @keywords internal
api_is_transient <- function(resp) {
  status <- httr2::resp_status(resp)
  status %in% c(429, 500, 502, 503, 504)
}

#' Extract Error Message from Response Body
#' @keywords internal
api_error_body <- function(resp) {
  body <- tryCatch(
    httr2::resp_body_json(resp),
    error = function(e) list(message = "Unknown error")
  )
  
  message <- body$message %||% body$error %||% "API request failed"
  
  c(
    paste0("API Error: ", message),
    if (!is.null(body$code)) paste0("Code: ", body$code),
    if (!is.null(body$details)) paste0("Details: ", body$details)
  )
}
```

### 7. Endpoint Functions (`R/api_<endpoint>.R`)

User-facing functions for specific endpoints:

```R
#' Search Properties
#'
#' @inheritParams .shared_params
#' @param state Two-letter state code.
#' @param county County name.
#' @param limit Maximum results to return.
#'
#' @export
api_property_search <- function(
    state,
    county = NULL,
    limit = 50,
    config = get_api_config(),
    tidy = TRUE,
    validate = TRUE
) {
  # validate arguments
  check_string(state)
  if (!is.null(county)) check_string(county)
  check_number_minmax(limit, min = 1, max = 500)
  
  # build request body
  body <- list(
    state = state,
    county = county,
    size = limit
  ) |>
    purrr::compact()
  
  # build and execute request
  req <- api_request(config = config) |>
    api_req_endpoint("/v2/PropertySearch") |>
    api_req_body(body) |>
    api_req_error() |>
    api_req_retry()
  
  # optionally validate request
  if (validate) {
    api_req_validate(req, endpoint = "PropertySearch")
  }
  
  # perform request
  resp <- api_req_perform(req)
  
  # optionally tidy response
  if (tidy) {
    return(api_resp_tidy(resp))
  }
  
  resp
}
```

## DESCRIPTION Configuration

```
Package: mypackage
Title: R API Client for My API
Version: 0.1.0
Authors@R: c(
    person("Jimmy", "Briggs", email = "jimmy.briggs@noclocks.dev", 
           role = c("aut", "cre"), comment = c(ORCID = "0000-0002-7489-8787")),
    person("No Clocks, LLC", role = "cph")
  )
Description: Provides a comprehensive R API client interface to the My API.
License: MIT + file LICENSE
URL: https://github.com/noclocks/mypackage
BugReports: https://github.com/noclocks/mypackage/issues
Depends:
    R (>= 4.2.0)
Imports:
    cachem,
    cli,
    config,
    crayon,
    digest,
    dplyr,
    glue,
    httr2,
    jsonlite,
    lgr,
    purrr,
    rlang (>= 1.1.0),
    sf,
    tibble,
    tibblify
Suggests:
    httptest2,
    knitr,
    rmarkdown,
    spelling,
    testthat (>= 3.0.0),
    vcr
Config/testthat/edition: 3
Encoding: UTF-8
Language: en-US
LazyData: true
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.3
```

## Testing Patterns

### VCR/httptest2 Integration

```R
# tests/testthat/setup-vcr.R
library(vcr)

vcr::vcr_configure(
  dir = vcr::vcr_test_path("fixtures"),
  record = "once",
  filter_sensitive_data = list(
    "<<API_KEY>>" = Sys.getenv("API_KEY"),
    "<<USER_ID>>" = Sys.getenv("API_USER_ID")
  )
)

vcr::check_cassette_names()
```

### Test File Example

```R
# tests/testthat/test-api_property_search.R

test_that("api_property_search returns tibble", {
  vcr::use_cassette("property_search", {
    result <- api_property_search(state = "GA", county = "Forsyth", limit = 10)
  })
  
  expect_s3_class(result, "tbl_df")
  expect_true(nrow(result) > 0)
  expect_true("property_id" %in% names(result))
})

test_that("api_property_search validates arguments", {
  expect_error(api_property_search(state = 123), "must be a single string")
  expect_error(api_property_search(state = "GA", limit = 1000), "must be between")
})
```

***

## Appendix

*Note created on [2025-12-24](2025-12-24.md) and last modified on [2025-12-24](2025-12-24.md).*

### See Also

- [R - Package Environment and Initialization](R - Package Environment and Initialization.md)
- [R - Shared Roxygen2 Parameter Templates](R - Shared Roxygen2 Parameter Templates.md)
- [R - Argument Validation Check Utilities](R - Argument Validation Check Utilities.md)
- [R Package Development - Advanced Patterns](R Package Development - Advanced Patterns.md)
- [R - Async Plumber API](R - Async Plumber API.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025

