% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colors.R
\name{wbg_color}
\alias{wbg_color}
\title{HEX code of a color in the WBG color palette}
\usage{
wbg_color(which_color)
}
\arguments{
\item{which_color}{The color for which HEX code is returned}
}
\value{
The HEX code string of the color in the palette
}
\description{
\code{wbg_color} returns the hex code(s) that correspond(s) to
the name(s) of the color(s) in the WBG palette that are
present in its arguments.
}
\details{
Either a single character string or a vector of strings
can be passed through, with the function returning an equal
number of hex codes.

The complete palette of colors can be called using
\code{wbg_colors()}
}
