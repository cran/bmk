\name{bmksensitive}
\alias{bmksensitive}
\title{Hellinger distance between two MCMC chains for sensitivity studies}
\usage{
  bmksensitive(inputlist1, inputlist2)
}
\arguments{
  \item{inputlist1}{A list of the combined MCMC chains for
  all samples from one scenario.}

  \item{inputlist2}{A list of the combined MCMC chains for
  all samples from another scenario.}
}
\description{
  Determine if two identically dimensioned sets of chains
  match.  This is good for conducting sensitivity studies.
}
\examples{
data(MCMCsamples)
 bmksensitive(MCMC.one.mean0, MCMC.one.mean1)
 \dontrun{
 library(dismo); library(MCMCpack)
 data(Anguilla_train)
 b0mean0 <- 0
 b0mean1 <- 1
 b0precision <- (1/5)^2
 mcmclen = 1000
 burn=10000
 MCMC.one.mean0 <- MCMClogit(Angaus ~ SegSumT+DSDist+USNative+as.factor(Method)+DSMaxSlope+USSlope,
                  data=Anguilla_train,burnin=burn, mcmc=mcmclen, beta.start=-1,
                  b0=b0mean0, B0=b0precision)
 MCMC.one.mean1 <- MCMClogit(Angaus ~ SegSumT+DSDist+USNative+as.factor(Method)+DSMaxSlope+USSlope,
                  data=Anguilla_train,burnin=burn, mcmc=mcmclen, beta.start=-.5,
                  b0=b0mean1, B0=b0precision)
 bmksensitive(one, two)
 }
}
\references{
  Boone EL, Merrick JR and Krachey MJ.  A Hellinger
  distance approach to MCMC diagnostics.  Journal of
  Statistical Computation and Simulation,
  \code{DOI:10.1080/00949655.2012.729588}.
}

