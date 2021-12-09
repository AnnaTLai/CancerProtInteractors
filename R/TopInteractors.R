#' Get top n protein interactors.
#'
#' A function that uses the output data from Y2H-SCORES software functions (Banerjee et al., 2020) to find the top n interactors with the protein of interest.
#' to work. POI stands for protein of interest.
#'
#' @return Returns top n intdeveractors with the protein of interest.
#'
#' @examples
#' \dontrun{
#'
#' CancerProtInteractors::VisTopInteractors(Y2H_output = data_structure,
#'                                       n = 10)
#' }
#'
#' @references
#' Valeria Velásquez-Zapata, J Mitch Elmore, Sagnik Banerjee, Karin S Dorman, Roger P Wise (2021) Next-generation yeast-two-hybrid analysis with Y2H-SCORES identifies novel interactors of the MLA immune receptor. PLoS Comput Biol 17(4): e1008890. \href{https://doi.org/10.1371/journal.pcbi.1008890}{Link}
#' Sagnik Banerjee, Valeria Velásquez-Zapata, Gregory Fuerst, J Mitch Elmore, Roger P Wise (2020) NGPINT: a next-generation protein–protein interaction software. Briefings in Bioinformatics: bbaa351, \href{https://doi.org/10.1093/bib/bbaa351}{Link}
#'
#' @export
#' @importFrom ggplot2 ggplot

TopInteractors <- function(Y2H_output, n) {

  if(is.null(Y2H_output) | is.null(n)){
    message("No input for Y2H_output is defined. Please input a valid dataset.")
    return()

    }else if (is.null(n) | !is.numeric(n)){
    message("No number of proteins n specified or input n is not a number. Using 10 as the default.")
    n <- 10
  }

  top_n <- Y2H_output %>%
    select(prey, Borda_scores) %>%
    as.data.frame() %>%
    arrange(desc(Borda_scores))

  return(top_n[1:n,])
}

# [END]

# Testing
# view(TopInteractors(Y2HSCORES_output, 20))

library(tidyverse)
proteins <- TopInteractors(Y2HSCORES_output, 20)
