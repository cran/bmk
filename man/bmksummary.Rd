\name{bmksummary}
\alias{bmksummary}
\title{Summaries of MCMC chains}
\usage{
  bmksummary(inputlist)
}
\arguments{
  \item{inputlist}{A list of the combined MCMC chains for
  all samples from one scenario.}
}
\description{
  Generate the mean, standard deviation, median, 2.5
  percent and 97.5 percent quantiles, Gelman Rubin
  statistic for convergence, effective samples size and the
  minimum and maximum Hellinger distances across all
  chains.  outputs summaries for the MCMC samples including
  the convergence diagnostics of Gelman and Rubin and the
  Hellinger distance of Boone, Merrick and Krachey.
}
\examples{
data(MCMCsamples)
 bmksummary(list( MCMC.one, MCMC.two, MCMC.three ))
}
\references{
  Boone EL, Merrick JR and Krachey MJ.  A Hellinger
  distance approach to MCMC diagnostics.  Journal of
  Statistical Computation and Simulation,
  \code{DOI:10.1080/00949655.2012.729588}.
}

