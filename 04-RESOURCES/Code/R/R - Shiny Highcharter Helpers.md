---
creation_date: 2024-09-22
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Helper functions for Highcharter visualizations in R Shiny applications
tags:
  - Type/Code
  - Topic/R
  - Topic/Shiny
  - Topic/DataViz
  - Status/Polished
aliases:
  - Highcharter Helpers
  - R Highcharter
  - Shiny Highcharter
publish: true
---

# R - Shiny Highcharter Helpers

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Helper functions for [[Highcharter]] visualizations in Shiny applications. Includes:
- Chart options configuration
- Export button customization  
- Data label formatters (dollar, rate)
- Tooltip formatters (number, rate, dollar, custom)

## Code

### Global Options

Configure Highcharter global options (thousands separator, rjson mode):

```r
hc_opts <- function() {
  eval.parent({
    hcoptslang <- getOption("highcharter.lang")
    hcoptslang$thousandsSep <- ","
    options(highcharter.lang = hcoptslang)
    options(highcharter.rjon = TRUE)
  })
}
```

### Export Button Options

Customizable export button with PDF, image, and CSV download options:

```r
#' @importFrom htmlwidgets JS
hc_btn_options <- function() {
  list(
    contextButton = list(
      text = "Download",
      x = -25,
      menuItems = list(
        list(
          text = "Export to PDF",
          onclick = htmlwidgets::JS(
            "function () { this.exportChart({
              type: 'application/pdf'
            }); }"
          )
        ),
        list(
          text = "Export to Image",
          onclick = htmlwidgets::JS(
            "function () {
              this.exportChart(null, {
                chart: {
                  backgroundColor: '#FFFFFF'
                },
              });
            }"
          )
        ),
        list(
          textKey = 'downloadCSV',
          onclick = htmlwidgets::JS("function () {
            this.downloadCSV();
          }")
        )
      )
    )
  )
}
```

### Data Label Formatters

#### Dollar Formatter

Formats values with K/M suffixes for large numbers:

```r
#' @importFrom htmlwidgets JS
data_labels_dollar_formatter <- function() {
  htmlwidgets::JS(
    "function() {
      var y_val = this.y
      if (y_val > 1000000) {
        y_val = y_val / 1000000
        y_val = Math.round(y_val * 10) / 10
        y_val = y_val + 'M'
      } else if (y_val > 1000) {
        y_val = y_val / 1000
        y_val = Math.round(y_val * 10) / 10
        y_val = y_val + 'K'
      } else if (y_val > 1.1) {
        y_val = Math.round(y_val * 1000) / 1000
      } else {
        y_val = Math.round(y_val * 1000) / 1000
      }
      return y_val
    }"
  )
}
```

#### Rate Formatter

Formats decimal rates to 2 decimal places:

```r
#' @importFrom htmlwidgets JS
data_labels_rate_formatter <- function() {
  htmlwidgets::JS(
    "function() {
      return Math.round(this.y * 100) / 100
    }"
  )
}
```

### Tooltip Formatters

#### Simple Formatters

```r
tooltip_formatter_number <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>{point.y:,.0f}<br/>'
}

tooltip_formatter_rate <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>{point.y:,.3f}<br/>'
}

tooltip_formatter_dollar <- function() {
  '<span style="color:{point.color};font-weight:bold">\u25CF {series.name}: </span>${point.y:,.0f}<br/>'
}
```

#### Advanced Multi-Series Formatter

Handles grouped data with custom metrics and K/M formatting:

```r
#' @importFrom htmlwidgets JS
tooltip_formatter <- function() {
  htmlwidgets::JS("function() {
    var points = this.points
    var ys = points.map(function(el) {
      var out = null
      var y = el.y
      if (y > 1000000) {
        out = Math.round(y / 100000) / 10
        out = out.toLocaleString('en-US', {minimumFractionDigits: 1, maximumFractionDigits: 1})
        out = out + 'M'
      } else if (y > 1000) {
        out = Math.round(y / 100) / 10
        out = out.toLocaleString('en-US', {minimumFractionDigits: 1, maximumFractionDigits: 1})
        out = out + 'K'
      } else if (y > 2) {
        out = y.toLocaleString('en-US', {minimumFractionDigits: 0, maximumFractionDigits: 0})
      } else {
        out = y.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2})
      }
      return out
    })

    var html_out = '<b>' + this.x.name + ':</b><br/>'
    var last_metric = ''

    for (var i = 0; i < points.length; i++) {
      if (points[i].series.userOptions.my_metric !== last_metric) {
        html_out += '<b>' + points[i].series.userOptions.my_metric + ':</b><br/>'
        last_metric = points[i].series.userOptions.my_metric
      }
      html_out += '<span style=\"color:' + points[i].color + '\">\u25CF ' + 
                  points[i].series.userOptions.my_group + ': </span>' + ys[i] + '<br/>'
    }

    return html_out
  }")
}
```

## Usage Example

```r
library(highcharter)

# Apply global options
hc_opts()

# Create chart with helpers
highchart() |>
  hc_chart(type = "column") |>
  hc_add_series(data = c(1500000, 2300000, 1800000)) |>
  hc_plotOptions(
    series = list(
      dataLabels = list(
        enabled = TRUE,
        formatter = data_labels_dollar_formatter()
      )
    )
  ) |>
  hc_exporting(
    enabled = TRUE,
    buttons = hc_btn_options()
  )
```

---

## See Also

- [[03-AREAS/MOC - R|R Map of Content]]
- [[R - Shiny UI Helpers]]
- [[R - Shiny DT Table Helpers]]

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

