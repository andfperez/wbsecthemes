library(gt)
#' WBG SEC Table Themes - a GT theme with the color schemes
#' and styles of the World Bank Group's Corporate Secretariat
#'
#' @param gt_object The table to which the theme will be applied
#' @param ... Special to pass undetermined number of arguments
#'
#' @return A table styled using the WB SEC theme
#' @keywords internal
#'
#' @examples \dontrun{
#'
#' library(tidyverse)
#' library(gt)
#'
#' # Classic example using mtcars, but applying formatting to show
#' # the available tweaks to titles for best control
#'
#'  iris |>
#'  group_by(Species) |>
#'  summarise(mean(Sepal.Length)) |>
#'  gt() |>
#'  tab_header(title = html(
#'  "<span style = 'background-color: #00AFEF; color: white'>Figure 1</span>
#'    Iris Dataset"),
#'            subtitle = html(
#'  "Lorem Ipsum is simply dummy text that is typicallly used in the <br>
#'   &nbsp&nbspand typesetting <i>industry</i>.<br><br>")) |>
#'  tab_source_note(source_note = md(
#'  "**Source:** Corporate Secretariat | **Data:** mtcars")) |>
#'
#'  sec_tabtheme()
#'
#' }
sec_tabtheme <- function(gt_object, ...) {

  gt_object |>
# Set fonts for table
    opt_table_font("General Sans") |>
    tab_options(table.font.size = px(12),
                table.width = pct(90),
                table.border.top.color = "white"
                ) |>
# Styling of Title
    tab_style(
      style = cell_text(
        font = "General Sans",
        align = "left",
        v_align = "middle",
        size = "xx-large",
        indent = pct(2),
        color = sec_color("seccyan"),
        weight = "bold"
      ),
      locations = cells_title("title")
    ) |>

    cols_width(1 ~ pct(22)
               ) |>
    cols_align(align = "left", columns = 1) |>

    # Styling of Subtitle
    tab_style(
      style = cell_text(
        font = "Switzer",
        align = "left",
        size = "medium",
        weight = "bold",
        indent = pct(2),
        color = sec_color("secblue"),
      ),
      locations = cells_title("subtitle")
    ) |>

    # Separating line below column headers
    tab_style(
      style = cell_borders(
        sides = "bottom",
        color = "#ebe8e8",
        weight = px(2)
      ),
      locations = cells_title("subtitle")
    ) |>

    # font size and color of column Labels
    tab_style(
      style = cell_text(
        font = "Switzer",
        weight = "bold",
        color = sec_color("secblue"),
        size = px(13),
        v_align = "middle"
      ),
      locations = cells_column_labels(everything())
    ) |>

    # Spanners - color and size
    tab_style(
      style = cell_text(
        font = "Satoshi",
        color = sec_color("secblue"),
        size = px(15),
        v_align = "middle",
        weight = "bold"
      ),
      locations = cells_column_spanners(everything())
    ) |>

    tab_style(
      style = list(
        cell_text(
          font = "Satoshi",
          weight = "bold",
          color = sec_color("secblue")
        )),
      locations = cells_row_groups(everything())
      ) |>

    # Font style of the first column
    tab_style(
      style = cell_text(
        font = "General Sans",
        size = px(13),
        indent = pct(2),
        color = sec_color("secblue")
      ),
      locations = cells_body(columns = 1)
    )

}
