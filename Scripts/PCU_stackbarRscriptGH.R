========== <>< <>< ************   Script Information   ********** ><> ><>  ==========

# Title: Stacked Bar chart for PCU
# Author details: Laura E. Denisse and David A. Paz-García
# Contact details: dpaz@cibnor.mx

# Copyright (c): 2022 Laura E. Denisse and David A. Paz-García


========== <>< <>< ************      Dependencies      ********** ><> ><>  ==========

library(ggplot2)

PCU1<- data.frame(PCUstackdata)


# Stacked + percent
ggplot(PCU1, aes(fill=Group, y=Percent, x=Site)) + 
  geom_bar(position="fill", stat="identity")
