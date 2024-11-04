#' Provide Number of R Packages by Library
#'
#' Provide the number of R package by library
#' in a data.frame
#'
#' @return a data.frame of R packages by library
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages() # what's installed in our system
  pkg_tbl <- table(pkgs[, "LibPath"]) # pull out the library path and summarizes
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = F) #format as df
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
