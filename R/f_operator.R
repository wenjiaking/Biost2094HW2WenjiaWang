#' function operator
#'
#' @param f a function name
#'
#' @return a new function
#' @export
#'
#' @examples
#' f_operator(mysqrt)
#' @import rlang
f_operator = function(f){
  force(f)
  operator_f=function(x) {
    if (x>0) {
      f(x)
    }
    else {
      cnd=rlang::catch_cnd(rlang::abort(.subclass ="invalid input",message="invilid input",invalid_input=x))
    }
  }
  return(operator_f)
}
