\name{plate2df}
\alias{plate2df}

\title{Format Matrix Type 2D Data of Multi well Plate as Dataframe }

\description{
This function uses column names and row names of  'datamatrix' (2D data of a mutli well plate) and generate a dataframe with row, col (column) and position indices. The 'value' column represent corresponding value in the 'datamarix'.
}
\usage{
plate2df(datamatrix)
}

\arguments{
  \item{datamatrix}{datamatrix is the 2D data of a mutli well plate. Usually the result of \code{\link{data2plateformat}}:}
}

\value{
A dataframe with 4 columns. Number of rows is equal to the number of wells (plate type of 'datamatrix'). The columns represent
\item{row }{Row number of the entry}
\item{col }{Column number of the entry}
\item{position }{Position (Row+column number) of the entry}
\item{value}{Individual entries in the 'datamatrix'}

}

\author{
A.A Palakkan
}

\examples{
## loading data
data(rawdata24,rawdata96,rawdata384)

## eg:1 spectrophotometer reading from 24 well plate in dataframe format
datamatrix<- data2plateformat(rawdata24, platetype = 24)
head(plate2df(datamatrix))

## eg:2 spectrophotometer reading from 96 well plate in dataframe format
datamatrix<- data2plateformat(rawdata96, platetype = 96)
head(plate2df(datamatrix))

## eg:3 spectrophotometer reading from 384 well plate in dataframe format
datamatrix<- data2plateformat(rawdata384, platetype = 384)
head(plate2df(datamatrix))

}

\keyword{ manip }

