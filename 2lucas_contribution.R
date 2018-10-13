### LOCAL MACHINE VERSION
download.file(url="https://github.com/EEB504/EEB504/raw/master/GitR/dirtivore.rda", destfile="dirtivore.rda") # you only have to do this once
load("dirtivore.rda"); ls() # load the dataset into the current R workspace and see what is in the workspace

### QUBESHub VERSION
dirtivore_df <- read.csv("/data/projects/eeb504project/dirtivore.csv", header = T, stringsAsFactors = FALSE)
str(dirtivore_df)

### Both:
non_numeric_indices <- which(is.na(as.numeric(dirtivore_df$rMax))) # may be helpful
non_numeric_indices # inspect which objects do not convert cleanly to numeric class
unique(gsub("\\d+\\.\\d+","", dirtivore_df$rMax[non_numeric_indices]))

dirtivore_df

plot( log10(as.numeric(dirtivore_df$MassKG)),log10(as.numeric(dirtivore_df$rMax)))
abline(lm(log10(as.numeric(dirtivore_df$rMax))~log10(as.numeric(dirtivore_df$MassKG))))
