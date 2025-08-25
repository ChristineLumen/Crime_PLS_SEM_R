library(seminr)
library(haven)
data<-read_dta("arrests.dta")
write.csv(data, "arrests.csv", row.names = FALSE)

arrests_mm <- constructs(
  composite("DEMOGRAPHIC", (c("age", "sex", "race", "mar"))),
  composite("EDUCATION", (c("ed", "higrade", "edcomb"))),
  composite("PRIOR_ARRESTS", (c("prvarrst", "numarst", "numconv", "frstarrmo", "frstarrday", "frstarryr"))),
  composite("CURRENT_CRIME", (c("curcrim", "crime", "crimper", "crimprop", "crimoth", "type"))),
  composite("SENTENCING_OUTCOMES", (c("yrsent", "length", "paroled")))
)

arrests_sm <- relationships(
  paths(from = "DEMOGRAPHIC", to = c("CURRENT_CRIME")),
  paths(from = "EDUCATION", to = c("CURRENT_CRIME")),
  paths(from = "PRIOR_ARRESTS", to = c("SENTENCING_OUTCOMES", "CURRENT_CRIME"))
)

simple_model<-estimate_pls(
  data=data,
  measurement_model =arrests_mm,
  structural_model = arrests_sm
)
summary_simple<-summary(simple_model)
summary_simple
plot(summary_simple$reliability)
summary_simple$total_effects
boot_simple<-bootstrap_model(
  seminr_model= simple_model,
  nboot=1000, 
  cores =NULL,
  seed =123
)
summary_boot<-summary(boot_simple)
summary_boot
plot(boot_simple)
