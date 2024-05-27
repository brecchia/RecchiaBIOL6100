library(ggplot2)

#######
# FUNCTION: get_data
# read .csv file
# input: .csv file
# output: data frame
#------------------
get_data <- function(file_name=NULL) {
  if(is.null(file_name)) {
    data_frame <- data.frame((ID=101:110), 
                            varA=runif(10), 
                            varB=runif(10))
  } else {
    data_frame <- read.table(file=file_name,
                             header=TRUE,
                             sep=",",
                             comment.char="#")
  }
  return(data_frame)
}

#######
# FUNCTION: calculate_stuff
# fit an ordinary least squares regression
# input: x and y vectors of same length
# output: entire summary of regression model
#------------------
calculate_stuff <- function(x_var=runif(10),
                            y_var=runif(10)) {
  data_frame <- data.frame(x_var,y_var)
  reg_model <- lm(y_var ~ x_var)
  return(summary(reg_model))
}

#######
# FUNCTION: summarize_output
# pull elements from model summary list
# input: list from summary call of lm
# output: vector of regression residuals
#------------------
summarize_output <- function(z=NULL) {
  if(is.null(z)) {
    z <- summary(lm(runif(10)~runif(10)))
  }
    return(z$residuals)
}

#######
# FUNCTION: graph_results
# one line description
# input: x
# output: x
#------------------
graph_results <- function(x_var=runif(10),
                          y_var=runif(10)) {
  data_frame <- data.frame(x_var,y_var)
p1 <- ggplot2::ggplot(data_frame) + aes(x=x_var,y=y_var) + geom_point() + stat_smooth(method="lm")
  suppressMessages(print(p1))
}