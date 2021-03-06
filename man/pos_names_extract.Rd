% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pos_names_extract.R
\name{pos_names_extract}
\alias{pos_names_extract}
\title{Process a Provider of Services Record Layour file to extract variable names}
\usage{
pos_names_extract(layout_file, data_file)
}
\arguments{
\item{layout_file}{The file location of the layout file}

\item{data_file}{The year's data file}
}
\value{
A vector of names, ordered to match the corresponding year's data 
  file
}
\description{
This function takes a Provider of Services Record Layout file (in .txt form) 
and parses it to extract the descriptive variable names instead of generic 
ones. For example, the 2006 file variable PROV0085, which is the name of the 
variable in the raw dataset downloaded from CMS, has a more descriptive name 
in the layout file: CATEGORY-SUBTYPE-IND.
}
\details{
This uses regular expressions to find variable names. It works with years 
2000-2010. Later years seem to have descriptive names already, though they 
aren't necessarily identical across years (nor do they match the names 
produced here). This code can be run to produce variable names fresh, but
pre-computed variable names can also be accessed by \code{names_pos_20XX()}
functions also in this package.
}
\examples{
\dontrun{
pos_names_extract("pos_2006_layout.txt", pos_2006_data)
}


}
