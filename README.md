# Market-ARules-Analysis
Association rules for a dataset in R

# Requirements

Install RStudio 

# Code

In MarketRules.R

```R

#Proyecto Reglas de asociasion 

#install('arules')

#Pre-procesando data

library('arules')

dataset = read.csv('/Users/Erick/Desktop/9no/ProyectoDM/ReporteReglas/Base/Market_Basket_Optimisation.csv',header = FALSE)

dataset = read.transactions('/Users/Erick/Desktop/9no/ProyectoDM/ReporteReglas/Base/Market_Basket_Optimisation.csv',sep = ',',rm.duplicates = TRUE)

summary(dataset)

itemFrequencyPlot(dataset, topN = 10)

#Entrenando el algorimo Apriori para la base

reglas = apriori(data=dataset,parameter = list(support = 0.004,confidence = 0.2))

#Visualizar las reglas

inspect(sort(reglas, by = 'lift')[1:20])

```

## Authors
 

* **Ferrer Garcia Erick** - [ErickFerrer96](https://github.com/ErickFerrer96)

## Documentation 

[Documentación de R](https://docs.rstudio.com)

## Galeria

|Index| Description | Image |
| ---| --- | --- |
| 1 | Parametros que toma en cuenta el clustering | <img src="Imagenes/Indicadores.png" width="500" heigth="300"> |
| 2 | Resultado de 6 clusters | <img src="Imagenes/Mapa.png" width="300" heigth="600"> |
