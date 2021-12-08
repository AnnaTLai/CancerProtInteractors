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
#'                                       n = 10,
#'                                       protein = name_of_POI)
#' }
#'
#' @references
#' Valeria Velásquez-Zapata, J Mitch Elmore, Sagnik Banerjee, Karin S Dorman, Roger P Wise (2021) Next-generation yeast-two-hybrid analysis with Y2H-SCORES identifies novel interactors of the MLA immune receptor. PLoS Comput Biol 17(4): e1008890. \href{https://doi.org/10.1371/journal.pcbi.1008890}{Link}
#' Sagnik Banerjee, Valeria Velásquez-Zapata, Gregory Fuerst, J Mitch Elmore, Roger P Wise (2020) NGPINT: a next-generation protein–protein interaction software. Briefings in Bioinformatics: bbaa351, \href{https://doi.org/10.1093/bib/bbaa351}{Link}
#'
#' @export
#' @importFrom ggplot2 ggplot

TopInteractors <- function(Y2H_output, n, protein) {
  print("first function")
  return()
}

# [END]
