
<!-- README.md is generated from README.Rmd. Please edit that file -->
fost: Formatting and Style Templates for (biomedical) journal submission
========================================================================

Similar to [rticles](https://github.com/rstudio/rticles) package, but targetted to biomedical journals. Provides draft rmarkdown files for each journal and reference word documents that are tailored to the specifications of the journal.

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("lwjohnst86/fost")
```

Usage
=====

To create a draft of the journals outline as an R Markdown file, create either through the `File -> New File -> R Markdown -> From Template` or run the command:

``` r
# Find the specific journal name using the command `fost::templates()`. Example 
# for Diabetes Care:
rmarkdown::draft("manuscript", "diabetes_care", package = "fost")
```

To knit to the journal's properly formatted Word or PDF document, include this YAML option

``` yaml
# Should be of the form
# output: fost::journalname_manuscript
# Example is:
output: diabetes_care_manuscript
```

in the YAML front matter of the R Markdown file.
