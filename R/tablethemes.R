library(gt)
#' WBG SEC Table Themes - a GT theme with the color schemes
#' and styles of the World Bank Group's Corporate Secretariat
#'
#' @param gt_object
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
sec_tabtheme <- function(gt_object, ...) {

  gt_object |>
# Set fonts for table
    tab_options(table.font.size = px(12),
                table.width = pct(90)
                ) |>
    opt_table_font(list(
      "Open Sans",
      google_font("IBM Plex Sans"))
    ) |>
# Styling of Title
    tab_style(
      style = cell_text(
        font = "Lemon Milk Pro",
        align = "left",
        v_align = "middle",
        size = "xx-large",
        indent = pct(2),
        color = sec_color("seccyan"),
        weight = "bold"
      ),
      locations = cells_title("title")
    ) |>

    # Styling of Subtitle
    tab_style(
      style = cell_text(
        font = "Uniform",
        align = "left",
        size = "large",
        indent = pct(2),
        color = sec_color("secblue"),
        weight = "normal"
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
        color = sec_color("secblue"),
        size = px(13),
        v_align = "middle"
      ),
      locations = cells_column_labels(everything())
    ) |>

    # Spanners - color and size
    tab_style(
      style = cell_text(
        color = sec_color("secblue"),
        size = px(15),
        v_align = "middle",
        weight = "bold"
      ),
      locations = cells_column_spanners(everything())
    ) |>

    # Font style of the first column
    tab_style(
      style = cell_text(
        size = px(13),
        indent = pct(2),
        color = sec_color("secblue")
      ),
      locations = cells_body(columns = 1)
    )

sec_tabtheme
}
