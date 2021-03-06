#'@title Save data to file system
#'@description Function to save data sets to disk in different file formats.
#'@param df data.frame. Data set to be saved.
#'@param path character. Directory path.
#'@param format character. Format, one of \code{"txt"}, \code{"sps"}, \code{"sas"} or \code{"dta"}.
#'@param name character. File name.
#'@references \url{http://www.statmethods.net/input/exportingdata.html}
#'@author Jan Dix (\email{jan.dix@@uni-konstanz.de}), Jana Blahak (\email{jana.blahak@@uni-konstanz.de}), Christian Graul (\email{christian.graul@@gmail.com})
#'@export
zeitSave <- function(df, format = c("txt", "sps", "sas", "dta"), path = getwd(), name = "zeit_df") {
  
  format <- match.arg(format)
  
  # create directory if path does not exist
  if (!file.exists(path)) {
    dir.create(path, showWarnings = FALSE)
  }

  # create name and path for saving
  time <- str_replace_all(as.character(Sys.time()), "\\W", "-")
  name <- paste(name, time, sep = "_")
  path <- paste(path, "/", name, sep = "")

  # save as txt
  if(format == "txt") {
    path <- paste(path, ".txt", sep = "")
    write.table(df, path, sep="\t")
  }

  # save as spss file
  else if(format == "sps") {
    pathTxt <- paste(path, ".txt", sep = "")
    pathSpss <- paste(path, ".sps", sep = "")
    write.foreign(df, pathTxt, pathSpss, package = "SPSS")
  }

  # save as sas file
  else if(format == "sas") {
    pathTxt <- paste(path, ".txt", sep = "")
    pathSas <- paste(path, ".sas", sep = "")
    write.foreign(df, pathTxt, pathSas, package = "SAS")
  }

  # save as stata file
  else if(format == "dta") {
    path <- paste(path, ".dta", sep = "")
    write.dta(df, path)
  }
}
