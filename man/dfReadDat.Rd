\name{dfReadDat}
\alias{dfReadDat}
\title{Opens a tab-delimited dat file with typical Curtin lab settings}
\description{
Opens a tab-delimited data file with standard Curtin lab format which include
using a header and setting delimiter to tab.

If variable named SubID (default) or other text supplied by SubID variable 
exists in dat file, row names will be set with this variable 
and then variable is removed from new data frame.
}
\usage{dfReadDat(File, SubID = "SubID")}
\arguments{
  \item{File}{File name for .dat file including extension}
  \item{SubID}{String to indicate name of SubID variable.  Default is 'SubID'.  If set to NULL, rownames will not be altered}
}
\value{returns a data frame}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
read.table(), read.delim(), write.table()
}
\examples{
##dfReadDat('Sample.dat)   #not executable unless Sample.dat exists in path
##dfReadDat('Sample.dat, SubID = 'subnum')   #not executable unless Sample.dat exists in path
}
\keyword{manip}