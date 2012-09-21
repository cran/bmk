\docType{data}
\name{MCMC.three}
\alias{MCMC.three}
\title{MCMC.three is an mcmc object resulting from the following code:}
\description{
  MCMC.three is an mcmc object resulting from the following
  code:
}
\examples{
\dontrun{
 library(dismo); library(MCMCpack)
 data(Anguilla_train)
 b0mean0 <- 0
 b0precision <- (1/5)^2
 mcmclen = 50000
 burn=200000
 MCMC.three <- MCMClogit(Angaus ~ SegSumT+DSDist+USNative+as.factor(Method)+DSMaxSlope+USSlope,
                  data=Anguilla_train,burnin=burn, mcmc=mcmclen, beta.start=-1,
                  b0=b0mean0, B0=b0precision)
 }
}
\author{
  Edward L. Boone \email{elboone@vcu.edu}
}
\keyword{data}
\keyword{datasets}

