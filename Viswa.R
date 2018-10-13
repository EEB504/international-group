dirtivore_df <- read.csv("/data/projects/eeb504project/dirtivore.csv",header=T,stringsAsFactors = FALSE)
plot(dirtivore_df)
with(dirtivore_df,plot(MassKG,rMax))
non_numeric_indices <- which(is.na(as.numeric(dirtivore_df$rMax)))
non_numeric_indices
unique(gsub("\\d+\\.\\d+","", dirtivore_df$rMax[non_numeric_indices]))
with(dirtivore_df,plot(MassKG,rMax))
dirtivore_df$rMax <- as.numeric(dirtivore_df$rMax)
dirtivore_df$MassKG <- as.numeric(dirtivore_df$MassKG)
plot(log10(dirtivore_df$MassKG), log10(dirtivore_df$rMax))

