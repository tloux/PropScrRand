\name{genPerms}
\alias{genPerms}
\title{
Generate Treatment Permutations
}
\description{
Used within calls to \code{pcr} to generate a set of unique treatment permutations for randomization.
}
\usage{
genPerms(n, n1, nPerms)
}

\arguments{
  \item{n}{Total number of units to be randomized.}
  \item{n1}{Number of units to receive treatment.}
  \item{nPerms}{Number of permutations to generate.}
}
\details{
This function randomly samples \code{nPerms} of the \code{choose(n, n1)} possible treatment permutations.  If \code{nPerms > choose(n, n1)}, then all \code{choose(n, n1)} permutations are generated systematically.  Also, in the case of 1-to-1 allocation, the complement treatment vectors are also produced, so the returned matrix has \code{2*nPerms} permutations.  Uniqueness is checked throughout and duplicate permutations disgarded.
}

\value{
The result is an \code{n1 x nPerms} (or \code{n1 x choose(n, n1)} or \code{n1 x 2*nPerms}) matrix.  Each column represents one treatment permutation, with the values in the column giving the index of the treated units.
}

\author{
Travis M. Loux
}

\examples{
genPerms(n=50, n1=25, nPerms=500)
genPerms(n=50, n1=35, nPerms=500)
}

\keyword{ design }
