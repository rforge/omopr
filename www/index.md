# omopr: OMOP CDM database querying using tidyverse tools

## Overview

This small package contains a few utility functions for querying electronic health record (EHR) data in [OMOP Common Data Model](https://www.ohdsi.org/data-standardization/the-common-data-model/) databases using a `tidyverse` approach based on `dbplyr` lazy tibble references. This allows efficient in-database querying and data wrangling without explicit writing of SQL queries. 

The main substantive content of this package is a function, `concept_names`, which joins a given lazy tibble reference against the CDM `concept` table to add in human readable concept names. The package should work with any version of the OMOP CDM.

## Install

```r
install.packages("omopr", repos="http://R-Forge.R-project.org")
```

## Documentation

```r
vignette("omopr")
```

## Development

[R-Forge development page](https://r-forge.r-project.org/R/?group_id=2400)

