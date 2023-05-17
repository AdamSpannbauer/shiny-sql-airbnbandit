library(data.table)
library(R.utils)
library(markdown)

source("modules/sql-editor-module.R")

calendar <- fread("data/calendar-asheville-20230319.csv.gz")
listings <- fread("data/listings-asheville-20230319.csv.gz")
reviews <- fread("data/reviews-asheville-20230319.csv.gz")

USERNAME <- "STEVENS"
PASSWORD <- "108061159953552605869538888382325472933098499"
