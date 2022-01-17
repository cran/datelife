## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
library(datelife)

## ---- eval = FALSE------------------------------------------------------------
#  datelife::make_datelife_query(input = c("Delphinus_delphis",
#                                          "Gallus gallus",
#                                          "elephas Maximus",
#                                          "felis_catus",
#                                          "homo-sapiens"))

## ---- eval = FALSE------------------------------------------------------------
#  datelife::make_datelife_query(input = "Delphinus_delphis,
#                                         Gallus gallus,
#                                         elephas Maximus,
#                                         felis_catus,
#                                         homo-sapiens")

## ---- eval = FALSE------------------------------------------------------------
#  newick <- "((Elephas_maximus,(Homo_sapiens,(Delphinus_delphis, Felis_silvestris))), Gallus_gallus);"
#  datelife::make_datelife_query(input = newick)

## ---- eval = FALSE------------------------------------------------------------
#  phylo <- ape::read.tree(text = newick)
#  datelife::make_datelife_query(input = phylo)

## ---- eval = FALSE------------------------------------------------------------
#  my_datelife_query <- datelife::make_datelife_query(input = phylo)
#  #> ... Making a DateLife query.
#  #> ... Phylo-processing 'input'.
#  #> 'input' is a phylogeny and it is correcly formatted.
#  #> DateLife query done!

## ---- eval = FALSE------------------------------------------------------------
#  datelife::datelife_search(input = my_datelife_query)

## ---- eval = FALSE------------------------------------------------------------
#  citations <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "citations")

## ---- eval = FALSE------------------------------------------------------------
#  mrca <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "mrca")

## ---- eval = FALSE------------------------------------------------------------
#  newick_all <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "newick_all")

## ---- eval = FALSE------------------------------------------------------------
#  newick_sdm <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "newick_sdm")

## ---- eval = FALSE------------------------------------------------------------
#  newick_median <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "newick_median")

## ---- eval = FALSE------------------------------------------------------------
#  phylo_sdm <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "phylo_sdm")

## ---- eval = FALSE------------------------------------------------------------
#  phylo_median <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "phylo_median")

## ---- eval = FALSE------------------------------------------------------------
#  phylo_all <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "phylo_all")

## ---- eval = FALSE------------------------------------------------------------
#  phylo_biggest <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "phylo_biggest")

## ---- eval = FALSE------------------------------------------------------------
#  html <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "html")

## ---- eval = FALSE------------------------------------------------------------
#  data_frame <- datelife::datelife_search(input = my_datelife_query,
#                            summary_format = "data_frame")

