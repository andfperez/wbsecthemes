# Definition of the two color palettes: 'sec_pal'
# and 'wbg_pal'
sec_pal <- c(
  "secpink" = "#EF00AF",
  "secorange" = "#EFB700",
  "secgreen" = "#20C997",
  "seccyan" = "#00AFEF",
  "secblue" = "#00218F")

wbg_pal <- c(
  "wbg_dkblue" = "#003366",
  "wbg_cyan" = "#009FDA",
  "wbg_pink" = "#D0006F",
  "wbg_purple" = "#84329B",
  "wbg_ocean" = "#00C7B1",
  "wbg_green" = "#30c788",
  "wbg_yellow" = "#EFB700",
  "sky_blue" = "#68ACE5",
  "stormblue" = "#204466",
  "stormnavy" = "#249db5",
  "lilac" = "#9956db",
  "rust" = "#ED8B00",
  "grapefruit" = "#b84818")

#' HEX code of a color in the SEC color palette
#'
#' `sec_color` returns the hex code(s) that correspond(s) to
#' the name(s) of the color(s) in the SEC palette that are
#' present in its arguments.
#'
#' Either a single character string or a vector of strings
#' can be passed through, with the function returning an equal
#' number of hex codes.
#'
#' @param which_color The name of the color in the palette
#'
#' @return The hex code of each of the colors in the palette
#' @export


sec_color <- function(which_color) {
  unname(sec_pal[which_color])
}

#' HEX code of a color in the WBG color palette
#'
#' `wbg_color` returns the hex code(s) that correspond(s) to
#' the name(s) of the color(s) in the WBG palette that are
#' present in its arguments.
#'
#' Either a single character string or a vector of strings
#' can be passed through, with the function returning an equal
#' number of hex codes.
#'
#' The complete palette of colors can be called using
#' `wbg_colors()`
#'
#' @param which_color The color for which HEX code is returned
#'
#' @return The HEX code string of the color in the palette
#' @export


wbg_color <- function(which_color) {
  unname(wbg_pal[which_color])
}
