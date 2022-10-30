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

PCdata<- data.frame(PC_data)
rownames(PCdata)<-PCdata[,1]
PCdata<-PCdata[,-1]

summary(PCdata)

sites.pc <-prcomp(PCdata, center = TRUE, scale. = TRUE)

summary(sites.pc)


library(devtools)
install_github("vqv/ggbiplot")

library(ggbiplot)
ggbiplot(sites.pc, labels=rownames(PCdata))

library(factoextra)

fviz_pca_ind(sites.pc,
             col.ind = "cos2", # Color by the quality of representation
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07")     # Avoid text overlapping
		)




fviz_pca_ind(sites.pc,
             col.ind = "cos2", # Color by the quality of representation
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE     # Avoid text overlapping
		)



========== <>< <>< ************        END / FIN       ********** ><> ><>  ==========