# MDMICA

[![Travis-CI Build Status](https://travis-ci.org/zejin/MDMICA.svg?branch=master)](https://travis-ci.org/zejin/MDMICA.svg?branch=master)

## Overview

**MDMICA** provides independent component analysis methods based on mutual dependence measures.

The two main parts are:
- applying mutual dependence measures
- initializing local optimization methods

## Applying mutual dependence measures

The mutual dependence measures:
- complete measure based on complete V-statistics
- simplified complete measure based on incomplete V-statistics
- asymmetric measure based on distance covariance
- symmectric measure based on distance covariance

## Initializing local optimization methods

The initialization methods:
- Latin hypercube sampling
- Bayesian optimization

## Installation

``` r
# Install the released version from CRAN
install.packages("MDMICA")

# Or the development version from GitHub:
# install.packages("MDMICA")
devtools::install_github("zejin/MDMICA")
```




