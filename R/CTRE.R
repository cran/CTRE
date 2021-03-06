#' Continuous Time Random Exceedances
#'
#' Fits a Continuous Time Random Exceedance model to bursty time series.
#' CTREs model the distribution of threshold crossing times of extreme events.
#' Fits are made by interactive visual assessment of "stability plots"
#' using a shiny app.
#'
#' @section References:
#' "Peaks Over Threshold for Bursty Time Series",
#' Katharina Hees, Smarak Nayak, Peter Straka.
#' \url{https://arxiv.org/abs/1802.05218}
#'
#' @examples
#' library(CTRE)
#' \dontrun{
#' runCTREshiny()
#' }
#'
#' ctre_mod <- ctre(flares)
#' ctre_mod
#' length(ctre_mod)
#' ctre_mod <- thin(ctre_mod, k = 500)
#' ctre_mod
#' magnitudes(ctre_mod)
#' time(ctre_mod)
#' interarrival(ctre_mod)
#' MLestimates(ctre_mod, tail = 0.8, scale = 3E7)
#' library(magrittr)
#' ctre_mod %>% interarrival() %>% mlqqplot(tail = 0.8, log = 'xy')
#' acf(ctre_mod)
#' empcopula(ctre_mod)
#'

"_PACKAGE"
