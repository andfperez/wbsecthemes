
#' wbsecthemes - managing fonts
#'
#' @param lemon_milk_regular
#' @param lemon_milk_bold
#' @param lemon_milk_italic
#' @param uniform_regular
#' @param uniform_light
#' @param open_sans_regular
#' @param open_sans_italic
#'
#' @return
#' @export
#'
#' @examples
load_fonts <- function(
    lemon_milk_regular = file.path(here::here("Fonts",
                              "Lemon Milk Pro Regular.otf")),
    lemon_milk_bold = file.path(here::here("Fonts",
                           "Lemon Milk Pro Medium.otf")),
    lemon_milk_italic = file.path(here::here("Fonts",
                             "Lemon Milk Pro Regular Italic.otf")),
    uniform_regular = file.path(here::here("Fonts",
                           "Uniform.ttf")),
    uniform_light = file.path(here::here("Fonts",
                         "Uniform Light.ttf")),
    open_sans_regular = file.path(here::here("Fonts",
                             "OpenSans-Regular.ttf")),
    open_sans_italic = file.path(here::here("Fonts",
                            "OpenSans-Italic.ttf"))
){
  sysfonts::font_add(
    family = "Lemon Milk Pro",
    regular = lemon_milk_regular,
    bold = lemon_milk_bold,
    italic = lemon_milk_italic)

  sysfonts::font_add(
    family = "Uniform",
    regular = uniform_light,
    bold = uniform_regular)

  sysfonts::font_add(
    family = "Open Sans",
    regular = open_sans_regular,
    italic = open_sans_italic)

  showtext::showtext_auto()
  showtext::showtext_opts(dpi = 300)
}

load_fonts()
