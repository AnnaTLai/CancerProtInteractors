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
#' CancerProtInteractors::VisTopInteractors( proteins = list_of_top_interacting_proteins <dataframe consist of prey, Borda_scores>,
#'                                           poi = name of protein of interest <chr>)
#' }
#'
#' @references
#' @export
#' @importFrom ggplot2

VisTopInteractors <- function(proteins, poi) {

  if(is.null(proteins) | is.null(poi)){
    message("No input for proteins is defined. Please input a valid dataset.")
    return()

  }else if (is.null(poi)){
    message("No name of protein of interest is provided. Using poi as the default.")
    poi <- 'poi'
  }

  plot <- ggplot2::ggplot(data=proteins , aes(x=reorder(prey, Borda_scores), y=Borda_scores)) +
    geom_bar(stat="identity", width=0.7 ,position="dodge")+
    labs(title= paste0("Top ", length(proteins$prey), " protein interactors for ", poi))+
    xlab(paste0("Protein interactors of ", poi))+
    ylab("Ineracting strength \n (Borda Score calcualted by Y2HSCORES)")+
    theme(axis.text.x = element_text(vjust = 0.5, hjust=1)) +
    coord_flip()

  return(plot)
}

# [END]

VisTopInteractors(proteinss, "example_poi")
view(proteins$Borda_scores)
view(Y2HSCORES_output)
library(ggplot2)

