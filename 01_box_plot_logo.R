# (Retirar o # se não tiver instalado o pacote)
# install.packages("tidyverse")

# Carregando o pacote
library(tidyverse)


# Criar tibble
dados_notas <- tibble(notas = c(0, 0, 1.5, 2, 2, 3, 4, 4, 5, 6, 10))

# Visualizar o banco
print(dados_notas)

# Boxplot - com instruções de cada passo
ggplot(
  dados_notas, # banco a ser utilizado
  aes(x = "", y = notas)) + # atribuição dos eixos x e y
  geom_boxplot( # escolha do tipo de gráfico
    width = 0.12, # largura da caixa
    colour = "#00ac86", # contorno da caixa
    fill = "white", # caixa com fundo branco
    outlier.colour = "#00ac86", # cor do outlier
    outlier.shape = 19, # formato do outlier
    outlier.size = 3 # tamanho do outlier
  )
