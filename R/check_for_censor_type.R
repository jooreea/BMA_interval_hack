check_for_censor_type <- function(surv_formula) {
  first_cov_idx <- which(attr(terms(surv_formula), "term.labels")[1] == all.vars(surv_formula))
  if (first_cov_idx == 3){
    "right censored, follow-up time only"
  } else
    "interval censored, time and time2"
}