# (Retirar o # se não tiver instalado o pacote)
# install.packages("tidyverse")

# Carregando o pacote
library(tidyverse)


# Criar tibble
dados <- tibble(valor = c(5, 5, 6, 6, 6, 7, 
                          8, 9, 9, 9, 10, 11)
                )

# Visualizar o banco
print(dados)

# Boxplot - com instruções de cada passo
ggplot(
  dados, # banco a ser utilizado
  aes(x = "Quartis consultoria", y = valor)) + # atribuição dos eixos x e y
  geom_boxplot( # escolha do tipo de gráfico
    width = 0.12, # largura da caixa
    colour = "#00ac86", # contorno da caixa
    fill = "white", # caixa com fundo branco
    outlier.colour = "#00ac86", # cor do outlier
    outlier.shape = 19, # formato do outlier
    outlier.size = 3, # tamanho do outlier
    coef = 0.65 # multiplicador do IQR para definir outliers
  )

# Boxplot - limpo
ggplot(
  dados,
  aes(x = "Quartis consultoria", y = valor)) +
  geom_boxplot(
    width = 0.12,
    colour = "#00ac86",
    fill = "white",
    outlier.colour = "#00ac86",
    outlier.shape = 19,
    outlier.size = 3,
    coef = 0.65
  )