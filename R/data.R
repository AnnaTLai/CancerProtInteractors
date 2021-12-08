#' Example output get from running the software Y2H-SCORES.
#'
#' This data files was not generated from real protein-protein interaction data.
#'
#' @source Banerjee et al., 2020
#'
#' @format A matrix with columns:
#' \describe{
#'  \item{prey}{First condition, under which least light was provided
#'    to plants.}
#'  \item{bait}{indicate whihc bait was used, either bait 1 or bait 2.}
#'  \item{Enrichment_score}{Third condition, the control.}
#'  \item{Specificity_score}{A caculated value that ranges from 0 - 1}
#'  \item{In_frame_score}{A caculated value.}
#'  \item{In_frame_prey_transcripts}{A caculated value.}
#'  \item{Sum_scores}{A caculated value that ranges from 0 - 1}
#'  \item{Borda_scores}{A caculated value.}
#' }
#' @examples
#' \dontrun{
#'  Y2HSCORES_output
#' }
"Y2HSCORES_output"
