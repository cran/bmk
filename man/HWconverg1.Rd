\name{HWconverg1}
\alias{HWconverg1}
\title{Hellinger distance within consecutive batches of MCMC samples.}
\usage{
  HWconverg1(chain1, batchsize1 = 1000)
}
\arguments{
  \item{chain1}{A vector of a single MCMC chain.}

  \item{batchsize1}{An integer that defines the size of the
  batches.}
}
\value{
  c2 A vector of Hellinger distances between consecutive
  batches.
}
\description{
  Determine if a specific chain has converged.  This takes
  a chain and divides it into batches and calculates the
  Hellinger distance between consecutive batches.
}

