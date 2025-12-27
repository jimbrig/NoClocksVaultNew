---
creation_date: 2024-06-23
modification_date: 2024-12-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - Topic/Development
  - Topic/R
  - Topic/Excel
  - Status/Complete
aliases:
  - Excel Helpers R Code
  - R Excel Functions
  - Excel Data Processing in R
description: Utility functions and packages for working with Excel files in R
cssclasses:
  - code
---

# Excel Helpers

> [!info] Code Properties
> - **Language**: R
> - **Packages**: `readxl`, `openxlsx`, `writexl`, `tidyxl`, `cellranger`
## Overview

Collection of utility functions and package references for reading, writing, and processing Excel files in R.

> [!SOURCE] Sources
> - [Excel Tool to R-Shiny App (kotamine.github.io)](https://kotamine.github.io/excel_shiny/tips-from-excel-tool-to-shiny.html)

## Packages

| Package | Purpose |
|---------|---------|
| `openxlsx` | Read/write Excel workbooks with formatting |
| `readxl` | Fast Excel file reading |
| `writexl` | Simple Excel file writing |
| `tidyxl` | Read untidy Excel files with cell metadata |
| `cellranger` | Cell range handling utilities |
| `unpivotr` | Unpivot complex Excel structures |
| `XLConnect` | Full Excel integration (Java-based) |
| `flexlsx` | Flexible Excel export |
| `rio` | General purpose import/export |
| `janitor` | Data cleaning utilities |

## Code

### General Purpose Excel Reader

```r
#' Read Excel File
#'
#' @param xl_file Path to Excel file
#' @param xl_sheet Sheet name or index
#' @param num_rows Number of rows to read (0 for all)
#' @param ... Additional arguments passed to readxl::read_excel
#'
#' @return A tibble with Excel data
#' @export
read_xl <- function(
  xl_file,
  xl_sheet,
  num_rows,
  ...
) {
  tryCatch({
    readxl::read_excel(
      xl_file,
      sheet = xl_sheet,
      n_max = if (num_rows > 0) num_rows else Inf,
      col_names = FALSE,
      col_types = "text",
      .name_repair = "minimal"
    )
  }, error = function(e) {
    cli::cli_abort("Error reading excel file: {xl_file}: {e$message}")
  })
}
```

### Search Cells for Data Start

```r
#' Find Data Start Position in Excel
#'
#' @param xl_file Path to Excel file
#' @param xl_sheet Sheet name
#' @param search_term Term to search for
#'
#' @return Named list with row and column of found cell
#' @export
find_data_start <- function(xl_file, xl_sheet, search_term) {
  cells <- tidyxl::xlsx_cells(xl_file, sheets = xl_sheet)
  
  match_cell <- cells |>
    dplyr::filter(stringr::str_detect(character, search_term)) |>
    dplyr::slice(1)
  
  if (nrow(match_cell) == 0) {
    cli::cli_abort("Search term '{search_term}' not found in sheet '{xl_sheet}'")
  }
  
  list(
    row = match_cell$row,
    col = match_cell$col,
    address = match_cell$address
  )
}
```

### Convert Cell References

```r
#' Convert Excel Cell Reference to Row/Column
#'
#' @param cell_ref Excel cell reference (e.g., "A1", "B15")
#'
#' @return Named list with row and column numbers
#' @export
parse_cell_ref <- function(cell_ref) {
  parsed <- cellranger::as.cell_addr(cell_ref)
  list(
    row = parsed$row,
    col = parsed$col
  )
}

#' Create Cell Range from Corners
#'
#' @param start_cell Starting cell reference
#' @param end_cell Ending cell reference
#'
#' @return Cell range string
#' @export
make_cell_range <- function(start_cell, end_cell) {
  cellranger::cell_limits(
    ul = cellranger::as.cell_addr(start_cell),
    lr = cellranger::as.cell_addr(end_cell)
  ) |>
    cellranger::as.range()
}
```

## Usage

```r
# read entire sheet as text
data <- read_xl("data.xlsx", "Sheet1", num_rows = 0)

# find where data starts
start_pos <- find_data_start("data.xlsx", "Sheet1", "Column Header")

# read from specific range
range_data <- readxl::read_excel(
  "data.xlsx",
  sheet = "Sheet1",
  range = cellranger::cell_limits(c(start_pos$row, 1), c(NA, NA))
)
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

