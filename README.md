# GreaterBuenosAiresPartidos

Paquete R para asignar automáticamente el partido político correspondiente a una localidad del Área Metropolitana de Buenos Aires (AMBA).

## Instalación

```r
# Instalar desde GitHub
# install.packages("devtools")
devtools::install_github("nicorearte/GreaterBuenosAiresPartidos")


#Uso
library(GreaterBuenosAiresPartidos)

# Ejemplo de uso
df <- data.frame(localidad = c("Olivos", "San Martín", "Tigre"))
df_con_partido <- assign_partido(df)
print(df_con_partido)
