library(Rmisc)
library(ggplot2)
library(ggpubr)
library(plyr)
library(dplyr)
library(tidyverse)
library(psych)
library(viridis)
library(cowplot)
library(readr)
library(stringr)
library(lme4)
library(lmerTest)
library(car)
library(ez)
library(lsr)
library(Hmisc) 

sub_list = c(1:7, 9:14, 17:21, 22:29, 31:33, 35:36)
# 8 15 30 34: learned pairmates <= 6 pairs by the 6th round. 
# 16: Max FD > 3.5mm

rois = c('ca23dg_body_thre_0.5','ca1_body_thre_0.5', 'ppa_avg_scene_top_300','evc_avg_all_top_300')

cbPalette <- c("#CC79A7","#0072B2","#E69F00","#009E73","#56B4E9","#F0E442","#999999","#D55E00")
text.14 = element_text(family = "Helvetica", size=13)
theme_settings <-theme_classic() + 
  theme(#legend.position = "none",
    axis.text.x = text.14,
    axis.title.x = text.14,
    axis.text.y = text.14,
    axis.title.y = text.14,
    axis.title = text.14,
    legend.text=text.14,
    legend.title = text.14) 
