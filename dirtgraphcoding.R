download.file(url="https://github.com/EEB504/EEB504/raw/master/GitR/dirtivore.rda",destfile = "dirtivore.rda")
load("dirtivore.rda")
str(dirtivore_df)

non_numeric_indices<-which(is.na(as.numeric(dirtivore_df$rMax)))
non_numeric_indices

non_numeric_2<-which(is.na(as.numeric(dirtivore_df$MassKG)))
non_numeric_2

dirtivore_df$rMax<-as.numeric(dirtivore_df$rMax)
dirtivore_df$MassKG<-as.numeric(dirtivore_df$MassKG)

plot(log10(dirtivore_df$MassKG),log10(dirtivore_df$rMax))
abline(lm(log10(dirtivore_df$rMax)~log10(dirtivore_df$MassKG)))

library(ggplot2)
####hi!!!!
