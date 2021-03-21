#' Self defined sqrt function
#'
#' @param x nonnegative value
#'
#' @return sqrt of x
#' @export
#'
#' @examples
#' x=2
#' mysqrt(x)
#' @import  rlang
mysqrt = function(x){
  if (x<0) {
    rlang::abort(message ="negative input, NA introduced!")
  } else (sqrt(x))
}

