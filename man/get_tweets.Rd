% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tweets.R
\name{get_tweets}
\alias{get_tweets}
\title{Function to get tweets from time slots}
\usage{
get_tweets(my_day, start_time, end_time)
}
\arguments{
\item{my_day}{day of the conference, in format e.g. `2019-07-24`}

\item{start_time}{start time of the talk, e.g. HH:MM}

\item{end_time}{end time of the talk, e.g. HH:MM}
}
\value{
DT datatable of tweets
}
\description{
Function to get tweets from time slots
}
\examples{

library(ISMB2019)
library(magrittr)
my_day <- "2019-07-24"
start_time <- "16:00"
end_time <- "17:00"
get_tweets(my_day = my_day, start_time = start_time, end_time = end_time)
}
