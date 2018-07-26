# Wordclouding: version .5 of how to automagicallhy make wordclouds from googlesheets
library("tidvyerse")
library("googlesheets")
library("wordcloud")
library(wordcloud2)
library(tidytext)
library(showtext)
library(svglite)

sioban_colors <- c(
  "#355e3b",
  "#457b9d",
  "#a8dadc",
  "#e63946"
  )

background_color = "#f1faee"

gs_auth()
sioban_key <- gs_url("https://docs.google.com/spreadsheets/d/1FDl2eS12CepKzLtsrH1yuLXzZVci5316oT3J8LfYmEA/edit#gid=621434441")

sioban_words <- gs_read(sioban_key)

words_untidy <- sioban_words[2]
names(words_untidy) <- "text"

sincere_words_messy <- sioban_words[3]
names(sincere_words_messy) <- "text"

