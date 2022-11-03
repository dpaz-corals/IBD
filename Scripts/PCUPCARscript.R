========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Principal Component Analysis of Percent Coverage Unit data of benthic assemblages
# Author details: Laura E. Dennis and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script performs a principal component analysis on the count values of benthic assemblages organized as functional groups within sites.  
# Stacked Bar chart for PCU

# Data Information: Data consists of percent coverage units of the present benthic assemblages organised into functional groups.
# Data was collected in the Gulf of California, Mexico in 2018. 

# Copyright (c): 2022 Laura E. Dennis and David A. Paz-García


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
