# 📰 SEM crime prediction in R
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

## Hypotheses
H1: Demographics, education, and prior arrests significantly predict current criminal behavior.<br>
H2: Prior arrests significantly predict sentencing outcomes.<br>

### Model
Constructs were defined and composites created in two steps:

1. **Measurement model** <i>(outer model)</i>: Checks validity and reliability of constructs.
2. **Structural model** <i>(inner model)</i>: Examines relationships between constructs.<br>
Below is the proposed relationship between the constructs.<br>
<img width="385" height="298" alt="Screenshot 2025-08-24 at 5 55 02 PM" src="https://github.com/user-attachments/assets/3ba10648-b9b0-43f8-9ec8-42f2bc067875"/>

### Path Coefficient Matrix (Initial Results)
The matrix shows that EDUCATION and DEMOGRAPHIC have little to no effect on CURRENT_CRIME, while PRIOR_ARRESTS strongly increase the likelihood of CURRENT_CRIME (0.798). <br>Another surprising relationship is that PRIOR_ARRESTS strongly decrease SENTENCING_OUTCOMES (strong negative relationship), which is likely due to the artificially generated nature of the data.<br>
<img width="532" height="217" alt="Screenshot 2025-08-24 at 11 55 12 PM" src="https://github.com/user-attachments/assets/823184c9-dfec-4a9c-91e8-3d54af8be7cd" />

### Accuracy
After defining the constructs and their composites, the PLS-SEM model was estimated using SEMinR.
#### Reliability and validity of constructs.
<br> <i>Acceptable thresholds: α, ρC, ρA ≥ 0.7 → acceptable reliability; AVE ≥ 0.5 → acceptable convergent validity</i>
<br> Results:<br>
      - EDUCATION showed strong reliability and convergent validity (α, ρC  > 0.7,AVE > 0.5)<br>
      - PRIOR_ARRESTS has moderate reliability, but weak validity (borderline).<br>
      - DEMOGRAPHIC, CURRENT_CRIME, and SENTENCING_OUTCOMES showed weak reliability or validity, probably require revising their indicators.<br>
<br><img width="645" height="422" alt="Screenshot 2025-08-24 at 6 35 21 PM" src="https://github.com/user-attachments/assets/bac14100-9825-4b21-ba3d-4bac39964cb9" />


### Bootstrapping Results
