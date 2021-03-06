% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zeitPlot.R
\name{zeitPlot}
\alias{zeitPlot}
\title{Plot frequency table}
\usage{
zeitPlot(df, yTitle = "Frequency", xTitle = "Time", title = NULL,
  absolute = TRUE, trend = TRUE, mean = TRUE, lowessFactor = 0.2, ...)
}
\arguments{
\item{df}{data.frame. Data set to be plotted, created by \code{\link{zeitFrequencies}}.}

\item{yTitle}{character. Labels the y-axis.}

\item{xTitle}{character. Labels the x-axis.}

\item{title}{character. Title of the graph.}

\item{absolute}{logical (default is \code{TRUE}). Indicates if absolute or relative frequencies are plotted on the y-axis.}

\item{trend}{logical (default is \code{TRUE}). Indicates if a trend line is plotted (only for 20 observations and above).}

\item{mean}{logical (default is \code{TRUE}). Indicates if a horizontal mean line is plotted.}

\item{lowessFactor}{numeric (0 < lowessFactor <= 1, default is \code{0.2}). Gives the proportion of points in the plot, which influence the smooth at each value. Larger values give more smoothness. For more details see \code{\link[stats]{lowess}}.}

\item{\dots}{Optional graphical parameters, see below.}
}
\value{
Plots a graph based on given data frame.
}
\description{
\code{zeitPlot} plots the frequency table created by \code{\link{zeitFrequencies}}.
}
\details{
If the data frame includes less than 20 observations, no trend line is plotted. The dotted line indicates the mean of frequencies.
\emph{Optional graphical parameters}
The following graphical parameters can optionally be added to customize the plot:
\itemize{
\item \code{col.bar}: The color to be used for bars. See \code{\link{par}} for usage.
\item \code{lwd.bar}: The bar width. See \code{\link{par}} for usage.
\item \code{lty.bar}: The bar line type. See \code{\link{par}} for usage.
\item \code{col.trend}: The color to be used for the trend line. See \code{\link{par}} for usage.
\item \code{lwd.trend}: The trend line width. See \code{\link{par}} for usage.
\item \code{lty.trend}: The trend line type. See \code{\link{par}} for usage.
\item \code{col.mean}: The color to be used for the mean line. See \code{\link{par}} for usage.
\item \code{lwd.mean}: The mean line width. See \code{\link{par}} for usage.
\item \code{lty.mean}: The mean line type. See \code{\link{par}} for usage.
\item \code{col.axis}: The color to be used for axis annotation. Defaults to \code{"black"}.
\item \code{col.lab}: The color to be used for x and y labels. Defaults to \code{"black"}.
\item \code{col.main}: The color to be used for plot main titles. Defaults to \code{"black"}.
\item \code{cex}: Amount by which text on the plot should be scaled relative to the default (which is \code{1}). To be used for scaling of all texts at once.
\item \code{cex.axis}: The magnification to be used for axis annotation relative to the current setting of \code{cex}.
\item \code{cex.lab}: The magnification to be used for x and y labels relative to the current setting of \code{cex}.
\item \code{cex.main}: The magnification to be used for main titles relative to the current setting of \code{cex}.
\item \code{lend}: The line end style. See \code{\link{par}} for usage.
}
Additional graphical parameters may be set calling \code{\link{par}} before \code{zeitPlot}.
}
\examples{
\dontrun{
zeitPlot(dfFrequenciesWeek, yTitle = "Week", xTitle = "Frequencies of articles")
}
}
\author{
Jan Dix (\email{jan.dix@uni-konstanz.de}), Jana Blahak (\email{jana.blahak@uni-konstanz.de}), Christian Graul (\email{christian.graul@gmail.com})
}
\seealso{
\code{\link{zeitSetApiKey}} \code{\link{zeitGet}} \code{\link{zeitFrequencies}} \code{\link{zeitToDf}}
}

