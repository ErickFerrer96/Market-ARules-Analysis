# Market-ARules-Analysis
Association rules for a dataset in R

# Requirements

Install RStudio 

# Code

In MarketRules.R

In this part of the code i just import the dataset with read.cvs, and obtein a object of transaction.

```R

#Proyecto Reglas de asociasion 

#install('arules')

#Pre-procesando data

library('arules')

dataset = read.csv('/Users/Erick/Desktop/9no/ProyectoDM/ReporteReglas/Base/Market_Basket_Optimisation.csv',header = FALSE)

dataset = read.transactions('/Users/Erick/Desktop/9no/ProyectoDM/ReporteReglas/Base/Market_Basket_Optimisation.csv',sep = ',',rm.duplicates = TRUE)

summary(dataset)
```
Then for a plot of the ten 10 most purchased items

```R
itemFrequencyPlot(dataset, topN = 10)
```

For the training i create the variable "reglas" witch contain the rules based on the apriori algorithm, with a minium of 0.004 in support and 0.2 in confidence. 

```R

#Entrenando el algorimo Apriori para la base

reglas = apriori(data=dataset,parameter = list(support = 0.004,confidence = 0.2))

```
Finally for analyze the rules we put our variable reglas in a inspect so we can see it in the console.

```
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
