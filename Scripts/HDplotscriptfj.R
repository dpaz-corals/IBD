========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Plotting Haplotype and Nucleotide Diversities
# Author details: Laura E. Dennis and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script plots the values of haplotype and nucleotide diversities by site on a double axes graph.  

# Data Information: Data consists of haplotype and nucleotide diversities by site calculated with DNAsp.
# Data was collected in the Gulf of California, Mexico between 2015 and 2019. 

# Copyright (c): 2022 Laura E. Dennis and David A. Paz-García


========== <>< <>< ************      Dependencies      ********** ><> ><>  ==========

library(ggplot2)
library(dplyr)
library(patchwork) # To display 2 charts together
library(hrbrthemes)
library(devtools)


========== <>< <>< ************     Data and Script    ********** ><> ><>  ==========

# Pocillopora

## by disturbance Level(Number groups 2)
Pd1<- data.frame(Poci_Hd_datar4)
rownames(Pd1)<-Pd1[,1]

## your 'treatment' column into a character vector
Pd1$Num <- as.character(Pd1$Num)

## Then turn it back into a factor with the levels in the correct order
Pd1$Num <- factor(Pd1$Num, levels=unique(Pd1$Num))

pfd<- pd7 + coord_cartesian(ylim = c(0, 1.1))

pfd


## BY Site 
rownames(Pd1)<-Pd1[,1]

## Turn your 'treatment' column into a character vector
Pd1$Site <- as.character(Pd1$Site)

## Then turn it back into a factor with the levels in the correct order
Pd1$Site <- factor(Pd1$Site, levels=unique(Pd1$Site))

library(ggpmisc)

pociHD <- ggplot(Pd1, aes(x=Site)) + 
  geom_point(aes(y=Hd, color = Level), size=4) + 
  scale_color_manual(values=c("orange", "green", "orange", "red")) +
  geom_errorbar(aes(ymin=Hd -Hd.S.D., ymax= Hd+Hd.S.D.),width=0.1, colour= "blue", alpha =0.9,
                position=position_dodge(0.05)) +
  geom_point(aes(y=Pi*100, color =Level), shape=23, size=4) +
  geom_errorbar(aes(ymin=Pi*100 -Pi.S.D.*100, ymax= Pi*100+Pi.S.D.*100),width=0.1, colour= "purple", alpha =0.9,
                position=position_dodge(0.05)) +
    scale_y_continuous(
    
    # Features of the first axis
    name = "Haplotype diversity",
    
    # Add a second axis and specify its features
    sec.axis = sec_axis(trans = ~.*0.01, name="Nucleotide Diversity")
  ) +
  xlab("Sites") +
  ggtitle("Pocillopora") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 11),
        axis.title.y = element_text(color = "blue", size=13),
        axis.title.y.right = element_text(color = "purple", size=13)
  ) 

pociHD



# Porites

Pc<-data.frame(ppa_hdRdatafj)
rownames(Pc)<-Pc[,1]

## Turn your 'treatment' column into a character vector
Pc$Site <- as.character(Pc$Site)

## Then turn it back into a factor with the levels in the correct order
Pc$Site <- factor(Pc$Site, levels=unique(Pc$Site))

Pc$Site <-as.factor(Pc$Site)
Pc$Site <- factor(Pc$Site,levels = unique)

ppaHD <- ggplot(Pc, aes(x=Site)) + 
  geom_point(aes(y=Hd, color = Level), size=4) + 
  scale_color_manual(values=c("#DE3163", "#0B9135", "#00AFBB", "purple")) +
  geom_errorbar(aes(ymin=Hd -Hd.S.D., ymax= Hd+Hd.S.D.),width=0.1, colour= "blue", alpha =0.9,
                position=position_dodge(0.05)) +
  geom_point(aes(y=Pi*100, color =Level), shape=23, size=4) +
  geom_errorbar(aes(ymin=Pi*100 -Pi.S.D.*100, ymax= Pi*100+Pi.S.D.*100),width=0.1, colour= "purple", alpha =0.9,
                position=position_dodge(0.05)) +
  
  scale_y_continuous(
    
    # Features of the first axis
    name = "Haplotype diversity",
    
    # Add a second axis and specify its features
    sec.axis = sec_axis(trans = ~.*0.01, name="Nucleotide Diversity")
  ) +
  xlab("Sites") +
  ggtitle("Porites") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 12),
        axis.title.y = element_text(color = "blue", size=13),
        axis.title.y.right = element_text(color = "purple", size=13)
  ) 

ppaHD



========== <>< <>< ************        END / FIN       ********** ><> ><>  ==========
