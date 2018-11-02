# load file
data<-read.csv('lda_value_target_flattened.csv', sep=' ', header=FALSE)

# select neutrino events
ldv = subset(data, V2 == 14)

# select antineutrino events
ldvbar = subset(data, V2 == -14)