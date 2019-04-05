mu_0 <- 2

bob_data <- c(4.75, 4.4, 3.8, 5.2, 4.2, 4.7, 5.12, 4.9, 6, 2, 2.3, 1.5, 2.2, 3.8, 3.7, 6.5, 6.2)
hist(bob_data)

# * THIS IS BY HAND
n <- length(bob_data)
x_bar <- mean(bob_data)
sample_sd <- sd(bob_data)
t <- (x_bar-mu_0) / (sample_sd/sqrt(n))
df <- n-1
2*(1 - pt(q=t, df=df))


# * THIS IS "USING R"
test <- t.test(x=bob_data, alternative="two.sided", mu=2)
test$p.value






x <- seq(-4, 4, length=100)
hx <- dt(x, df=n-1)

plot(x, hx, type="l", lty=1, xlab="x value",
     ylab="Density", main="t Distribution with n-1=15 df")

# t <- (x_bar-mu_0) / (sample_sd/sqrt(n))
# df <- n-1
# 2*(1 - pt(q=t, df=df))

# test <- t.test(x=bob_data, alternative="two.sided", mu=2)
# test$p.value
