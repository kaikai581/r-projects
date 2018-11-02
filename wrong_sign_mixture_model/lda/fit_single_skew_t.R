# load file
all_data<-read.csv('lda_value_target_flattened.csv', sep=' ', header=FALSE)
data<-all_data[seq(1, nrow(all_data), 100),]

# select neutrino events
ldv = subset(data, V2 == 14)

# select antineutrino events
ldvbar = subset(data, V2 == -14)

# plot histogram of neutrino events
hist(ldv$V1)

# fit skew t
library(EMMIXcskew)
#Fit<-fmcfust(1, ldv$V1)
Fit<-dcfust(ldv$V1, delta=rep(0, nrow(ldv)))
summary(Fit)
print(Fit)