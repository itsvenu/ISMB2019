
#' Function to get tweets from time slots
#'
#' @param my_day day of the conference, in format e.g. `2019-07-24`
#' @param start_time start time of the talk, e.g. HH:MM
#' @param end_time end time of the talk, e.g. HH:MM
#' @export
#' @return DT datatable of tweets
#' @examples
#'
#' library(ISMB2019)
#' library(magrittr)
#' my_day <- "2019-07-24"
#' start_time <- "16:00"
#' end_time <- "17:00"
#' get_tweets(my_day = my_day, start_time = start_time, end_time = end_time)

get_tweets <- function(my_day, start_time, end_time){

  start_time <- paste0(start_time, ":00")
  end_time <- paste0(end_time, ":00")

  talk_start <- lubridate::as_datetime(x = paste0(my_day, " ", start_time))
  talk_end <- lubridate::as_datetime(x = paste0(my_day, " ", end_time))

  talk_dat <- ismb_dat2019 %>%
    dplyr::filter(created_at >= get("talk_start") & created_at <= get("talk_end")) %>%
    dplyr::arrange(created_at) %>%
    dplyr::rename(time = created_at,
                  handle = screen_name,
                  tweet = text)

  my_res <- DT::datatable(as.data.frame(talk_dat))

  return(my_res)
}

