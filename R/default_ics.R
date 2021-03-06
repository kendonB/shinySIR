#' Get default initial conditions
#'
#' This function returns the default parameter vectors for a particular built-in model.
#' @param model name of the model to be solved. Examples include: SIR and SIR vaccination.
#' @return named vector of default initial conditions.
#'
get_ics <- function(model){

    ics <- NULL

    # SIR variants
    if(substr(model, start = 1, stop = 3) == "SIR" ){
        ics <- c(S = 330000000*0.7, I = 3000000, R = 330000000*0.3 - 3000000)
    }

    # Other
    if(substr(model, start = 1, stop = 3) == "SIS" ){
        ics <- c(S = 9999, I = 1)
    }
    return(ics)
}

