#' 1/coef for a lm.
#'
#' How many of independent var needed to get 1 dependent var?
#' @param lm.object Output of lm function.
#' @keywords lm coefficient
#' @import data.table
#' @export

oneDividedbyCoef <- function(lm.object) {
  
  out <- data.table::data.table(names(coef(lm.object)),
                    format(1/coef(lm.object), scientific = FALSE))
  
  setnames(out, names(out), c("independent.var", "one.dividedby.coef"))
  
  return(out[])
}
