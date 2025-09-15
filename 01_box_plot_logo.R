# (Retirar o # se não tiver instalado o pacote)
# install.packages("tidyverse")

# Carregando o pacote
library(tidyverse)

# Criar tibble
dados_notas <- tibble(notas = c(0, 0, 1.5, 2, 2, 3, 4, 4, 5, 6, 10))

# Visualizar o banco
print(dados_notas)

# Boxplot
boxplot(
  dados_notas$notas, # banco$variável
  col = "white", # cor da caixa
  border = "#00ac86", # cor das bordas
  pch = 19, # formato do outlier
  outcol = "#00ac86", # cor do outlier
  boxwex = 0.12, # largura da caixa
  staplewex = 1, # largura dos bigodes
  whisklty = 1, # estilo da linha dos bigodes
  ylab = "Notas" # rótulo no eixo X
)

