# R Function for a Hypothesis Test and Confidence Interval for One Proportion

one_prop_test <- function(x, n, p = .5, alternative = "two.sided", conf.level = 0.95) {
  
  phat <- x / n
  sd <- sqrt(p * (1 - p) / n)
  sderr <- sqrt(phat * (1 - phat) / n)
  z.score = (phat - p) / sd
  
  if ( alternative == "two.sided" ) {
    pval <- signif(2 * pnorm(abs(z.score), lower.tail = FALSE), 3)
    test <- "not equal to "
    zstar <- qnorm(1 - (1 - conf.level)/2)
    moe <- zstar * sderr
    lowconf  <- signif(phat - moe, 3)
    highconf <- signif(phat + moe, 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z.score), 3)
    test <- "less than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sderr
    lowconf  <- "-Inf"
    highconf <- signif(phat + moe, 3)
  } else if ( alternative == "greater") {
    pval <- signif(1 - pnorm(z.score), 3)
    test <- "greater than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sderr
    lowconf  <- signif(phat - moe, 3)
    highconf <- "Inf"
  }
  
  barplot(c(x, n - x), 
          names.arg = c("Success", "Failure"), 
          ylim = range(pretty(c(0,n))), 
          main = "Plot of Proportions",
          col = c("darkolivegreen4", "tan3"))
  
  plot_data <- cbind("Observed Data" = c(x, n - x))
  
  # Transform the data into percentages
  data_percentage <- apply(plot_data, MARGIN = 2, function(x){x/sum(x,na.rm=T)})
  
  par(mfrow=c(1,2))
  # Make a barplot--> it will be in %!
  barplot(data_percentage, col=c("darkolivegreen4","tan3"), border="white",
          legend.text = c("Successes", "Failures"), ylab = "Sample Proportions",
          ylim = range(pretty(c(0,1))),
          main = "Bar Chart"
  )
  
  pie(data_percentage,
      col=c("darkolivegreen4","tan3"), border="white",
      labels = c("Successes", "Failures"),
      ylim = range(pretty(c(0,1))),
      main = "Pie Chart",
      clockwise = TRUE
      )
  par(mfrow=c(1,2))
          
  cat("       One Proportion z-Test \n",
       "\ncheck for normality of p\U0302:",
       "\n  hypothesis test:",
       "\n          np =", n * p,
       "\n      n(1-p) =", n * (1 - p),
       "\n  confidence interval: ",
       "\n          np\U0302 =", n * phat,
       "\n      n(1-p\U0302) =", n * (1 - phat))

  cat( 
    "\n\n",
    # "Hypothesis Test and Confidence Interval \n",
    "data:  x = ", x, ", n = ", n, "\n",
    "z = ", signif(z.score,3),", p-value = ", pval, "\n",
    "alternative hypothesis: true proportion is ", test, p, "\n", 
    (100 * conf.level), " percent confidence interval: ", "\n",
    "      ",lowconf, ", ", highconf, "\n",
    "sample estimate: ",
    "\np\U0302 = ", signif(phat, 3),
    "\n", sep = ""
  )
}