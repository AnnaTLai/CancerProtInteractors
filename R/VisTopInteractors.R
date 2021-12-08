#' A bar graph of the top n protein interactors.
#'
#' A function that utilize the Y2H-SCORES software functions (Banerjee et al., 2020) to find the top n interactors with the protein of interest.
#' to work.
#'
#' @return Returns a bar graph that visualizese the top n proteins generated from TopInteractors function
#'
#' @examples
#' \dontrun{
#'
#' CancerProtInteractors::TopInteractors( proteins = list_of_top_interacting_proteins)
#' }
#'
#' @references
#' @export
#' @importFrom ggplot2 ggplot

VisTopInteractors <- function(baitA, baitB, n, protein) {
  print("second function")
  return()
}

# [END]
