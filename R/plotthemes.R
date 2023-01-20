#' A [ggplot] theme with a specific
#'
#' @param axes A string indicating which axes should have lines and ticks.
#'   Specify which axes to show by including the matching characters in the
#'   string: "t" for top, "r" for right, "b" for bottom, "l" for left. You will
#'   need to ensure this argument is consistent with the axes settings in your
#'   plot for the lines and ticks to be displayed. The default is "", meaning
#'   no ticks no lines for the vertical or horizontal axes are shown by default.
#' @param grid A string indicating which gridlines should be shown. Specify
#'   the gridlines to show by including the matching characters in the string:
#'   "h" for horizontal, "v" for vertical. The default is an empty string,
#'   meaning no gridlines are shown by default.
#' @param legend_position A string indicating the position of the legend. Valid
#'   positions are "top", "right", "bottom", "left", "top-right", "top-left",
#'   "bottom-right", "bottom-left", and "none". The default is "right".
#' @param caption_position A string indicating the horizontal position of the
#'   caption. Valid positions are "left" or "right". The default is "right".
#' @param title_family A string indicating the font-family to use for the
#'   title. The default is "National-LFSN Semibd".
#' @param subtitle_family A string indicating the font-family to use for the
#'   subtitle. The default is "National-LFSN Book".
#' @param axis_title_family A string indicating the font-family to use for
#'   axis titles. The default is "Open Sans".
#' @param axis_text_family A string indicating the font-family to use for
#'   axis text. The default is "Open Sans".
#' @param legend_title_family A string indicating the font-family to use for
#'   legend titles. The default is "Open Sans".
#' @param legend_text_family A string indicating the font-family to use for
#'   legend text. The default is "Open Sans".
#' @param facet_title_family A string indicating the font-family to use for
#'   facet titles. The default is "Open Sans".
#' @param caption_family A string indicating the font-family to use for
#'   captions. The default is "National-LFSN Book".
#' @param title_size An integer indicating the font size to use for the title
#'   in points. The default is 18 points.
#' @param subtitle_size An integer indicating the font size to use for the
#'   subtitle in points. The default is 14 points.
#' @param axis_title_size An integer indicating the font size to use for axis
#'   titles in points. The default is 11 points.
#' @param axis_text_size An integer indicating the font size to use for axis
#'   text in points. The default is 10 points.
#' @param legend_title_size An integer indicating the font size to use for
#'   legend titles in points. The default is 10 points.
#' @param legend_text_size An integer indicating the font size to use for
#'   legend text in points. The default is 10 points.
#' @param facet_title_size An integer indicating the font size to use for
#'   facet titles in points. The default is 10 points.
#' @param caption_size An integer indicating the font size to use for captions
#' in points. The default is 12 points.
#' @param title_color An RGB hex string indicating the color to use for the
#'   title. The default is "#006548".
#' @param subtitle_color An RGB hex string indicating the color to use for the
#'   subtitle. The default is "#006548".
#' @param axis_title_color An RGB hex string indicating the color to use for
#'   axis titles. The default is "#404040".
#' @param axis_text_color An RGB hex string indicating the color to use for
#'   axis text. The default is "#404040".
#' @param legend_title_color An RGB hex string indicating the color to use for
#'   legend titles. The default is "#404040".
#' @param legend_text_color An RGB hex string indicating the color to use for
#'   legend text. The default is "#404040".
#' @param facet_title_color An RGB hex string indicating the color to use for
#'   facet titles. The default is "#404040".
#' @param caption_color An RGB hex string indicating the color to use for
#'   captions. The default is "#404040".
#' @param background_color An RGB hex string indicating the color to use for
#'   the background. The default is "#f0eeed".
#' @param axis_line_color An RGB hex string indicating the color to use for
#'   the axis lines. The default is "#a6a6a6".
#' @param grid_color An RGB hex string indicating the color to use for the
#'   gridlines. The default is "#dad5d1".
#' @return A ggplot2 theme that implements the Commons Library style.
#' @export
#'
#'
theme_wbgsec <- function(
    axes = "",
    grid = "",
    legend_position = "right",
    caption_position = "right",
    title_family = "General Sans",
    subtitle_family = "Switzer",
    axis_title_family = "Satoshi",
    axis_text_family = "Satoshi",
    legend_title_family = "Satoshi",
    legend_text_family = "Satoshi",
    facet_title_family = "Switzer",
    caption_family = "General Sans",
    title_size = 18,
    subtitle_size = 11,
    axis_title_size = 10,
    axis_text_size = 9,
    legend_title_size = 10,
    legend_text_size = 10,
    facet_title_size = 10,
    caption_size = 9,
    title_color = "#00AFEF",
    subtitle_color = "#00218F",
    axis_title_color = "#404040",
    axis_text_color = "#404040",
    legend_title_color = "#404040",
    legend_text_color = "#404040",
    facet_title_color = "#404040",
    caption_color = "#404040",
    background_color = "#FFFFFF",
    axis_line_color = "#a6a6a6",
    grid_color = "#dad5d1") {

  # Set the caption horizontal justification
  if (stringr::str_detect(caption_position, "left")) {
    caption_hjust = 0
  } else if (stringr::str_detect(caption_position, "right")) {
    caption_hjust = 1
  } else {
    stop("The caption_position should be \"left\" or \"right\"")
  }


  theme_wbgsec <- ggplot2::theme(
    plot.background = ggplot2::element_rect(
      fill = background_color,
      linewidth = 0),
    plot.margin = ggplot2::margin(
      t = 18,
      r = 18,
      b = 18,
      l = 18, unit = "pt"),

# Title, Subtitle, and caption
    plot.title = ggtext::element_textbox_simple(
      family = title_family,
      color = title_color,
      face = "bold",
      hjust = 0,
      size = title_size,
      margin = ggplot2::margin(
        t = 0,
        r = 0,
        b = 8,
        l = 0,
        unit = "pt")),
    plot.subtitle = ggtext::element_textbox_simple(
      family = subtitle_family,
      color = subtitle_color,
      face = "plain",
      hjust = 0,
      size = subtitle_size,
      margin = ggplot2::margin(
        t = 2,
        r = 0,
        b = 15,
        l = 0,
        unit = "pt")),
    plot.title.position = "plot",


    plot.caption = ggtext::element_textbox_simple(
      family = caption_family,
      color = caption_color,
      hjust = 0, #caption_position,
      size = caption_size,
      margin = ggplot2::margin(
        t = 15,
        r = 0,
        b = 0,
        l = 0, unit = "pt")),
    plot.caption.position = "plot",

# Panel settings
    panel.spacing = ggplot2::unit(20, "pt"),
    panel.border = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),




# Axes and legends
    axis.line = ggplot2::element_blank(),
    axis.line.x.top = ggplot2::element_blank(),
    axis.line.y.right = ggplot2::element_blank(),
    axis.line.x.bottom = ggplot2::element_blank(),
    axis.line.y.left = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    axis.title = ggtext::element_textbox(
      family = axis_title_family,
      color = axis_title_color,
      size = axis_title_size),
    axis.title.x = ggtext::element_textbox(
      margin = ggplot2::margin(
        t = 0,
        r = 0,
        b = 0,
        l = 0, unit = "pt")),
    axis.title.x.top = ggplot2::element_text(
      margin = ggplot2::margin(
        t = 0,
        b = 12, unit = "pt")),
    axis.title.y = ggtext::element_textbox(
      orientation = "left-rotated",
      margin = ggplot2::margin(
        t = 0,
        r = 0,
        b = 12,
        l = 0, unit = "pt")),
    axis.title.y.right = ggplot2::element_text(
      angle = 90,
      margin = ggplot2::margin(
        r = 0,
        l = 12, unit = "pt")),
    axis.text = ggplot2::element_text(
      family = axis_text_family,
      color = axis_text_color,
      size = axis_text_size),
    axis.text.x = ggplot2::element_text(
      margin = ggplot2::margin(
        t = 7,
        r = 0,
        b = 0,
        l = 0, unit = "pt")),
    axis.text.x.top = ggplot2::element_text(
      margin = ggplot2::margin(
        t = 0,
        b = 7, unit = "pt")),
    axis.text.y = ggplot2::element_text(
      hjust = 1,
      margin = ggplot2::margin(
        t = 0,
        r = 7,
        b = 0,
        l = 0, unit = "pt")),
    axis.text.y.right = ggplot2::element_text(
      hjust = 0,
      margin = ggplot2::margin(
        r = 0,
        l = 7, unit = "pt")),
    legend.background = ggplot2::element_rect(
      color = NULL,
      fill = background_color,
      size = 0),
    legend.key = ggplot2::element_rect(
      color = background_color,
      fill = background_color),
    legend.title = ggplot2::element_text(
      family = legend_title_family,
      color = legend_title_color,
      face = "bold",
      size = legend_title_size),
    legend.text = ggplot2::element_text(
      family = legend_text_family,
      color = legend_text_color,
      size = legend_text_size),
    strip.background = ggplot2::element_rect(
      color = background_color,
      fill = background_color),
    strip.text = ggplot2::element_text(
      family = facet_title_family,
      color = facet_title_color,
      size = facet_title_size,
      face = "bold"))

