# Functions used to generate plots in the textbook

###############################################################################
# Makes a scatterplot of data and displays the correlation coefficient
# Inputs: 
#         n:      Sample size
#         rho:    Correlation coefficient of the data to be generated
#         seed:   Seed for random number generator
# Ouputs: 
#         Data frame of the form:  data.frame(x = c(...), y = c(...))
#                 where the data have correlation coefficient equal to rho
###############################################################################
fixed_cor <- function(n = 50, rho = 0.5, seed = 0){
  # Modified from code posted at:
  # https://stats.stackexchange.com/questions/15011/generate-a-random-variable-with-a-defined-correlation-to-an-existing-variables
  # n = length of vector
  # rho = desired correlation = cos(angle)
  if (seed == 0) {
    set.seed(round(1000*(rho)))                   # seed for random number generator
  } else {
    set.seed(seed)
  }
  x1   <- rnorm(n, 0, 1)                          # fixed given data (any distribution)
  x2   <- rnorm(n, 0, 1)                          # new random data (any distribution)
  X    <- cbind(x1, x2)                           # matrix
  Xctr <- scale(X, center=TRUE, scale=FALSE)      # centered columns (mean 0)
  Id   <- diag(n)                                 # identity matrix
  Q    <- qr.Q(qr(Xctr[ , 1, drop=FALSE]))        # QR-decomposition, just matrix Q
  P    <- tcrossprod(Q)          # = Q Q'         # projection onto space defined by x1
  x2o  <- (Id - P) %*% Xctr[ , 2]                 # x2ctr made orthogonal to x1ctr
  Xc2  <- cbind(Xctr[ , 1], x2o)                  # bind to matrix
  Y    <- Xc2 %*% diag(1/sqrt(colSums(Xc2^2)))    # scale columns to length 1
  if (abs(rho) == 1) {
    x <- rho * x1                                 # final new vector
  } else {
    x <- Y[ , 2] + (1 / tan(acos(rho))) * Y[ , 1] # final new vector
  }
  return(data.frame(x = x, y = x1))               # return a data frame
}


###############################################################################
# Makes a scatterplot of data and displays the correlation coefficient
# Inputs: 
#         df_in:        Data frame of the form:  data.frame(x = c(...), y = c(...))
#         fig_number:   The figure number displayed in the main title (1, 2, 3,...)
#         round_digits: The number of decimal places to round cor() output
# Ouputs: 
#         Scatterplot with the correlation coefficient in the main title
###############################################################################
plot_xy_cor <- function(df_in = df, fig_number, round_digits = 2){
  plot(y ~ x, data = df_in, 
       yaxt = 'n', xaxt = 'n', 
       col = "steelblue3", 
       pch = 20, 
       main = paste(
         "Figure",
         fig_number,
         "\nr =",
         round(cor(df_in$x, df_in$y), round_digits)  )
  )
}


###############################################################################
# Makes a scatterplot of data
# Inputs: 
#         df_in:        Data frame of the form:  data.frame(x = c(...), y = c(...))
#         fig_number:   The figure number displayed in the main title (1, 2, 3,...)
# Ouputs: 
#         Scatterplot with figure number in the main title
###############################################################################
plot_xy <- function(df_in = df, fig_number){
  plot(y ~ x, data = df_in, 
       yaxt = 'n', xaxt = 'n', 
       col = "steelblue3", 
       pch = 20, 
       main = paste("Figure",fig_number)
  )
}



