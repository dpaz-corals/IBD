========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Ejemplo del Script (Análisis contenido en el script)
# Author details: Laura E. Denisse and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script performs a time series analyses on count data.  
# Stacked Bar chart for PCU

# Data Information: Data consists of counts of bird species.
# Data was collected in the hunter valley region between 1990 and 1991. 

# Copyright (c): 2022 Laura E. Denisse and David A. Paz-García


========== <>< <>< ************      Dependencies      ********** ><> ><>  ==========

# Setting up the Eigenvalues for the plot
Pocv4_PCoA<- data.frame(Pv4_Eigenvalues_noarena)
rownames(Pocv4_PCoA)<-Pocv4_PCoA[,1]
Pocv4_PCoA<-Pocv4_PCoA[,-1]

# Load libraries
library(factoextra)
library(tidyverse)

# Determine number of clusters

# elbow
fviz_nbclust(Pocv4_PCoA, kmeans,k.max = 8, method = "wss") + geom_vline(xintercept = 2, linetype = 2) + labs(subtitle = "Elbow method (Pocillopora)")



# Silhuoette
fviz_nbclust(Pocv4_PCoA, kmeans, method = "silhouette", k.max = 6) + theme_minimal() + ggtitle("The Silhouette Plot - Pocillopora")


library(cluster)
set.seed(42)
km_respoci4 <- kmeans(Pocv4_PCoA, centers = 4, nstart = 25)
silpoci4 <- silhouette(km_respoci4$cluster, dist(Pocv4_PCoA))
rownames(silpoci4) <- rownames(Pocv4_PCoA)
fviz_silhouette(silpoci4, label = TRUE)
fviz_cluster(km_respoci4, Pocv4_PCoA, ggtheme = theme_minimal())


km_respoci3 <- kmeans(Pocv4_PCoA, centers = 3, nstart = 25)
silpoci3 <- silhouette(km_respoci3$cluster, dist(Pocv4_PCoA))
rownames(silpoci3) <- rownames(Pocv4_PCoA)
fviz_silhouette(silpoci3, label = TRUE)
fviz_cluster(km_respoci3, Pocv4_PCoA,
             palette = c("#33cc33", "#ff9900", "#ff0000"),
             ggtheme = theme_minimal())




km_respoci2 <- kmeans(Pocv4_PCoA, centers = 2, nstart = 25)
silpoci2 <- silhouette(km_respoci2$cluster, dist(Pocv4_PCoA))
rownames(silpoci2) <- rownames(Pocv4_PCoA)
fviz_silhouette(silpoci2, label = TRUE)
fviz_cluster(km_respoci2, Pocv4_PCoA, ggtheme = theme_minimal())



# Gap stat
set.seed(123)
fviz_nbclust(Pocv4_PCoA, kmeans, k.max=7, nstart = 25,  method = "gap_stat", nboot = 500) +
  labs(subtitle = "Gap statistic method Pocillopora")

# Optimal
nbclust_outpoci <- NbClust(data = Pocv4_PCoA, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 7, method = "kmeans")

# create a dataframe of the optimal number of clusters
nbclust_plotpoci <- data.frame(clusters = nbclust_outpoci$Best.nc[1, ])
# select only indices which select between 2 and 5 clusters
nbclust_plotpoci <- subset(nbclust_plotpoci, clusters >= 2 & clusters <= 5)

# create plot
ggplot(nbclust_plotpoci) +
  aes(x = clusters) +
  geom_histogram(bins = 30L, fill = "#0c4c8a") +
  labs(x = "Number of clusters", y = "Frequency among all indices", title = "Optimal number of clusters") +
  theme_minimal()


#cluster analyses
Poci_km.res1<-kmeans(Pocv4_PCoA,3, k.max=8, nstart = 25)

Poci_km.res4<-kmeans(Pocv4_PCoA,4, nstart = 25)
fviz_cluster(Poci_km.res4, Pocv4_PCoA, ggtheme = theme_minimal())

Poci_km.res2<-kmeans(Pocv4_PCoA,2, nstart = 25)
fviz_cluster(Poci_km.res2, Pocv4_PCoA, ggtheme = theme_minimal())

#plotting the cluster analyses
fviz_cluster(Poci_km.res1, Pocv4_PCoA, ggtheme = theme_minimal())

#to change colour of clusters use palette fn



========== <>< <>< ************        END / FIN       ********** ><> ><>  ==========