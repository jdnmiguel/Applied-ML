        # First script ----
getwd()


# Import data & packages ----
install.packages("readxl")
library(readxl)
library(dplyr)
library(tidyr)

ethio_pop = read_excel("ethiopia_pop.xls")

# Subsetting ----
past_afar <- ethio_pop %>% 
  filter(afar==1 & pastoralist==1)

ag_amhara <- ethio_pop %>% 
  filter(amhara==1 & agricultural==1)

names(past_afar)

pop_pa <- past_afar[, "t_tl"]
pop_pa <- past_afar %>% select(t_tl)
pop_aa <- ag_amhara %>% select(t_tl)

# Descriptive statistics ----
summary(pop_aa)
summary(pop_pa)
NROW(pop_aa)
NROW(pop_pa)



