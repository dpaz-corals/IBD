========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Mean Rao's Q trend over time by site.
# Author details: Laura E. Dennis and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Script and data info: This script performs a time series analyses on satellite data that has been converted into Rao's Q values.  

# Data Information: Data consists of counts of Rao's Q values calculated through satellite images.
# Data was collected in the Gulf of California between 2014 and 2017. 

# Copyright (c): 2022 Laura E. Dennis and David A. Paz-García


========== <>< <>< ************      Dependencies      ********** ><> ><>  ==========

library(ggplot2)
install.packages("ggplot")
library(ggplot)

install.packages("devtools")
library(devtools)

install_github("easyGgplot2", "kassambara")
library(easyGgplot2)

install.packages("gginnards")
library(gginnards)

library(ggpmisc)
library(dplyr)
library(ggpubr)


========== <>< <>< ************     Data and Script    ********** ><> ><>  ==========

#rao data (poci)
raot<- data.frame(raoRdata)
my.formula <- y ~ x  



## ==============================================================
## Corralito

#Filter Data

Corralito <- filter(raot, reef == "Corallito")
Corralito<-data.frame(Corralito)

#Plot Data

raotrC= ggplot(data = Corralito, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("Corralito mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula,
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrC + stat_cor(method = "pearson", label.y = .09)



## ==============================================================
## Roca Swany

RS <- filter(raot, reef == "Roca_soany")
RS<-data.frame(RS)

raotrRS= ggplot(data = RS, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("Roca Swany mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula, 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrRS + stat_cor(method = "pearson", label.y = .09)



## ==============================================================
## Bonanza

B <- filter(raot, reef == "Bonanza")
B<-data.frame(B)

my.formula <- y ~ x

raotrB= ggplot(data = B, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("Bonanza mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula, small.p = TRUE, 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrB + stat_cor(method = "pearson", label.y = .09)



## ==============================================================
## San Gabriel central

Sgc <- filter(raot, reef == "S_Gab_cent")
Sgc<-data.frame(Sgc)

my.formula <- y ~ x

raotrSgc= ggplot(data = Sgc, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("San Gabriel central mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula, 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrSgc + stat_cor(method = "pearson", label.y = .09)



## ==============================================================
## San Gabriel punta

Sgp <- filter(raot, reef == "S_Gab_punt")
Sgp<-data.frame(Sgp)

my.formula <- y ~ x

raotrSgp= ggplot(data = Sgp, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("San Gabriel punta mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula, 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrSgp + stat_cor(method = "pearson", label.y = .025)



## ==============================================================
## Dispensa

Di <- filter(raot, reef == "Dispensa")
Di<-data.frame(Di)

my.formula <- y ~ x

raotrDi= ggplot(data = Di, aes(x= as.Date(date), y= mean_rao)) + geom_point(size = 2) +
  ggtitle("Punta Dispensa punta mean rao trend in time") +
  geom_smooth(method = "lm", se = TRUE, color='blue')+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  xlab("Year")+ylab("Mean rao") +
  geom_errorbar(aes(ymin=mean_rao -var_rao, ymax= mean_rao+var_rao),width=39.9,
                position=position_dodge(0.05))+
  stat_poly_eq(formula = my.formula, 
               aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~")), 
               parse = TRUE)   +
  coord_cartesian(ylim = c(0.01, 0.1))

raotrDi + stat_cor(method = "pearson", label.y = .09)



========== <>< <>< ************        END / FIN       ********** ><> ><>  ==========
