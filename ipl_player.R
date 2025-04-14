url <- 'https://en.wikipedia.org/wiki/Indian_Premier_League'

# wikitable

# extract html 

url_html <- read_html(url)

#table extraction

url_tables <- url_html %>% html_table(fill = TRUE)

#extract relevant table

top_players <- url_tables[[15]]

write_csv(top_players,paste0('data/',Sys.Date(),'_top_players','.csv'))   
