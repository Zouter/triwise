% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{plotRoseplot}
\alias{plotRoseplot}
\title{Plot the directional distribution of genes}
\usage{
plotRoseplot(barycoords, Gdiffexp = rownames(barycoords),
  Goi = rownames(barycoords), size = "surface", relative = TRUE,
  showlabels = TRUE, Coi = attr(barycoords, "conditions"), nbins = 12,
  bincolors = grDevices::rainbow(nbins, start = 0, v = 0.8, s = 0.6),
  rmax = "auto", baseangle = 0)
}
\arguments{
\item{barycoords}{Dataframe containing barycentric coordinates as returned by \code{\link[triwise]{transformBarycentric}}.}

\item{Gdiffexp}{List of differentially expressed genes}

\item{Goi}{List of genes of interest}

\item{size}{Should the `radius` or the `surface` of a circle sector denote the number of genes differentially expressed in a particular direction}

\item{relative}{Whether to show the relative number of genes or the absolute number of genes}

\item{showlabels}{Whether to label the grid}

\item{Coi}{Names of the three biological conditions, used for labelling}

\item{nbins}{Number of bins, should be a multiple of 3 to make sense}

\item{bincolors}{Colors of every bin, defaults to a rainbow palette}

\item{rmax}{Number or "auto" (default), denotes the maximal radius of the grid.}

\item{baseangle}{The angle by which to rotate the whole plot (default to 0)}
}
\value{
A ggplot2 plot, which can be used to further customize the plot
}
\description{
A rose plot shows the distribution of a given set of genes in different directions.
}
\examples{
Eoi = matrix(rnorm(1000*3, sd=0.5), 1000, 3, dimnames=list(1:1000, c(1,2,3)))
Eoi[1:100,1] = Eoi[1:100,1] + 1
barycoords = transformBarycentric(Eoi)
plotRoseplot(barycoords)
plotRoseplot(barycoords, (1:1000)[barycoords$r > 1])
plotRoseplot(barycoords, (1:1000)[barycoords$r > 1], 1:100)
}

