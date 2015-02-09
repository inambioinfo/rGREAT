\name{getEnrichmentTables-GreatJob-method}
\alias{getEnrichmentTables}
\alias{getEnrichmentTables,GreatJob-method}
\title{
Get enrichment tables from GREAT web server


}
\description{
Get enrichment tables from GREAT web server


}
\usage{
\S4method{getEnrichmentTables}{GreatJob}(job, ontology = NULL, category = c("GO", "Pathway_Data"),
    request_interval = 30, max_tries = 100)
}
\arguments{

  \item{job}{a \code{\link{GreatJob}} instance
  \item{ontology}{ontology names. Valid values are in \code{\link{availableOntologies}}. \code{ontology} is prior to 
  \item{category}{Pre-defined ontology categories. One category can contain more than one ontologies. Valid values are in 
  \item{request_interval}{time interval for two requests. Default is 300 seconds.
  \item{max_tries}{maximum tries

}
\details{
The table contains statistics for the each term in each ontology catalogue.

Please note there is no FDR column in original tables. Users should 


}
\value{
The returned value is a list of data frames in which each one corresponds to 


}
\author{
Zuguang gu <z.gu@dkfz.de>


}
\examples{
job = readRDS(paste0(system.file("extdata", package = "rGREAT"), "/job.rds"))
tb = getEnrichmentTables(job)
names(tb)
head(tb[[1]])
job

tb = getEnrichmentTables(job, ontology = c("GO_Molecular_Function", "BioCyc_Pathway"))
tb = getEnrichmentTables(job, category = c("GO"))
}