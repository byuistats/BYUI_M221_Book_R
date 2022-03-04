# R Function for a Hypothesis Test and Confidence Interval for One Proportion

one.prop.test <- function(x, n, p = .5, alternative = "two.sided", conf.level = 0.95, display = "all") {
  
  phat <- x / n
  std_dev <- sqrt(p * (1 - p) / n)
  std_error <- sqrt(phat * (1 - phat) / n)
  z_score <- (phat - p) / std_dev
  
  if ( alternative == "two.sided" ) {
    pval <- signif(2 * pnorm(abs(z_score), lower.tail = FALSE), 3)
    alternative_words <- "not equal to "
    zstar <- qnorm(1 - (1 - conf.level)/2)
    moe <- zstar * std_error
    lower_limit  <- signif(phat - moe, 3)
    upper_limit <- signif(phat + moe, 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z_score), 3)
    alternative_words <- "less than "
    zstar <- qnorm(conf.level)
    moe <- zstar * std_error
    lower_limit  <- "-Inf"
    upper_limit <- signif(phat + moe, 3)
  } else if ( alternative == "greater") {
    pval <- signif(1 - pnorm(z_score), 3)
    alternative_words <- "greater than "
    zstar <- qnorm(conf.level)
    moe <- zstar * std_error
    lower_limit  <- signif(phat - moe, 3)
    upper_limit <- "Inf"
  }
  
  if (display != "test") {
    # Prepare data for plot
    plot_data <- cbind("Observed Data" = c(x, n - x))
    # Transform the data into proportions
    data_percentage <- apply(plot_data, MARGIN = 2, function(x){x/sum(x,na.rm=T)})
    par(mfrow=c(1,2))
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
  }
  
  if (display != "plot") {
    cat("       One Proportion z-Test \n",
        "\ncheck for normality of p\U0302:",
        "\n  hypothesis test:",
        "\n          np =", n * p,
        "\n      n(1-p) =", n * (1 - p),
        "\n  confidence interval: ",
        "\n          np\U0302 =", n * phat,
        "\n      n(1-p\U0302) =", n * (1 - phat),
        "\n\n",
        # "Hypothesis Test and Confidence Interval",
        "\ndata:  x = ", x, ", n = ", n,
        "\nz = ", signif(z_score, 4),", p-value = ", pval,
        "\nalternative hypothesis: true proportion is ", alternative_words, p,
        "\n", (100 * conf.level), " percent confidence interval: ",
        "\n      ",lower_limit, ", ", upper_limit,
        "\nsample estimate: ",
        "\np\U0302 = ", signif(phat, 3), "\n", 
        sep = ""
    )
  }
}



# R Function for a Hypothesis Test and Confidence Interval for the Difference of Two Proportions

two.prop.test <- function(x1, n1, x2, n2, p1_minus_p2 = 0, alternative = "two.sided", conf.level = 0.95, display = "all") {
  
  phat <- (x1 + x2) / (n1 + n2)
  phat1 <- x1 / n1
  phat2 <- x2 / n2
  std_error <- sqrt(phat * (1 - phat) * ((1 / n1) + (1 / n2)))
  z_score <- ((phat1 - phat2) - (p1_minus_p2)) / std_error
  
  if ( alternative == "two.sided" ) {
    pval <- signif(2 * pnorm(abs(z_score), lower.tail = FALSE), 3)
    alternative_words <- "not equal to "
    zstar <- qnorm(1 - (1 - conf.level)/2)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lower_limit  <- signif((phat1 - phat2) - moe, 3)
    upper_limit <- signif((phat1 - phat2) + moe, 3)
  } else if ( alternative == "less") {
    pval <- signif(pnorm(z_score), 3)
    alternative_words <- "less than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lower_limit  <- "-Inf"
    upper_limit <- signif((phat1 - phat2) + moe, 3)
  } else if ( alternative == "greater") {
    pval <- signif(1 - pnorm(z_score), 3)
    alternative_words <- "greater than "
    zstar <- qnorm(conf.level)
    moe <- zstar * sqrt( phat1 * (1 - phat1) / n1 + phat2 * (1 - phat2) / n2 )
    lower_limit  <- signif((phat1 - phat2) - moe, 3)
    upper_limit <- "Inf"
  } # end if
  
  if (display != "test") {
    # Prepare data for plot
    plot_data <- cbind("Group 1" = c(x1, n1 - x1),
                       "Group 2" = c(x2, n2 - x2))
    # Transform the data into proportions
    data_percentage <- apply(plot_data, MARGIN = 2, function(x){x/sum(x,na.rm=T)})
    # Make a stacked barplot--> it will be in %!
    barplot(data_percentage, col=c("darkolivegreen4","tan3"), border="white",
            legend.text = c("Successes", "Failures"), ylab = "Sample Proportions",
            ylim = range(pretty(c(0,1))),
            main = "Side-by-Side Bar Charts"
    )
  } # end if
  
  if (display != "plot") {
    cat("       Two Proportion z-Test  \n\n",
        "check for normality of p\U0302s: \n",
        "      n\U2081p\U0302\U2081 =", x1, "\n  n\U2081(1-p\U0302\U2081) =", (n1 - x1), "\n",
        "      n\U2082p\U0302\U2082 =", x2, "\n  n\U2082(1-p\U0302\U2082) =", (n2 - x2),
        "\n\n",
        # "Hypothesis Test and Confidence Interval \n",
        "data:  x\U2081 = ", x1, ", n\U2081 = ", n1, ", x\U2082 = ", x2, ", n\U2082 = ", n2, "\n",
        "z = ", signif(z_score, 4),", p-value = ", pval, "\n",
        "alternative hypothesis: true proportion is ", alternative_words, (p1_minus_p2), "\n", 
        (100 * conf.level), " percent confidence interval: ", "\n",
        "      ",lower_limit, ", ", upper_limit, "\n",
        "sample estimates: \n",
        "p\U0302\U2081 = ", signif(phat1, 3), ", p\U0302\U2082 = ", signif(phat2, 3), "\n", 
        sep = ""
    )
  } # end if
}