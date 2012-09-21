\name{HDistSize}
\alias{HDistSize}
\title{Hellinger distance between two MCMC chains using a specified grid size.}
\usage{
  HDistSize(b1, b2, n2)
}
\arguments{
  \item{b1}{vector of first MCMC chain.}

  \item{b2}{vector of second MCMC chain.}

  \item{n2}{is the number of divisions to run for the
  kernel density estimator}
}
\value{
  res1 The Hellinger distance between the kernel density
  estimates for b1 and b2.
}
\description{
  This function determines the Hellinger distance between
  two MCMC chains via kernel density estimates.
}
\note{
  The chains need to be the same length.
}

