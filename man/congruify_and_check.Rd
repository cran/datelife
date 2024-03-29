% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datelife_internal.R
\name{congruify_and_check}
\alias{congruify_and_check}
\title{Congruify and Check.}
\usage{
congruify_and_check(
  reference,
  target,
  taxonomy = NULL,
  tol = 0.01,
  option = 2,
  scale = "pathd8",
  attempt_fix = TRUE
)
}
\arguments{
\item{reference}{an ultrametric tree used to time-scale the \code{target}}

\item{target}{a phylogram that is sought to be ultrametricized based on the \code{reference} phylogeny}

\item{taxonomy}{a linkage table between tips of the phylogeny and clades represented in the tree; rownames of 'taxonomy' should be tips found in the phylogeny}

\item{tol}{branching time in \code{reference} above which secondary constraints will be applied to \code{target}}

\item{option}{an integer (1 or 2; see details).}

\item{scale}{\code{NA}, \code{"PATHd8"} or \code{"treePL"} (if \code{PATHd8} or \code{"treePL"} are available in the R \code{PATH})}

\item{attempt_fix}{Default to \code{TRUE}. If congruification results in NA branch
lengths, it will attempt to fix them.}
}
\description{
Congruify and Check.
}
