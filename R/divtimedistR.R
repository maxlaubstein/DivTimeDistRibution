get.node.age.posterior <- function(nexusfile, targetnode) {

  trees <- ape::read.nexus(nexusfile)

  posterior.sample <- c(rep(NaN, length(trees)))
  for (i in 1:length(trees)) {
    posterior.sample[i] <- as.numeric(ape::branching.times(trees[[i]])[targetnode])
  }

  posterior.sample <- na.omit(posterior.sample)

  return(posterior.sample)
}

