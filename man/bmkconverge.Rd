\name{bmkconverge}
\alias{bmkconverge}
\title{bmkcoverge:  Convergence via the Hellinger distance}
\usage{
  bmkconverge(inputlist1, binsize = 1000)
}
\arguments{
  \item{inputlist1}{A list of the MCMC chains}

  \item{binsize}{a scalar giving how large each bin should
  be for consecutive batches.  outputs the Hellinger
  distances between the sampled distribution for one
  scenario against the other.}
}
\description{
  MCMC chain convergence diagnostic.
}
\details{
  This takes an MCMC chain and divides it into batches of
  size \code{binsize} and calculates the Hellinger distance
  between consecutive batches.
}
\examples{
\dontrun{
library(dismo); library(MCMCpack);
data(Anguilla_train)
b0mean <- 0
b0precision <- (1/5)^2
mcmclen = 1000
burn=10000
MCMC.one <- MCMClogit(Angaus ~ SegSumT+DSDist+USNative+as.factor(Method)+DSMaxSlope+USSlope,
                data=Anguilla_train,burnin=burn, mcmc=mcmclen, beta.start=-1,
                b0=b0mean, B0=b0precision)
 }
 data(MCMCsamples)
 mcmclen <- 1000
 bmkconverge(MCMC.one,mcmclen/10)
}
\references{
  Boone EL, Merrick JR and Krachey MJ.  A Hellinger
  distance approach to MCMC diagnostics.  Journal of
  Statistical Computation and Simulation,
  \code{DOI:10.1080/00949655.2012.729588}.
}

