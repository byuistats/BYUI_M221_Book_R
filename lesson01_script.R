#Run the following code to prepare the demonstration

library(tidyverse)
library(patchwork)
library(readxl)
url <- "https://emp.byui.edu/johnsonc/Data/BYU-IdahoGradSalaries-Sampling.xlsx"
destfile <- "BYU_IdahoGradSalaries_Sampling.xlsx"
curl::curl_download(url, destfile)
salaries <- read_excel(destfile)

salaries$ssal <-  as.numeric(salaries$`Starting Salary`)
salaries_clean <- dplyr::filter(salaries, is.na(ssal) == FALSE )
n_reps = 200      # Number of reps to plot
sample_size = 50  # number of observations in each sample
n_bins = 95       # number of bins in histograms
w_bin = 2000
max_x = 250000    # Maximum value of the x-axis
dist.means <- rep(NA,n_reps)

#  create starting salaries plot, prepared for close facetting
ssplot <- ggplot(salaries_clean, aes(ssal)) + 
  geom_histogram(fill = "skyblue", binwidth = w_bin) + 
  xlim(0,max_x) +
  labs(y = "BYU-Idaho Graduates", title = "Means of Starting Salaries of BYU-Idaho Graduates") +
  theme(plot.title = element_text(hjust = 0.5)) +
  theme(axis.title.x = element_blank(), 
        axis.line.x = element_blank(),
        axis.ticks.x = element_blank(),
        axis.text.x = element_blank()) 

empty_df <- data.frame()
blank_plot <- ggplot(empty_df) + 
  geom_point() + 
  xlim(0, 10) + 
  ylim(0, 100) +
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
        axis.text.y=element_blank(),axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank())

ssplot/blank_plot

#Run from here down to perform the demo with a different sample each time

#  samples starting salaries n_reps times
for ( i in 1:n_reps)
{
  dist.means[i] <- mean(sample(salaries_clean$ssal, sample_size))
}

dist_of_means <- data.frame(dist.means)

#  Create sample means plot
smplot <- ggplot(dist_of_means, aes(dist.means)) + 
  geom_histogram(fill = "blue", bins = binwidth = w_bin) + 
  xlim(0,max_x) +
  ylim(0,100) +
  labs(x = "Starting Salary (USD)", y = ("Sample means"))

#  Use patchwork to combine the two plots easily
ssplot/smplot
