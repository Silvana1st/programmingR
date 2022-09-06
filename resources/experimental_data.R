##################################################################################
# NAME:         experimental_data.R
# AUTHOUR:      Dr. Alan Davies
# DATE:         20/07/2022
# INSTITUTION:  The University of Manchester
# DESCRIPTION:  File containing various helper functions for processing data frame
##################################################################################

library(tidyverse)

# Function to open data file
openDataFile <- function(file_path)
{
    data_file <- read.csv(file_path, header = TRUE, na.strings = c(" ", "NA", "-"))
    return(data_file)
}

# Function to calculate percentage score
calculatePercentage <- function(data_frame, col_name, total_mark)
{
   # print(data_frame[[col_name]])
    return(mutate(data_frame, pc = (data_frame[[col_name]] / total_mark) * 100))
}

# Function to determin the maximum mark
getMaximumMark <- function(data_frame, col_name)
{
    return(max(data_frame[[col_name]]))
}

