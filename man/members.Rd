% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cg_members.R
\name{members}
\alias{members}
\alias{cg_members}
\alias{cg_member}
\alias{cg_members_new}
\alias{cg_members_state_district}
\alias{cg_members_leaving}
\alias{cg_members_votes}
\alias{cg_members_compare_votes}
\alias{cg_members_compare_bill_sponsors}
\alias{cg_members_bill_cosponsors}
\title{Members functions}
\usage{
cg_members(congress, chamber, key = NULL, as = "table", ...)

cg_member(member, key = NULL, as = "table", ...)

cg_members_new(key = NULL, as = "table", ...)

cg_members_state_district(chamber, state, district = NULL, key = NULL,
  as = "table", ...)

cg_members_leaving(congress, chamber, key = NULL, as = "table", ...)

cg_members_votes(member, key = NULL, as = "table", ...)

cg_members_compare_votes(member1, member2, congress, chamber, key = NULL,
  as = "table", ...)

cg_members_compare_bill_sponsors(member1, member2, congress, chamber,
  key = NULL, as = "table", ...)

cg_members_bill_cosponsors(member, type, key = NULL, as = "table", ...)
}
\arguments{
\item{congress}{The number of the Congress this update took place during.}

\item{chamber}{The chamber this update took place in. 'house' or 'senate'.}

\item{key}{your ProPublica API key; pass in or loads from environment variable
stored as \code{PROPUBLICA_API_KEY} in either your .Renviron, or similar file
locatd in your home directory}

\item{as}{(character) IGNORED FOR NOW}

\item{...}{optional curl options passed on to \link[crul:HttpClient]{crul::HttpClient}.
See \code{\link[curl:curl_options]{curl::curl_options()}}}

\item{member, member1, member2}{A member ID}

\item{state}{A two character state code}

\item{district}{House of Representatives district number (House requests only)}

\item{type}{Type of bill. cosponsored or withdrawn}
}
\value{
various things for now, since return objects vary quite a bit
among the different members routes
}
\description{
Members functions
}
\examples{
\dontrun{
cg_members(congress = 115, chamber = "senate")
cg_member(member = 'K000388')
cg_members_new()
cg_members_state_district('senate', 'RI')
cg_members_leaving(congress = 115, chamber = "house")
cg_members_votes('K000388')
cg_members_compare_votes("G000575", "D000624", 114, "house")
cg_members_compare_bill_sponsors("G000575", "D000624", 114, "house")
cg_members_bill_cosponsors("B001260", "cosponsored")
}
}
