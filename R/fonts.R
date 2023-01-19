
#' WBG Secretariat - Style fonts
#' Tables and charts -
#'  Titles: General Sans Bold
#'  Subtitles: Switzer Bold or Regular
#'  Spanners, stubs or groupings (or column 1) and captions: Satoshi
#'  Numbers and figures: Open Sans
#'
#' @param general_sans_regular path to General Sans font (regular)
#' @param general_sans_italic path to General Sans font (italic)
#' @param general_sans_bold path to General Sans font (bold)
#' @param general_sans_bolditalic path to General Sans font (bolditalic)
#' @param switzer_regular path to Switzer font (regular)
#' @param switzer_bold path to Switzer  font (bold)
#' @param switzer_italic path to Switzer font (italic)
#' @param switzer_bolditalic path to Switzer font (bolditalic)
#' @param satoshi_regular path to Satoshi font (regular)
#' @param satoshi_bold path to Satoshi font (bold)
#' @param satoshi_italic path to Satoshi font (italic)
#' @param satoshi_bolditalic path to Satoshi font (bolditalic)
#' @param open_sans_regular path to Open Sans font (regular)
#' @param open_sans_italic path to Open Sans font (italic)
#'
#' @keywords internal
#' @export
#'
load_fonts <- function(
    general_sans_regular = file.path(here::here("Fonts",
                                                "GeneralSans-Regular.otf")),
    general_sans_italic = file.path(here::here("Fonts",
                                               "GeneralSans-Italic.otf")),
    general_sans_bold = file.path(here::here("Fonts",
                                             "GeneralSans-Bold.otf")),
    general_sans_bolditalic = file.path(here::here("Fonts",
                                                   "GeneralSans-BoldItalic.otf")),

    switzer_regular = file.path(here::here("Fonts",
                                           "Switzer-Regular.otf")),
    switzer_bold = file.path(here::here("Fonts",
                                        "Switzer-Bold.otf")),
    switzer_italic = file.path(here::here("Fonts",
                                          "Switzer-Italic.otf")),
    switzer_bolditalic = file.path(here::here("Fonts",
                                              "Switzer-BoldItalic.otf")),

    satoshi_regular = file.path(here::here("Fonts",
                                           "Satoshi-Regular.otf")),
    satoshi_bold = file.path(here::here("Fonts",
                                        "Satoshi-Bold.otf")),
    satoshi_italic = file.path(here::here("Fonts",
                                          "Satoshi-Italic.otf")),

    open_sans_regular = file.path(here::here("Fonts",
                             "OpenSans-Regular.ttf")),
    open_sans_italic = file.path(here::here("Fonts",
                            "OpenSans-Italic.ttf"))
){
  sysfonts::font_add(
    family = "General Sans",
    regular = general_sans_regular,
    bold = general_sans_bold,
    italic = general_sans_italic,
    bolditalic = general_sans_bolditalic)

  sysfonts::font_add(
    family = "Switzer",
    regular = switzer_regular,
    bold = switzer_bold,
    italic = switzer_italic,
    bolditalic = switzer_bolditalic)

  sysfonts::font_add(
    family = "Satoshi",
    regular = satoshi_regular,
    bold = satoshi_bold,
    italic = satoshi_italic)

  sysfonts::font_add(
    family = "Open Sans",
    regular = open_sans_regular,
    italic = open_sans_italic)

  showtext::showtext_auto()
  showtext::showtext_opts(dpi = 300)
}

load_fonts()
