========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Cluster analysis of genetic data
# Author details: Laura E. Dennis and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script performs a cluster analysis on genetic data from a PCoA.  
# Cluster analysis on a PCoA

# Data Information: Data consists of Eigenvalues from a PCoA performed by Genalex with the genetic data of Pocillopora Type 1 species and Porites panamensis.
# Data was collected in the Gulf of California, Mexico between 2015 and 2019. 

# Copyright (c): 2022 Laura E. Dennis and David A. Paz-García


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
