# R Function for a Hypothesis Test and Confidence Interval for the Difference of Two Proportions

two_prop_test <- function(x1, n1, x2, n2, p1_minus_p2 = 0, alternative = "two.sided", conf.level = 0.95) {
  
  phat <- (x1 + x2) / (n1 + n2)
  phat1 <- x1 / n1
  phat2 <- x2 / n2
  sd <- sqrt(phat * (1 - phat) * ((1 / n1) + (1 / n2)))
  z.score = ((phat1 - phat2) - (p1_minus_p2)) / sd
  
  if ( alternative == "two.sided" ) {
    pval <- signif(2 * pnorm(abs(z.score), lower.tail = FALSE), 3)
    test <- "not equal to "
    zstar <- qnorm(1 - (1 - conf.level)/2)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lowconf  <- signif((phat1 - phat2) - moe, 3)
    highconf <- signif((phat1 - phat2) + moe, 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z.score), 3)
    test <- "less than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lowconf  <- "-Inf"
    highconf <- signif((phat1 - phat2) + moe, 3)
  } else if ( alternative == "greater") {
    pval <- signif(1 - pnorm(z.score), 3)
    test <- "greater than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lowconf  <- signif((phat1 - phat2) - moe, 3)
    highconf <- "Inf"
  }
  
  plot_data <- cbind("Group 1" = c(x1, n1 - x1),
                     "Group 2" = c(x2, n2 - x2))
  
  # Transform the data into percentages
  data_percentage <- apply(plot_data, MARGIN = 2, function(x){x/sum(x,na.rm=T)})
  
  # Make a stacked barplot--> it will be in %!
  barplot(data_percentage, col=c("darkolivegreen4","tan3"), border="white",
          legend.text = c("Successes", "Failures"), ylab = "Sample Proportions",
          ylim = range(pretty(c(0,1))),
          main = "Side-by-Side Bar Charts"
  )
  
  cat("       Two Proportion z-Test  \n\n",
      "check for normality of p\U0302s: \n",
      "      n\U2081p\U0302\U2081 =", x1, "\n  n\U2081(1-p\U0302\U2081) =", (n1 - x1), "\n",
      "      n\U2082p\U0302\U2082 =", x2, "\n  n\U2082(1-p\U0302\U2082) =", (n2 - x2))
  
  cat( 
    "\n\n",
    # "Hypothesis Test and Confidence Interval \n",
    "data:  x\U2081 = ", x1, ", n\U2081 = ", n1, ", x\U2082 = ", x2, ", n\U2082 = ", n2, "\n",
    "z = ", signif(z.score,3),", p-value = ", pval, "\n",
    "alternative hypothesis: true proportion is ", test, (p1_minus_p2), "\n", 
    (100 * conf.level), " percent confidence interval: ", "\n",
    "      ",lowconf, ", ", highconf, "\n",
    "sample estimates: \n",
    "p\U0302\U2081 = ", signif(phat1, 3), ", p\U0302\U2082 = ", signif(phat2, 3), "\n", 
    sep = ""
  )
}