========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Bray Curtis calculations and Mantel test to test for IBE
# Author details: Laura E. Dennis and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script performs first Bray Curtis calculations to determine environmental distances using the present benthic assemblages organized by functional group and then performs a Mantel test with this data against genetic distances (PHipt).  
# Bray Curtis distances for a Mantel test

# Data Information: Data consists of percent coverage unit counts of benthic assemblages recorded at each site and organized into functional groups. Genetic data of the coral species Pocillopora Type 1 species and Porites panamensis is also included as genetic distances (PHipT) calculated by Genalex.
# Data was collected in the Gulf of California, Meixco between 2015 and 2019. 

# Copyright (c): 2022 Laura E. Dennis and David A. Paz-García


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
