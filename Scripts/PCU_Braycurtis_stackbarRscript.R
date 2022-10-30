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

library(ggplot2)
library(tidyverse)
library(dplyr)
library(tidyr)
library(readr)


========== <>< <>< ************     Data and Script    ********** ><> ><>  ==========

PCU1<- data.frame(PCUstackdata) %>%

## Preparing of matrix by func groups 
PCU2<-PCU1  %>% pivot_wider(names_from = Group, values_from = Percent, values_fill = 0)
rownames(PCU2) <-PCU2$Site
row.names(TRUE)
PCU2 <-PCU2[row.names =TRUE, -1]
PCU2 <-as.matrix(PCU2)
PCU2<-PCU2[,-1]

str(PCU2)

PCU2 <- data.matrix(PCU2, rownames.force = TRUE)
  
PCU3<- lapply(PCU2, as.numeric)
PCU3<-as.matrix(PCU3)


PCU_num <- as.data.frame(apply(PCU2, 2, as.numeric))  # Convert all variable types to numeric
sapply(PCU_num, class) 
rownames(PCU_num) <- c("Roca_Swany","Bonanza","Dispensa","SanGabrielCentral","Corralito","Ballena" )


## Calculating distances

library(vegan)
distb <- vegdist(PCU_num, method = "bray")

print(distb)


PCU_num <- as.data.frame(apply(PCU2, 2, as.numeric))  # Convert all variable types to numeric
sapply(PCU_num, class) 
rownames(PCU_num) <- c("Roca_Swany","Bonanza","Dispensa","SanGabrielCentral","Corralito","Ballena" )



## Mantel tests


PCU_man<- as.matrix(distb)


Phipt_man<-as.matrix(Poci_PHIPT_EHMan)
  

Phipt_man<-Phipt_man[,-1]

rownames(Phipt_man) <- c("Roca_Swany","Bonanza","Dispensa","SanGabrielCentral","Corralito","Ballena" )
Phipt_man<-as.matrix(Phipt_manp)

Phipt_manp<-c(Phipt_man)
Phipt_manp1<- as.numeric(Phipt_man)
Phipt_mantel<-as.matrix(Phipt_manp1)




## Stacked + percent
ggplot(PCU1, aes(fill=Group, y=Percent, x=Site)) + 
  geom_bar(position="fill", stat="identity")



========== <>< <>< ************        END / FIN       ********** ><> ><>  ==========