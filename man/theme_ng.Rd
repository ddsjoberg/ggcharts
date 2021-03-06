% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme.R
\name{theme_ng}
\alias{theme_ng}
\title{Theme NG}
\usage{
theme_ng(
  base_size = 14,
  base_family = "Open Sans",
  header_family = "IBM Plex Sans",
  axis = "",
  ticks = "",
  grid = ""
)
}
\arguments{
\item{base_size}{\code{numeric}. Base font size in pt}

\item{base_family}{\code{character}. Base font family}

\item{header_family}{\code{character}. Font family for title and subtitle}

\item{axis}{\code{character}. Where to draw an axis line}

\item{ticks}{\code{character}. Where to draw axis ticks}

\item{grid}{\code{character}. Where to draw grid lines}
}
\value{
An object of class \code{theme}
}
\description{
A ggplot2 theme inspired with the 'hello friend ng' Hugo theme
}
\examples{
library(ggplot2)
library(dplyr)

scatter <- ggplot(mtcars, aes(hp, mpg)) +
  geom_point(color = "yellow")

scatter + theme_ng()

scatter + theme_ng(grid = "XY")

scatter + theme_ng(axis = "xy", ticks = "xy")

bar_chart(ggplot2::diamonds, cut, bar_color = "darkorange") +
  theme_ng(axis = "y", grid = "Y")

column_chart(ggplot2::diamonds, cut, bar_color = "darkorange") +
  theme_ng(axis = "x", grid = "X")

ggcharts::biomedicalrevenue \%>\%
  filter(company == "Roche") \%>\%
  ggplot(aes(year, revenue)) +
  geom_line(color = "yellow", size = 1) +
  scale_y_continuous(expand = expand_scale(c(0, .05))) +
  theme_ng(grid = "X", axis = "x", ticks = "x")

}
\seealso{
For more details see the 'theme' vignette:
\code{vignette("theme", package = "ggcharts")}
}
\author{
Thomas Neitmann
}
