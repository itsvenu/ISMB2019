## code to prepare `DATASET` dataset goes here

ismb_dat2019 <- readRDS("../ismb_dat2019.rds")

usethis::use_data(ismb_dat2019, overwrite = TRUE)
