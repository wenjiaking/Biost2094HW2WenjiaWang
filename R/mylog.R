#' Self defined log function
#'
#' @param x positive value
#'
#' @return log x
#' @export
#'
#' @examples
#' x=2
#' mylog(x)
#' @import rlang
mylog = function(x){
  if (x<=0) {
    rlang::abort(message ="negative input, NA introduced!")
  } else (log(x))
}
