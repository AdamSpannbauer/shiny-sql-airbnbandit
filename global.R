library(data.table)
library(R.utils)
library(markdown)

source("modules/sql-editor-module.R")

# Constants
USERNAME <- "STEVENS"
PASSWORD <- "108061159953552605869538888382325472933098499"
SUCCESS_GIF <- "https://i.giphy.com/media/XreQmk7ETCak0/giphy.gif"
FAIL_GIFS <- c(
  "https://i.giphy.com/media/ftqLysT45BJMagKFuk/giphy.gif",
  "https://i.giphy.com/media/3o7TKGVqdQdyGb3aDe/giphy.gif",
  "https://i.giphy.com/media/fXnRObM8Q0RkOmR5nf/giphy.gif",
  "https://i.giphy.com/media/1zSz5MVw4zKg0/giphy.gif",
  "https://i.giphy.com/media/APKXp0zzM7k3JFOZsW/giphy.gif",
  "https://i.giphy.com/media/9fZfjaQRGWZU7BOM5f/giphy.gif",
  "https://i.giphy.com/media/U4GRHZsWogniDwt4Ui/giphy.gif"
)

# Data and some minor cleaning
calendar <- fread("data/calendar-asheville-20230319.csv.gz")
listings <- fread("data/listings-asheville-20230319.csv.gz")
reviews <- fread("data/reviews-asheville-20230319.csv.gz")

# Remove row that messes up a clue answer... bad planning idk...
listings <- listings[as.character(id) != "841304513878963200", ]

# Convert int64 to play nice with sqldf
calendar[, listing_id := as.numeric(listing_id)]

listings[, id := as.numeric(id)]
listings[, scrape_id := as.numeric(scrape_id)]

reviews[, listing_id := as.numeric(listing_id)]
reviews[, id := as.numeric(id)]

# Convert dates to play nice with sqldf
calendar[, cal_date := as.character(date)]
calendar[, date := NULL]

reviews[, review_date := as.character(date)]
reviews[, date := NULL]

listings_dates <- c(
  "last_scraped", "host_since",
  "calendar_last_scraped",
  "first_review", "last_review"
)

listings[, (listings_dates) := lapply(.SD, as.Date), .SDcols = listings_dates]
