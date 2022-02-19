# R Function for a Hypothesis Test and Confidence Interval for One Proportion

one_prop_test <- function(x, n, p = .5, alternative = "two.sided", conf.level = .95) {
  
  phat <- x / n
  sd <- sqrt((p * (1 - p)) / n)
  z.score = (phat - p) / sd
  zstar <- round(abs(qnorm((1 - (conf.level))/2)),3)
  
  
  if ( alternative == "two.sided" ) {
    pval <- 2 * signif(pnorm(abs(z.score), lower.tail = FALSE), 3)
    test <- "not equal to "
    lowconf  <- round((phat - zstar * sqrt((phat * (1 - phat)) / n)), 3)
    highconf <- round((phat + zstar * sqrt((phat * (1 - phat)) / n)), 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z.score), 3)
    test <- "less than "
    lowconf  <- "-INF"
    highconf <- round((phat + zstar * sqrt((phat * (1 - phat)) / n)), 3)
  } else if ( alternative == "greater") {
    pval <- signif(pnorm(z.score, lower.tail = FALSE), 3)
    test <- "greater than "
    lowconf  <- round((phat - zstar * sqrt((phat * (1 - phat)) / n)), 3)
    highconf <- "INF"
  }
  
  barplot(c(x, n - x), 
          names.arg = c("Success", "Failure"), 
          ylim = range(pretty(c(0,n))), 
          main = "Plot of Proportions",
          col = c("darkolivegreen4", "tan3"))
  cat( "\n\n    One Proportion z-Test    \n",
       "\n   Check for normality of p\U0302:    ",
       "\nHypothesis Test:",
       "\nnp = ", n * p,
       "\nn(1-p) = ", n * (1 - p),
       "\nConfidence Interval: ",
       "\nnp\U0302 = ", n * phat,
       "\nn(1-p\U0302) = ", n * (1 - phat))
  if (n * p <10 || n * (1 - p) < 10) {
    cat("\nTesting requirements are not met.")
  }
  
  
  cat( 
    "\n\n  Hypothesis Test and Confidence Intervals",
    "\nz = ", round(z.score,4),", p-value = ", pval,
    "\nAlternative hypothesis: True population proportion is ", test, p, 
    "\n", (100 *conf.level), " percent confidence interval: ",
    "\n  ",lowconf, ", ", highconf,
    "\nSample Estimates: ",
    "\np\U0302 = ", signif(phat, 3),
    "\n", sep = ""
  )
}