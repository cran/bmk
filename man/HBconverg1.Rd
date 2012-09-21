\name{HBconverg1}
\alias{HBconverg1}
\title{Hellinger distance between distributions}
\usage{
  HBconverg1(chains1)
}
\arguments{
  \item{chains1}{A matrix of MCMC for the same variable.
  Each column corresponds to a different chain.}
}
\value{
  c2 A vector containing the minimum and maximum Hellinger
  distances across all pairwise comparisons.
}
\description{
  This computes the Hellinger distance for all pairwise
  combinations of MCMC chains.
}
\note{
  The matrix must consist of samples from the same variable
  derived from different chains.
}

