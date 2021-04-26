#' BioSamplesCatches
#'
#' @param species "mackerel" or "herring"
#' @param cn.standardized Boolean, if FALSE (default) retains variable names as
#' delivered by the webserver otherwise mri-standaridzed variable names are used (not active)
#' @param lowercase Boolean, if TRUE, variable names are set to lower case. If FALSE,
#' names will be consitent with documentation.
#'
#' @return A dataframe
#' @export
#' @importFrom rlang .data
#'
#' @examples df <- tg_catches_link()
tg_catches_link <- function(species = "mackerel", cn.standardized = FALSE,
                          lowercase = FALSE) {


  if(length(species) > 1) {
    stop(message("Only one species can be specified, 'mackerel' or 'herring'"))
  }

  if(!any(species %in% c("herring", "mackerel"))) {
    stop(message("species has to be either 'mackerel' or 'herring'"))
  }

  d <-
    jsonlite::fromJSON(paste0("http://smartfishsvc.hi.no/api/data/BioSamplesCatches/", species[1])) %>%
    dplyr::as_tibble()


  # if(cn.standardized) {
  #
  # }

  if(lowercase)
    d <- dplyr::select_all(d, tolower)
  return(d)

}