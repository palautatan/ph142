# * SAMPLING DISTRIBUTION FOR n=5
samples <- c()
for (ix in 1:100) {
  print(ix)
  sample_5    <- alameda %>% sample_n(5)
  sample_mean <- sample_5 %>% summarize(mean_sibs=mean(num_sibs)) %>% pull(mean_sibs)
  
  
  current_samples <- c(samples[which(samples[,2]==(ix-1)),1], sample_mean)
  current_samples <- cbind(current_samples, rep(ix, length(current_samples)))   
  print(current_samples)
  
  samples     <- rbind(samples, current_samples)
  current_samples <- c()
}

samples <- data.frame(samples)
names(samples) <- c("sample_mean_sibs", "sample_number")

# * ANIMATE A PLOT
library(gganimate)
library(gifski)
n5 <- ggplot(samples, aes(x=sample_mean_sibs)) +
  geom_histogram(binwidth=0.2, col="white", lwd=0.2) + 
  geom_vline(xintercept=1.1899, col="royalblue") +
  xlab("Sample mean for number of siblings") +
  ylab("Total counts") +
  xlim(0,4)
n5_a <- n5 + transition_states(sample_number) + labs(title = 'n = 5 | Total sample means included in graph  = 2 * {closest_state}')
n5_a <- animate(n5_a, nframes=100)



# * SAMPLING DISTRIBUTION FOR n=50
samples <- c()

# ix <- 2
for (ix in 1:100) {
  print(ix)
  sample_5    <- alameda %>% sample_n(50)
  sample_mean <- sample_5 %>% summarize(mean_sibs=mean(num_sibs)) %>% pull(mean_sibs)
  
  
  current_samples <- c(samples[which(samples[,2]==(ix-1)),1], sample_mean)
  current_samples <- cbind(current_samples, rep(ix, length(current_samples)))   
  print(current_samples)
  
  samples     <- rbind(samples, current_samples)
  current_samples <- c()
}

samples <- data.frame(samples)
names(samples) <- c("sample_mean_sibs", "sample_number")

# * ANIMATE A PLOT
library(gganimate)
library(gifski)
n50 <- ggplot(samples, aes(x=sample_mean_sibs)) +
  geom_histogram(binwidth=0.2, col="white", lwd=0.2) + 
  geom_vline(xintercept=1.1899, col="royalblue") +
  xlab("Sample mean for number of siblings") +
  ylab("Total counts") +
  xlim(0,4)
n50_a <- n50 + transition_states(sample_number) + labs(title = 'n = 50 | Total sample means included in graph  = 2 * {closest_state}')
n50_a <- animate(n50_a, nframes=100)


# * SAMPLING DISTRIBUTION FOR n=500
samples <- c()

# ix <- 2
for (ix in 1:100) {
  print(ix)
  sample_5    <- alameda %>% sample_n(500)
  sample_mean <- sample_5 %>% summarize(mean_sibs=mean(num_sibs)) %>% pull(mean_sibs)
  
  
  current_samples <- c(samples[which(samples[,2]==(ix-1)),1], sample_mean)
  current_samples <- cbind(current_samples, rep(ix, length(current_samples)))   
  print(current_samples)
  
  samples     <- rbind(samples, current_samples)
  current_samples <- c()
}

samples <- data.frame(samples)
names(samples) <- c("sample_mean_sibs", "sample_number")

# * ANIMATE A PLOT
library(gganimate)
library(gifski)
n500_i <- ggplot(samples, aes(x=sample_mean_sibs)) +
  geom_histogram(binwidth=0.2, col="white", lwd=0.2) + 
  geom_vline(xintercept=1.1899, col="royalblue") +
  xlab("Sample mean for number of siblings") +
  ylab("Total counts") +
  xlim(0,4)
n500_ia <- n500_i + transition_states(sample_number) + labs(title = 'n = 500 | Total sample means included in graph  = 2 * {closest_state}')
n500_ia <- animate(n500_ia, nframes=100)


n500_ii <- ggplot(samples, aes(x=sample_mean_sibs)) +
  geom_histogram(binwidth=0.08, col="white", lwd=0.2) + 
  geom_vline(xintercept=1.1899, col="royalblue") +
  xlab("Sample mean for number of siblings") +
  ylab("Total counts") +
  xlim(0,4)
n500_iia <- n500_ii + transition_states(sample_number) + labs(title = 'n = 500 | Total sample means included in graph  = 2 * {closest_state}')
n500_iia <- animate(n500_iia, nframes=100)