# Triggers for location of axis line (default is bottom left)
  axis_line <- ggplot2::element_line(
    color = axis_line_color,
    size = 0.3,
    linetype = "solid")

  if (stringr::str_detect(axes, "t")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        axis.line.x.top = axis_line,
        axis.ticks.x.top = axis_line)
  }

  if (stringr::str_detect(axes, "r")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        axis.line.y.right = axis_line,
        axis.ticks.y.right = axis_line)
  }

  if (stringr::str_detect(axes, "b")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        axis.line.x.bottom = axis_line,
        axis.ticks.x.bottom = axis_line)
  }

  if (stringr::str_detect(axes, "l")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        axis.line.y.left = axis_line,
        axis.ticks.y.left = axis_line)
  }

# Triggers to indicate whether or not to display gridlines (defaul is no)
  grid_line <- ggplot2::element_line(
    color = grid_color,
    size = 0.35,
    linetype = "solid")

  if (stringr::str_detect(grid, "v")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(panel.grid.major.x = grid_line)
  }

  if (stringr::str_detect(grid, "h")) {
    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(panel.grid.major.y = grid_line)
  }

  # Legend
  if (legend_position %in% c("top", "right", "bottom", "left", "none")) {

    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(legend.position = legend_position)

  } else if (legend_position == "top-right") {

    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        legend.position = "top",
        legend.direction = "horizontal",
        legend.justification = c(1,0))

  } else if (legend_position == "top-left") {

    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        legend.position = "top",
        legend.direction = "horizontal",
        legend.justification = c(0,1))

  } else if (legend_position == "bottom-right") {

    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        legend.position = "bottom",
        legend.direction = "horizontal",
        legend.justification = c(1,0))

  } else if (legend_position == "bottom-left") {

    theme_wbgsec <- theme_wbgsec %+replace%
      ggplot2::theme(
        legend.position = "bottom",
        legend.direction = "horizontal",
        legend.justification = c(0,1))

  } else {
    stop(paste(
      "The legend_position should be one of:",
      "\"top\", \"right\", \"bottom\", \"left\",",
      "\"top-right\", \"top-left\", \"bottom-right\", \"bottom-left\""))
  }

  theme_wbgsec
}
