\name{HDistNoSize}
\alias{HDistNoSize}
\title{Hellinger distance between two MCMC chains using default grid in kernel density estimator.}
\usage{
  HDistNoSize(b1, b2)
}
\arguments{
  \item{b1}{vector of first MCMC chain.}

  \item{b2}{vector of second MCMC chain.}
}
\value{
  The Hellinger distance between the kernel density
  estimates for b1 and b2.
}
\description{
  This function determines the Hellinger distance between
  two MCMC chains via kernel density estimates.
}
\note{
  The chains need to be the same length.
}

