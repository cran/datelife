## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
options(rmarkdown.html_vignette.check_title = FALSE) 

## ----setup--------------------------------------------------------------------
library(datelife)

## -----------------------------------------------------------------------------
query1 <- make_datelife_query(input = "Canis")

## -----------------------------------------------------------------------------
query10 <- make_datelife_query(input = rep("Canis", 10))

## -----------------------------------------------------------------------------
query10

## -----------------------------------------------------------------------------
make_datelife_query2(input = c("Canis", "werewolf", "jupiter"))

## -----------------------------------------------------------------------------
make_datelife_query2(input = "Canis mesomelas elongae")

all_subspecies <- c("Canis mesomelas elongae", "Canis mesomelas elongae")
make_datelife_query2(input = all_subspecies)

one_subspecies <- c("Canis mesomelas elongae", "Canis adustus", "Lycalopex fulvipes")
make_datelife_query2(input = one_subspecies)


## -----------------------------------------------------------------------------
make_datelife_query2(input = c("Aotus", "Poa", "Arabidopsis"))

## -----------------------------------------------------------------------------
make_datelife_query2(input = c("Aotus", "Insulacebus", "Microcebus"))

## ----eval = FALSE-------------------------------------------------------------
#  rotl::tnrs_contexts()
#  
#  make_datelife_query2(input = c("Aotus", "Insulacebus", "Microcebus"), context_name = "Mammals")

## -----------------------------------------------------------------------------
make_datelife_query2(input = "Canis",
                     get_spp_from_taxon = TRUE,
                     reference_taxonomy = "ott")

## -----------------------------------------------------------------------------
make_datelife_query2(input = c("Canis", "Elephas"),
                     get_spp_from_taxon = TRUE,
                     reference_taxonomy = "ott")

## -----------------------------------------------------------------------------
make_datelife_query2(input = c("Mus", "Mus musculus"),
                     get_spp_from_taxon = c(TRUE, FALSE),
                     reference_taxonomy = "ott")

## -----------------------------------------------------------------------------
get_opentree_species()

get_opentree_species(taxon_name = c("Canis", "Elephas"))

get_opentree_species(ott_id = c(372706, 541927))

# TOFIX:
# datelife::get_opentree_species(taxon_name = "Canis", ott_id = 541927)

## -----------------------------------------------------------------------------
get_opentree_species(taxon_name = "Canis")

## -----------------------------------------------------------------------------
get_opentree_species(taxon_name = "Canis", synth_tree_only = FALSE)


## -----------------------------------------------------------------------------
get_opentree_species(ott_id = 541927)

## -----------------------------------------------------------------------------
get_opentree_species(ott_id = 541927, synth_tree_only = FALSE)

## -----------------------------------------------------------------------------
ott_ids <- c(541927, 100)

# TODO: make a function out of the following code
# then it can replace code inside datelife_query_get_spp, section # getting species
species_list <- lapply(ott_ids,
                       function(x) {
                         datelife::get_opentree_species(ott_id = x,
                                              synth_tree_only = TRUE)
                        })
return_names <- unlist(sapply(species_list, "[", "tnrs_names"))
return_ott_ids <- unlist(sapply(species_list, "[", "ott_ids"))
names(return_names) <- return_ott_ids
names(return_ott_ids) <- return_names

list(tnrs_names = return_names,
     ott_ids = return_ott_ids)


