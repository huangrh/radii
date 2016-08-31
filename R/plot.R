#' ggplot2 with a user defined theme
#'
#' The theme has been modified to the publication style.
#'
ggplot <- function() {
    require(ggplot2)
    g <- ggplot2::ggplot() + theme_classic()
    g <- g + theme(plot.title= element_text(size=15, colour="blue", hjust=0.5))
    g <- g + theme(axis.text = element_text(size=12, colour="black"))
    g <- g + theme(axis.line.x=element_line(size=0.5,colour='black',linetype="solid"))
    g <- g + theme(axis.line.y=element_line(size=0.5,colour="black",linetype="solid"))
    # g <- g + theme(panel.background=element_rect(fill="grey"))
}
