\name{varRegressors}
\alias{varRegressors}
\title{Adds actual numeric regressors for factor to dataframe as new variables}
\description{
Adds new variables/columns in dataframe to represent numeric regressors for a factor.
Factors are coded using their currently defined contrast codes.  
This function is useful for control of a factor covariate when graphing 
and ignoring this factor and/or other lower-level control variables.  
For this purpose, POC coding will typically be set for factor prior to using lm.codeRegressor
}
\usage{
varRegressors(Data, VarName, RegressorNames = NULL)
}
\arguments{
  \item{Data}{The dataframe to add regressors
}
  \item{VarName}{Character string name of variable to code regressor for
}
  \item{RegressorNames}{Optional variable names for regressors.}
}
\value{
Returns original data frame (Data) with addition of new regressors.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
d = Ornstein
contrasts(d$nation) = varContrasts(d$nation, Type='POC', 
   POCList = list(c(3,-1,-1, -1),c(0,2,-1, -1), c(0,0,1,-1)))
d = varRegressors(d,'nation')
}
\keyword{regression}
