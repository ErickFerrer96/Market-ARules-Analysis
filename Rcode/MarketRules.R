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
