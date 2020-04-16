library(dplyr)
library(stringr)
range <- 95:101
lines <- function(id) {
  post_url <- paste("https://jsonplaceholder.typicode.com/posts/", id)
  data <- jsonlite::fromJSON(post_url, simplifyVector = F)
  data$body %>% str_count("\n")
}
print(paste("lines: ", sapply(range, lines) %>% sum))

