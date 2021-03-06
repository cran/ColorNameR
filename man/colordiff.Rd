% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colordiff.R
\name{colordiff}
\alias{colordiff}
\title{Get the color difference between values in the CIELab color space.}
\usage{
colordiff(color, reference, metric = "CIEDE2000", ...)
}
\arguments{
\item{color}{A matrix whose rows specify color coordinates in the CIELab color space.}

\item{reference}{A reference color.}

\item{metric}{The color metric, between CIE76, CIE94, and CIEDE2000.}

\item{...}{Weighting factors \code{k_L}, \code{k_C}, \code{k_H}, \code{K1}, and/or \code{K2} for CIE94 and CIEDE2000, if applicable. Also, \code{symmetric=TRUE} to use a symmetric version of CIE94.}
}
\value{
The color difference between the two given values.
}
\description{
Get the color difference between values in the CIELab color space.
}
\examples{
colordiff(rbind(c(50, 2.6772, -79.7751),
                c(50, 3.1571, -77.2803),
                c(50, 2.8361, -74.0200)), c(50, 0, -82.7485))
colordiff(rbind(c(50, 2.6772, -79.7751),
                c(50, 3.1571, -77.2803),
                c(50, 2.8361, -74.0200)), c(50, 0, -82.7485), metric="CIE94")
colordiff(rbind(c(50, 2.6772, -79.7751),
                c(50, 3.1571, -77.2803),
                c(50, 2.8361, -74.0200)), c(50, 0, -82.7485), metric="CIE94", symmetric=TRUE)
}
\references{
Sharma, G., & Bala, R. (Eds.). (2017). Digital color imaging handbook. CRC press.
Sharma, G., Wu, W., & Dalal, E. N. (2005). The CIEDE2000 color-difference formula: Implementation notes, supplementary test data, and mathematical observations. Color Research & Application: Endorsed by Inter-Society Color Council, The Colour Group (Great Britain), Canadian Society for Color, Color Science Association of Japan, Dutch Society for the Study of Color, The Swedish Colour Centre Foundation, Colour Society of Australia, Centre Français de la Couleur, 30(1), 21-30.
}
