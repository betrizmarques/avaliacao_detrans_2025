library(tidyverse)
library(googlesheets4)

tbl_links <- read.csv("onsv_avaliaçãodetrnas_2025/revisao-detrans/data/links_2025.csv")%>%
  select(-c(X.1,X))

save(tbl_links, file = "onsv_avaliaçãodetrnas_2025/revisao-detrans/data/links_2025.rda")

# get_state_name <- function(acronym) {
#   state_map <- list(
#     "AC" = "Acre",
#     "AL" = "Alagoas",
#     "AP" = "Amapá",
#     "AM" = "Amazonas",
#     "BA" = "Bahia",
#     "CE" = "Ceará",
#     "DF" = "Distrito Federal",
#     "ES" = "Espírito Santo",
#     "GO" = "Goiás",
#     "MA" = "Maranhão",
#     "MT" = "Mato Grosso",
#     "MS" = "Mato Grosso do Sul",
#     "MG" = "Minas Gerais",
#     "PA" = "Pará",
#     "PB" = "Paraíba",
#     "PR" = "Paraná",
#     "PE" = "Pernambuco",
#     "PI" = "Piauí",
#     "RJ" = "Rio de Janeiro",
#     "RN" = "Rio Grande do Norte",
#     "RS" = "Rio Grande do Sul",
#     "RO" = "Rondônia",
#     "RR" = "Roraima",
#     "SC" = "Santa Catarina",
#     "SP" = "São Paulo",
#     "SE" = "Sergipe",
#     "TO" = "Tocantins"
#   )
#   
#   return(state_map[[acronym]])
# }
# 
# get_state_names <- function(acronyms) {
#   state_names <- sapply(acronyms, get_state_name)
#   return(state_names)
# }
# 
# tbl_links |>
#   rename(
#     `Frota` = frota,
#     Condutores = condutores,
#     `Infrações` = infracoes,
#     `Sinistros` = sinistros,
#     `Estatísticas de atendimento` = estatistica_atend,
#     `Canais de atendimento` = canais,
#     `Conteúdos didáticos` = conteudos,
#     `Divulgação de atividades` = divulgacao,
#     CFCs = cfc
#   ) |>
#   pivot_longer(-UF) |>
#   mutate(UF = get_state_names(UF)) |>
#   group_by(UF) |>
#   gt(rowname_col = "name") |>
#   cols_label(value = "Links de acesso para informações") |>
#   sub_missing(missing_text = "N.D.") |>
#   tab_style(locations = cells_body(value),
#             style = list(cell_text(size = "smaller"))) |>
#   tab_options(
#     column_labels.background.color = onsv_palette$blue,
#     column_labels.font.weight = "bold"
#   ) |>
#   tab_style(style = cell_text(color = onsv_palette$blue),
#             locations = cells_title())
