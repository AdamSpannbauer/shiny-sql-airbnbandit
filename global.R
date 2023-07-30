library(data.table)
library(R.utils)
library(markdown)

source("modules/sql-editor-module.R")

calendar <- fread("data/calendar-asheville-20230319.csv.gz")
listings <- fread("data/listings-asheville-20230319.csv.gz")
reviews <- fread("data/reviews-asheville-20230319.csv.gz")

# Convert int64 to play nice with sqldf
calendar[, listing_id := as.character(listing_id)]

listings[, id := as.character(id)]
listings[, scrape_id := as.character(scrape_id)]

reviews[, listing_id := as.character(listing_id)]
reviews[, id := as.character(id)]


# Convert dates to play nice with sqldf
calendar[, date := as.Date(date)]
reviews[, date := as.Date(date)]

listings_dates <- c(
  "last_scraped", "host_since",
  "calendar_last_scraped",
  "first_review", "last_review"
)

listings[, (listings_dates) := lapply(.SD, as.Date), .SDcols = listings_dates]

USERNAME <- "STEVENS"
PASSWORD <- "108061159953552605869538888382325472933098499"
