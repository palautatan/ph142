# * DISCUSSION PROBLEM 1
n_1 <- 2992
n_2 <- 578

p_1 <- 656/n_1
p_2 <- 96/n_2

p_hat <- (656+96)/(2992+578)

numerator <- (p_1-p_2)
denominator <- sqrt(p_hat * (1-p_hat) * (1/n_1 + 1/n_2))
z <- numerator/denominator

# * WE DON'T MULTIPLY BY 2 BECAUSE OUR ALT HYPOTHESIS
# * IS ONLY ONE WAY
1-pnorm(z)

# * P-VALUE
# * THE PROB OF OBS MY DATA (DIFF IN SAMPLE PROPORTS=0.05)
# * GIVEN THAT THE TRUE DIFF PROPORTS=0 IS 0.2%.

# * CONCLUDE
# * P-VALUE < 0.05 ===> REJECT H_0




# * PROBLEM 2
z      <- 1.64
m      <- 0.08/2
p_star <- 0.5

n <- (z/m)^2 * p_star * (1-p_star)
ceiling(n)
