#' Assign Partido to each row based on Localidad
#'
#' @param data A dataframe with at least a column of localidades
#' @param localidad_column The name of the column containing localidades
#' @param partido_column The name of the column where the partido will be added
#' @param localidad_partido_map A list containing localidad-partido mapping
#'
#' @return A dataframe with a new column for partido
#' @export
assign_partido <- function(data, localidad_column = "Localidad", partido_column = "Partido", localidad_partido_map) {
  library(dplyr)
  library(stringi)

  data <- data %>%
    mutate(
      !!sym(localidad_column) := toupper(stri_trans_general(str_trim(!!sym(localidad_column)), "Latin-ASCII")),
      !!sym(partido_column) := case_when(
        Localidad %in% localidad_partido_map[[1]] ~ localidad_partido_map[[2]],
        TRUE ~ "otros partidos"
      )
    )

  return(data)
}
