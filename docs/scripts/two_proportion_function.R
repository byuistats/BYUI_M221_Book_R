# R Function for a Hypothesis Test and Confidence Interval for the Difference of Two Proportions

two_prop_test <- function(x1, x2, n1, n2, p1 = .5, p2 = .5, alternative = "two.sided", conf.level = .95) {
  
  phat <- (x1 + x2) / (n1 + n2)
  phat1 <- x1 / n1
  phat2 <- x2 / n2
  sd <- sqrt(phat * (1 - phat) * ((1 / n1) + (1 / n2)))
  z.score = (phat1 - phat2) - (p1 - p2) / sd
  zstar <- round(abs(qnorm((1 - (conf.level))/2)),3)
  
  if ( alternative == "two.sided" ) {
    pval <- 2 * signif(pnorm(abs(z.score), lower.tail = FALSE), 3)
    test <- "not equal to "
    lowconf  <- round(((phat1 - phat2) - zstar * sqrt((phat1 * (1 - phat1)) / n1) + (phat2 * (1 - phat2)) / n2), 3)
    highconf <- round(((phat1 - phat2) + zstar * sqrt((phat1 * (1 - phat1)) / n1) + (phat2 * (1 - phat2)) / n2), 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z.score), 3)
    test <- "less than "
    lowconf  <- "-INF"
    highconf <- round(((phat1 - phat2) + zstar * sqrt((phat1 * (1 - phat1)) / n1) + (phat2 * (1 - phat2)) / n2), 3)
  } else if ( alternative == "greater") {
    pval <- signif(pnorm(z.score, lower.tail = FALSE), 3)
    test <- "greater than "
    lowconf  <- round(((phat1 - phat2) - zstar * sqrt((phat1 * (1 - phat1)) / n1) + (phat2 * (1 - phat2)) / n2), 3)
    highconf <- "INF"
  }
  
  cat("\n\n    Check for normality of p\U0302s:    \n",
      "\nHypothesis Test:",
      "\nn\U2081p\U2081 = ", n1 * p1, "n\U2082p\U2082 = ", n2 * p2,
      "\nn\U2081(1-p\U2081) = ", n1 * (1 - p1), "n\U2082(1-p\U2082) = ", n2 * (1 - p2),
      "\nConfidence Interval: ",
      "\n\U2081np\U0302\U2081 = ", n1 * phat1, "n\U2082p\U0302\U2082 = ", n2 * phat2,
      "\nn\U2082(1-p\U0302\U2081) = ", (n1 * (1 - phat1)), "\nn\U2082(1-p\U0302\U2082) = ", (n2 * (1 - phat2)))
  if (n1 * p1 < 10 || n1 * (1 - p1) < 10 || n2 * p2 < 10 || n2 * (1 - p2) < 10 ) {
    cat("\nTesting requirements are not met.")
  }
  
  cat( 
    "\n\n    Two Proportion z-Test    \n",
    "\nz = ", round(z.score,4),", p-value = ", pval,
    "\nAlternative hypothesis: True population proportion is ", test, (p1-p2), 
    "\n", (100 * conf.level), " percent confidence interval: ",
    "\n  ",lowconf, ", ", highconf,
    "\nSample Estimates: ",
    "\np\U0302\U2081 = ", signif(phat1, 3), " p\U0302\U2082 = ", signif(phat2, 3),
    "\n", sep = ""
  )
}
