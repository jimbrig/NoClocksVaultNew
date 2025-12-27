---
creation_date: 2024-06-23
modification_date: 2024-12-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Topic/Development
  - Topic/R
  - Status/Complete
aliases:
  - Document Dataset with Roxygen R Code
  - Roxygen Dataset Documentation
  - R Package Data Documentation
description: Function to generate roxygen2 documentation skeleton for package datasets
cssclasses:
  - code
---

# Document Dataset with Roxygen

> [!info] Code Properties
> - **Language**: R
> - **Packages**: `fs`, `purrr`, `glue`
## Overview

Generates a `roxygen2` skeleton for documenting datasets in R packages. Automatically extracts column names, types, and dimensions to create properly formatted documentation.

## Code

```r
#' Document a Dataset
#'
#' @description
#' Generates a roxygen2 skeleton for documenting a dataset.
#'
#' @param data_obj The dataset to document (data.frame or tibble)
#' @param name The name of the dataset. Default is "DATASET_NAME"
#' @param description A description of the dataset
#' @param source The source of the dataset
#' @param col_types Character vector of column types
#' @param col_descs Character vector of column descriptions
#' @param file The file to write documentation to. Default is "R/data.R"
#' @param append Append to file if exists. Default is TRUE
#' @param overwrite Overwrite file if exists. Default is FALSE
#' @param ... Additional arguments
#'
#' @return Invisibly returns the roxygen2 documentation skeleton
#' @export
document_dataset <- function(
  data_obj,
  name = "DATASET_NAME",
  description = "DATASET_DESCRIPTION",
  source = "DATASET_SOURCE",
  col_types = purrr::map_chr(data_obj, typeof),
  col_descs = rep("COLUMN_DESCRIPTION", length(names(data_obj))),
  file = fs::path("R", "data.R"),
  append = TRUE,
  overwrite = FALSE,
  ...
) {
  col_names <- names(data_obj)
  if (is.null(col_names)) {
    cli::cli_abort("The data object must have column names.")
  }

  if (missing(col_types) || is.null(col_types)) {
    col_types <- purrr::map_chr(data_obj, typeof)
  }

  if (missing(col_descs) || is.null(col_descs)) {
    col_descs <- rep("COLUMN_DESCRIPTION", length(col_names))
  }

  stopifnot(
    length(col_types) == length(col_names),
    length(col_descs) == length(col_names)
  )

  col_roxys <- glue::glue(
    .open = "[[",
    .close = "]]",
    "#'   //item{//code{[col_names](col_names.md)}}{[col_types](col_types.md). [col_descs](col_descs.md).}"
  ) |> paste(collapse = "/n")

  dims <- paste0(nrow(data_obj), " rows and ", ncol(data_obj), " columns")

  pre <- glue::glue(
    .sep = "/n",
    "#' {name}",
    "#'",
    "#' @description",
    "#' {description}",
    "#'",
    "#' @source",
    "#' {source}",
    "#'",
    "#' @format A data frame with {dims}:"
  )

  skeleton <- paste0(
    pre,
    "/n",
    "#' //describe{/n",
    col_roxys,
    "/n",
    "#'}/n",
    '"', name, '"/n'
  )

  if (overwrite && append) {
    cli::cli_abort("Cannot both append and overwrite. Please choose one.")
  }

  if (overwrite && file.exists(file)) {
    file.remove(file)
  }

  cat(skeleton, file = file, append = append, sep = "/n")
  
  invisible(skeleton)
}
```

## Usage

```r
data(mtcars)

document_dataset(
  mtcars,
  name = "mtcars",
  description = "Motor Trend Car Road Tests",
  source = "Henderson and Velleman (1981)",
  col_descs = c(
    "Miles/(US) gallon",
    "Number of cylinders",
    "Displacement (cu.in.)",
    "Gross horsepower",
    "Rear axle ratio",
    "Weight (1000 lbs)",
    "1/4 mile time",
    "Engine (0 = V-shaped, 1 = straight)",
    "Transmission (0 = automatic, 1 = manual)",
    "Number of forward gears",
    "Number of carburetors"
  ),
  file = fs::path_temp("mtcars.R")
)

# view generated documentation
file.edit(fs::path_temp("mtcars.R"))
```

### Generated Output Example

```r
#' mtcars
#'
#' @description
#' Motor Trend Car Road Tests
#'
#' @source
#' Henderson and Velleman (1981)
#'
#' @format A data frame with 32 rows and 11 columns:
#' /describe{
#'   /item{/code{mpg}}{double. Miles/(US) gallon.}
#'   /item{/code{cyl}}{double. Number of cylinders.}
#'   ...
#'}
"mtcars"
```

***

## Appendix

*Note created on [2024-06-23](2024-06-23.md) and last modified on [2024-12-13](2024-12-13.md).*

### See Also

- [R Code Index](04-RESOURCES/Code/R/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

