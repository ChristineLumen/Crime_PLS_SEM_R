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
For this analysis, I first defined the constructs and created composites for each. The process involves two main steps:

1. **Measurement model (outer model):** Assesses the validity and reliability of the constructs (latent variables) and their indicators.  
2. **Structural model (inner model):** Describes the relationships between the latent variables themselves.

### Accuracy
### Results
