# 📰 SEM analysis crime/arrest pathways in R
### Project Overview
This project analyzes how demographics, education, and prior arrests influence the likelihood of committing a crime, using Structural Equation Modeling (SEMinR) in R.

### Data Source
The dataset used for this analysis was downloaded from Statistical Horizons. It is likely artificially generated rather than real, but works well for the scope of this project. The dataset contains 78 columns and 1,466 rows.<br>
Source: <a href="https://statisticalhorizons.com/resources/data-sets/"> Statistical Horizons</a>

### Tools
**R and RStudio**
  - `library(seminr)` – for building PLS-SEM model
  - `library(haven)` – for importing datasets (I had .dat file)
  - `estimate_pls()` – to estimate the PLS model
  - `bootstrap_model()` – to test the significance of path coefficients

## Running Model
Constructs were defined and composites created in two steps:

1. **Measurement model** <i>(outer model)<i>: Checks validity and reliability of constructs.
2. **Structural model** <i>(inner model)<i>: Examines relationships between constructs.
Below is the proposed relationship between the constructs.

### Accuracy
### Results
