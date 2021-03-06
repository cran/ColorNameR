% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/name.R
\name{name}
\alias{name}
\title{Name a color given its coordinates in a specified color space.}
\usage{
name(color, colorspace = "Lab", illuminant = NULL, language = "english")
}
\arguments{
\item{color}{A matrix whose rows specify colors.}

\item{colorspace}{The color space the coordinates of the colors are in.}

\item{illuminant}{The reference white, or \code{NULL} if not needed.}

\item{language}{The language of the color name, between English, French, German, and Spanish.}
}
\value{
The name of the color, according to the UPOV.
}
\description{
Name a color given its coordinates in a specified color space.
}
\details{
The available color spaces are \code{"XYZ"}, \code{"sRGB"}, \code{"Apple RGB"}, \code{"CIE RGB"}, \code{"Luv"}, and \code{"Lab"} (default).
If the color space is an RGB variant, the coordinates must take values between 0 and 1.
}
\examples{
name(c(65, 20, -20))
name(c(65, 20, -20), language="Spanish")
name(c(65, 20, -20), language="es")
name(c(244/255, 234/255, 184/255), colorspace="sRGB")
name(rbind(c(65, 20, -20), c(69, 4, -31)))
}
