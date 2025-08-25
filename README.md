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

1. **Measurement model** <i>(outer model)</i>: Checks validity and reliability of constructs.
2. **Structural model** <i>(inner model)</i>: Examines relationships between constructs.<br>
Below is the proposed relationship between the constructs.<br>
<img width="385" height="298" alt="Screenshot 2025-08-24 at 5 55 02 PM" src="https://github.com/user-attachments/assets/3ba10648-b9b0-43f8-9ec8-42f2bc067875" />

### Accuracy
After defining the constructs and their composites, the PLS-SEM model was estimated using SEMinR.
1.Reliability and validity of constructs.
<br> Acceptable thresholds: α, ρC, ρA ≥ 0.7; AVE ≥ 0.5
<br> Results:<br>
      - EDUCATION showed strong reliability and convergent validity (α, ρC  > 0.7,AVE > 0.5)<br>
      - PRIOR_ARRESTS has moderate reliability, but weak validity - borderline.<br>
      - DEMOGRAPHIC, CURRENT_CRIME, and SENTENCING_OUTCOMES showed weak reliability or validity, probably require revising indicators.<br>
<br><img width="645" height="422" alt="Screenshot 2025-08-24 at 6 35 21 PM" src="https://github.com/user-attachments/assets/bac14100-9825-4b21-ba3d-4bac39964cb9" />


### Results
