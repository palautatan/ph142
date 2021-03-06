Midterm 2 Review
========================================================
author: PH142
date: October 2018
autosize: true

Note to Students
========================================================
Please also consult lecture notes and your text. Many of you have been asking for sample problems. For understanding the material, textbook review exercises are great.  

Use Piazza for all your statistical questions!  

Good luck studying to all!

Midterm Information
========================================================
**Room Info:**  
- Those with extra time accommodation should have received an email from Dr. Hubbard. You will determine your room via email exchange with Alan.  
- For everyone else: Those with last names at/before "Moh" will write in Li Ka Shing in our regular room (n=153). Those with last names at/**after** "Mok" will write in Barker 101 (n=110). 

**Please bring:**   
1. Your ID  
2. Calculator   
3. Cheat sheet  
4. Watch  

Material
========================================================
**Chapter 6, 7:** Make your sample representative of your population!  
**Chapter 9, 10:** Know when to apply your probability rules!  
**Chapter 11:** Continuous Distribution, Normal  
**Chapter 12:** Discrete Distributions, Binomial and Poisson  
**Chapter 13:** Sampling Distribution, the distribution of your sample statistics  


Chapter 6
========================================================
Chapter 6 has to do with the main idea of how to get the best estimates of your population with a sample. What you need to take from both chapters most is what constitutes to a good statistical setup to get estimates you care about. Understanding where the following terms play in a study are key.   

Inference
========================================================
The process of drawing conclusions about a population based on a sample

Population vs. Sample
========================================================
The process of drawing conclusions about a population based on a sample
- **Population**: The entire group of individuals about which we want information.
- **Sample**: The part of the population for which we actually collect information. We use a sample to draw conclusions about the entire population.
- **External validity/representativeness**: Does the sample represent the population? 
Comes from your sampling design.

Observational vs. Experimental
========================================================
- **Observational**: observes individuals and measures variables of interest but does not attempt to influence the responses
- **Experimental**: deliberately imposes some treatment on individuals in order to observe their responses

Study Design
========================================================
1. **Who** belongs to the target population?
2. **How** you will take a sample of the target population?
3. What **variables** you will measure? What are the levels of each variable? How will you measure these variables?


Study Design
========================================================
##### Bias
When the expected value based on a sample differs from the true underlying parameter value.

##### Confounding variables
The association between an exposure and an outcome is **confounded** if there exist
one or more variables that are causes of the outcome that are also associated 
with the exposure of interest

**Take Home Questions:**
- What does it mean for a statistic to be unbiased?  
- Can a parameter be unbiased?  
- What does unbiased-ness have to do with the sampling distribution? (See Chapter 13 slides.)  


Chapter 7
========================================================
#### Factor
An explanatory variable that is **being manipulated**. There can be more than 1 factor.


#### Treatment
A specific **experimental condition**. When there is more than 1 factor, then the treatment is a combination of specific values of each factor.


#### Placebo effect
A response to a fake treatment because a person expects the treatment to be helpful  


Randomized comparative experiments
========================================================
- An experiment that uses both **comparison** of two or more treatments and **chance assignment** of subjects to treatments  
- **Experimental Group** (aka treated, exposed): those individuals receiving treatment  
- **Control** (aka untreated/unexposed group): those individuals not receiving treatment  
- **Placebo**: a control treatment that is fake, and meant to be indistiguishable from the treatment  
- _**Randomization!!!!**_ Individuals are assigned to treatment vs. control by chance

Experimental Design for Randomized Comparative Experiments
========================================================
1. Always have at least one **comparison group**  
2. **Randomization** to treatment  
3. Have a large enough **sample size** to reduce chance variation in the results  
4. **Blinding** (can be used on both the individual receiving the treatment and the person conducting the experiment)  

Probability
========================================================
Chapter 9 and 10 are dense with formulas. Since you will most likely be putting these on your cheat sheet, your task is to be able to **read word problems** and **apply the appropriate rules** based on what the question is asking.

Look for patterns in language. Some words to look for are "given", "and", "or", "both", "neither". *Can you name more? Read some of your homework problems and see which words relate to which probability.*

Chapter 9
========================================================
Random samples eliminate bias from the act of choosing a sample, **but they can still be wrong** 

This is because of the variability that results when we choose at random.  

If the variation when we take repeat samples from the same population is too great (really big), we can't trust the results of any one sample.

Probablity
========================================================
- The **probability** of any outcome of a random phenomenon is the proportion of times the outcome would occur in a very long series of repetitions. 
- We call a phenomenon **random** if individual outcomes are uncertain but there is nonetheless a regular distribution of outcomes in a large number of repetitions.

Sample Space
========================================================
- A **sample space** $S$ of a random phenomenon is a set of all possible outcomes.
- An **event** on sample space $S$ is an outcome (or a set of outcomes) of a random phenomenon. That is, an event is a subset of the sample space.

Probability Model
========================================================
A **probability model** is a math description of a random phenomenon consisting of two parts: a sample space $S$ and a way of assigning probabilities to events. 

*Remember doing this in your homework?*

Probability Rules
========================================================
**Rule 1.** The probability P(A) of any event satisfies $0\leq P(A)\leq 1$.  
**Rule 2.** If S is the sample space in a probability model, then P (S) = 1.  
**Rule 3.** Two events A and B are disjoint (mutually exclusive) if they have no outcomes in common and so can never occur together.   

If A and B are disjoint, $P(A U B) = P(A) + P(B)$. This is the addition rule for disjoint events.  

**Rule 4.** The Complement Rule. For any event A,

$P(A^C) = 1 - P (A)$

where $P(A^C)$ is the probability that A does not occur.


Probability Rules
========================================================
**Take Home Question:** Where does Rule 4 appear when we're using distributions?

**Rule 4**. The Complement Rule. For any event A,

$P(A^C) = 1 - P (A)$

where $P(A^C)$ is the probability that A does not occur.

Notation
========================================================
- The **mean** of a density curve is $\mu$ 
- The **standard deviation** of a density curve as $\sigma$
- The **sample mean** is denoted as $\bar{x}$ 

Discrete models
========================================================
A probability model with a sample space made up of a list of individual outcomes is called **discrete**.

**Example**  
e.g., Birth type: S = {vaginal, cesarean}  
e.g., Daily soda consumption: S = {0, 1, 2, 3, 4+}  

**Relate this back to what you know about discrete data.**

Continuous models
========================================================
The sample space is now an entire interval of numbers:  
S = {all numbers between 0 and 1}

**Example**  
e.g., Annual income: S = {0 to $\infty$}    

**Relate this back to what you know about continuous data.**

Density Curve
========================================================
- A **density curve** describes/model the overall pattern of a distribution. (No real data perfectly match a density curve!)
- It has area exactly 1 underneath it.
- Only intervals of values have positive (non-zero) probabilities.

**Question:** Does the normal distribution have a density curve? Does the binomial?


Sampling with Code
========================================================
The `sample_n` function can be used in this way. The `iris` dataset is built into `R`!


```r
library(dplyr)
sample_2    <- sample_n(iris, size = 2)
sample_2
```

```
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
92           6.1           3          4.6         1.4 versicolor
113          6.8           3          5.5         2.1  virginica
```


Sampling with Code
========================================================
The `sample_n` function can be used in this way. The `iris` dataset is built into `R`!

```r
sample_6  <- sample_n(iris, size = 6)
sample_6
```

```
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
87           6.7         3.1          4.7         1.5 versicolor
118          7.7         3.8          6.7         2.2  virginica
51           7.0         3.2          4.7         1.4 versicolor
89           5.6         3.0          4.1         1.3 versicolor
140          6.9         3.1          5.4         2.1  virginica
84           6.0         2.7          5.1         1.6 versicolor
```


Chapter 10
========================================================
Now, we're *sliding* into Chapter 10 material.

See Sarah's slides on bCourses for Venn Diagram help. Visualizing with Venn Diagrams will change your life for Chapter 10 material.

Dependence and Independence
========================================================
Two events are independent if knowing that one event occurred does not change the probability that the other occurred 

Multiplication Rule for Independent Events
========================================================
Two events A and B are independent if knowing that one occurs does not change the probability that the other occurs. If A and B are independent, 

$P(A \cap B) = P(A)\times P(B)$

Conversely, if this condition is not satisfied, then events A and B are dependent.

Conditional Probability
========================================================
When P(A) > 0, the conditional probability of B, given A, is 

$P(B|A)=\frac{P(A\&B)}{P(A)}$


General addition rule for any two events
========================================================
For any two events A and B, $P(A \cup B) = P(A) + P(B) - P(A \cap B)$. 

The probability that both of two events A and B happen together can be found by:

This formula simplifies to $P(A \cup B) = P(A) + P(B)$ when A and B are **disjoint**.

Example
========================================================
**Hearing impairment in dalmatians**
Congenital sensorineural deafness is the most common form of deafness in dogs and is often associated with congenital pigmentation deficiencies.

A study of hearing impairment in dogs examined over five thousand dalmatians for both hearing impairment and iris color. Being Impaired was defined as deafness in either one or both ears. Dogs with one or both irises blue (a trait due to low iris pigmentation) were labeled blue.

The study found that 28% of the dalmatians were hearing impaired, 11% were blue eyed, and 5% were hearing impaired and blue eyed. 

Example
========================================================
**Hearing impairment in dalmatians**
Congenital sensorineural deafness is the most common form of deafness in dogs and is often associated with congenital pigmentation deficiencies.

A study of hearing impairment in dogs examined over **5000** dalmatians for both hearing impairment and iris color. Being Impaired was defined as deafness in either one or both ears. Dogs with one or both irises blue (a trait due to low iris pigmentation) were labeled blue.

The study found that **28%** of the dalmatians were hearing impaired, **11%** were blue eyed, and **5%** were hearing impaired and blue eyed. 

Example
========================================================
**Question** Write up information from the prompt in probability notation.

**Solution**  
$P(I) = 0.28$  
$P(B) = 0.11$  
$P(B \cap I) = 0.05$  

Example
========================================================
**Question** What is the probability of dalmatians being either blue eyed or hearing impaired?

**Solution**  
$P(B \cup I) = P(B) + P(I) - P(B\cap I) = 0.11 + 0.28 - 0.05 = 0.34$  

Example
========================================================
**Additional Questions for Home:**
- What is the probability of a dalmatian being neither hearing impaired nor blue eyed?  
- Are $B$ and $I$ independent? Or dependent?  

*If this was difficult to answer, please refer to Sarah's Venn Diagram notes on bCourses.*

General multiplication rule
========================================================
$P(A \cap B) = P(A)P(B|A)$. This is simply a rearrangement of the 
conditional probability formula.

This simplifies to $P(A \cap B) = P(A) \times P(B)$ when A and B are independent events.

Bayes' Theorem
========================================================
$P(A|B)=P(A)$ if independent. But if they aren't...

$$P(A|B) =\frac{P(B|A)P(A)}{P(B|A)P(A) + P(B|A^c)P(A^c)}$$

$$P(A|B) =\frac{P(A|B)P(B)}{P(B|A)P(A) + P(B|A^c)P(A^c)}$$

$$P(A|B) =\frac{P(A \cap B)}{P(B|A)P(A) + P(B|A^c)P(A^c)}$$

Distributions
========================================================
A common question has been <i><b>WHEN DO WE USE THESE DISTRIBUTIONS!?</i></b> Well, sometimes our data tell a story that we see over and over again.

We can think of distributions as things that model patterns in data. If we see data that looks approximately normal or follows a recipe for the Binomial or Poisson(*), then we should definitely consider using the appropriate distribution. When we use a distribution like one of the named three above, we can end up saying a lot about our data. We can say the mean, the variance/standard deviation, and calculate probabilities.

(*) See the following Chapter 11 and 12 notes for these recipes.

Chapter 11: Normal Distribution
========================================================
![plot of chunk unnamed-chunk-3](images/normal.png)

Recipe for Normal
========================================================
1. Goals: We want to find a probability for greater or less than or greater/equal, less/equal, but NEVER exactly equal to a single number
2. The data are said to be normal or are assumed to be normal in the prompt

Question
========================================================
What is the difference between normal and standard normal?

Example
========================================================
According to <a href="https://www.basketball-reference.com/leagues/NBA_stats.html">basketball-reference.net</a>, the mean height for NBA players is 6'7" = 79 inches. Suppose it is known that player height is normally distributed with a standard deviation of 4 inches. What is the probability of a ball player to be shorter than 6 feet?

Example
========================================================
The prompt information translates to:

```r
mu  <- 79
sd  <- 4
k   <- 6*12
```

We can calculate this probability one way (without tables!).

```r
pnorm(q=k, mean=mu, sd=sd)
```

```
[1] 0.04005916
```

All the `[ ]norm` functions are fair game!

Chapter 12: Binomial and Poisson Distributions
========================================================
Refer to your homework assignments for practice problems!

Binomial
========================================================
This is the formula for the Binomial distribution.

$$
P(X=k) = \Sigma_{k=0}^{n} \binom{n}{k}(p)^{k}(1-p)^{n-k}
$$

Since you'll probably have this formula on your cheat sheet, what's more important is understanding what each of the pieces of the binomial distribution function.

As we said earlier, distributions are used to calculate means, variances, and probabilities of situations we see often! Think back to the Korean drama or pop song. They have well-known structures. So does the Binomial setting. Check if your data fit the Binomial setting.

Binomial
========================================================
<u>Recipe for Binomial</u>  
1. Goals: We want to find a probability, these are all fine: less than/equal/greater than/combo  
2. You have some fixed amount of trials  
3. Trials are independent  
4. The probability of success is the same for each trial  
5. **There are more assumptions, look for these at home.**  

Question
========================================================
When can we approximate the binomial as a normal distribution? Why?

Example
========================================================
A shopper goes online Thursday mornings to attempt to purchase Supreme apparel and accessories. Due to the brand's popularity and limited supply, the shopper successfully purchases any item 1 in 10 times. What is the probability that the shopper will make 4 successful purchases after 10 independent purchase attempts? How about greater than 4?

Example
========================================================
The prompt information translates to:

```r
n_trials    <- 10
k_success   <- 4
probability <- 1/10
```

And we can calculate the first quantity "by hand" using the formula:

```r
choose(n_trials, k_success)*(probability)^k_success*(1-probability)^(n_trials-k_success)
```

```
[1] 0.01116026
```

Example
========================================================
The prompt information translates to:

```r
n_trials    <- 10
k_success   <- 4
probability <- 1/10
```


Or we can use a special function:

```r
dbinom(x=k_success, size=n_trials, prob=probability)
```

```
[1] 0.01116026
```

Example
========================================================
The second quantity (the probability of greater than 4) can be found by using the Complement Rule.

```r
1 - choose(n_trials, 4)*(probability)^(4)*(1-probability)^(n_trials-4) - choose(n_trials, 3)*(probability)^(3)*(1-probability)^(n_trials-3) - choose(n_trials, 2)*(probability)^(2)*(1-probability)^(n_trials-2) - choose(n_trials, 1)*(probability)^(1)*(1-probability)^(n_trials-1) - choose(n_trials, 0)*(probability)^(0)*(1-probability)^(n_trials-0)
```

```
[1] 0.001634937
```

Example
========================================================
Or using another cool function that calculate the sum of probabilities from 0 to k.


```r
1-pbinom(q=k_success, size=n_trials, prob=probability)
```

```
[1] 0.001634937
```

Or even more conveniently:

```r
pbinom(q=k_success, size=n_trials, prob=probability, lower.tail=FALSE)
```

```
[1] 0.001634937
```

All the `[ ]binom` functions are fair game!

Poisson
========================================================
This is the formula for the Poisson distribution.

$$
P(X=k) = e^{-\lambda}\frac{\lambda^k}{k!}
$$

<u>Recipe for Poisson</u>  
1. Goals: We want to find a probability, these are all fine: greater/less/equal/combo  
2. Events occur independently.
3. The rate at which events occur is constant. The rate cannot be higher in some intervals and lower in other intervals.  
3. **There are more assumptions, look for these at home.**  

Example
========================================================
San Francisco is known for its fog. In fact, the fog's name is Karl! We expect a warm, sunny, Karl-free day in San Francisco about twice per month.

**Do this at home:** What is the probability that we see more than 5 days of sun in San Francisco in a month? How about exactly 10?

Sampling Distributions
========================================================
A sampling distribution is the distribution of estimates that we have for our parameter. In our case, we either make distributions of estimates for $\mu$ or population proportion $p$.

### Chapter 13

Here's a motivating figure from the text. After you're done looking over this section, reflect on this figure and see if you can understand it all.

![plot of chunk unnamed-chunk-13](images/samp_dist_p.png)

Law of Large Numbers
========================================================
As $n$ gets huge, our sampling distribution's mean will get closer and closer to the true population paramter value.

Law of Large Numbers
========================================================
##### Example
Let's take a look at some NBA data that was scraped off of basketball-reference.com. We'll read in the csv.


```r
western_conference <- read.csv("western_nba.csv")[,-1]
head(western_conference, 3)
```

```
             Player millions                  team
1     Stephen Curry 37.45715 Golden State Warriors
2 Russell Westbrook 35.65415 Oklahoma City Thunder
3        Chris Paul 35.65415       Houston Rockets
```

```r
mean(western_conference$millions)
```

```
[1] 6.500936
```

Law of Large Numbers
========================================================
In the following blocks, we're going to take 100 samples of size $n=2, 5, 30$. Ignore the code that you have you never learned for midterm 1. Focus on the output.



Law of Large Numbers
========================================================
###### Sampling with n=2

```r
sample_means_2 <- do.call(rbind, lapply(1:100, function(x) sample_n_salaries(2)))
sample_means_2 %>% summarize(sampling_mean=mean(mean_salary))
```

```
  sampling_mean
1      6.680716
```

Law of Large Numbers
========================================================
###### Sampling with n=5

```r
sample_means_5 <- do.call(rbind, lapply(1:100, function(x) sample_n_salaries(5)))
sample_means_5 %>% summarize(sampling_mean=mean(mean_salary))
```

```
  sampling_mean
1      6.512029
```

Law of Large Numbers
========================================================
###### Sampling with n=30

```r
sample_means_30 <- do.call(rbind, lapply(1:100, function(x) sample_n_salaries(30)))
sample_means_30 %>% summarize(sampling_mean=mean(mean_salary))
```

```
  sampling_mean
1      6.517297
```

Central Limit Theorem
========================================================
As $n$ gets huge, our sampling distribution itself will look more and more like a normal distribution.

Central Limit Theorem
========================================================
##### Example
Recall the data from earlier.


```r
head(western_conference, 5)
```

```
             Player millions                  team
1     Stephen Curry 37.45715 Golden State Warriors
2 Russell Westbrook 35.65415 Oklahoma City Thunder
3        Chris Paul 35.65415       Houston Rockets
4      LeBron James 35.65415    Los Angeles Lakers
5       Paul George 30.56070 Oklahoma City Thunder
```

Central Limit Theorem
========================================================
###### Exploring the Population ("The Underlying Distribution")
This is the distribution of the population salaries.

![plot of chunk unnamed-chunk-20](review_slides.Rmd-figure/unnamed-chunk-20-1.png)

Central Limit Theorem
========================================================
###### Exploring the Population ("The Underlying Distribution")
What is the mean parameter $\mu$ of the population? We can calculate this by hand or by a function. Focus on the by hand calculation. 

Here's the "by hand" calculation. The following functions may seem new to you, but think intuitively instead of code-wise. We have a data on all of the salaries, then we add all the salaries up, then divide by the number of salaries we have to get the average.


```r
vector_of_salaries <- western_conference$millions
sum(vector_of_salaries) / length(vector_of_salaries)
```

```
[1] 6.500936
```

Central Limit Theorem
========================================================
###### Exploring the Population ("The Underlying Distribution")
What is the mean parameter $\mu$ of the population? We can calculate this by hand or by a function. Focus on the by hand calculation. 

Here's the `dplyr` solution.


```r
library(dplyr)
western_conference %>% summarize(mu=mean(vector_of_salaries))
```

```
        mu
1 6.500936
```

Let's see what our sample distribution looks like for several choices of $n$.

Central Limit Theorem
========================================================
###### Sampling with n=2

```r
ggplot(sample_means_2, aes(x=mean_salary)) + 
  geom_histogram(binwidth=0.7) +
  scale_x_continuous(limits = c(0, 40))
```

![plot of chunk unnamed-chunk-23](review_slides.Rmd-figure/unnamed-chunk-23-1.png)

Central Limit Theorem
========================================================
###### Sampling with n=5

```r
ggplot(sample_means_5, aes(x=mean_salary)) + 
  geom_histogram(binwidth=0.5) +
  scale_x_continuous(limits = c(0, 40))
```

![plot of chunk unnamed-chunk-24](review_slides.Rmd-figure/unnamed-chunk-24-1.png)

Central Limit Theorem
========================================================
###### Sampling with n=30
Visually, the sample size of $n=30$ is the most symmetric.


```r
ggplot(sample_means_30, aes(x=mean_salary)) + 
  geom_histogram(binwidth=0.5) +
  scale_x_continuous(limits = c(0, 40))
```

![plot of chunk unnamed-chunk-25](review_slides.Rmd-figure/unnamed-chunk-25-1.png)

As $n$ gets larger, then we see the sampling distribution get less skewed and more like the normal curve.

Sampling Distribution Means and Variances
========================================================
Sampling distributions have means and variances that can be calculated as specified below!


```
            mean   variance
counts        mu  sigma^2/n
proportions    p (p(1-p))/n
```

**Question:** What is the relationship between variance and standard deviation?

**Question for Home:** What assumptions go along with sampling distributions and their normalities? Check the chapter.

Some More Questions
========================================================
- What assumptions do we need to assume normality for the proportions row?  
- What is a parameter? What is a statistic?  
- If P(B)=3% and P(A)=4% and are independent of one another, what is $P(A \cap B)$? Hint: can you multiply two percentages?
- If you're asked for the P(+), does this include both true and false positives?

Mo Probability, Mo Problems
========================================================
- MIT Resource
  -https://ocw.mit.edu/courses/mathematics/18-05-introduction-to-probability-and-statistics-spring-2014/exams/MIT18_05S14_Prac_Exam1a.pdf
  - #3, 4
  
- UCD Resource
  - http://www.stat.ucdavis.edu/~ntyang/teaching/12SSII/sol_mid1.pdf
  - # 12, 18, 15


More for Home...
========================================================
**Extra Example 1** We expect there to be only 2 BART delays per week because BART is so efficient and amazing and uses its few-rail system wisely. What's the probability of there being 2 delays in a day?


```r
?dpois
?ppois
```

More for Home...
========================================================
**Extra Example 2** *Carl Gauss in the house!* Check out his signature.

![plot of chunk unnamed-chunk-28](images/gauss.png)


More for Home...
========================================================
**Extra Example 2** *Carl Gauss in the house!* Carl Gauss was a very smart man. He made discoveries on the weekly. Assume that the number of discoveries he made per week can be modeled by the Gaussian distribution $N(\mu=5,\sigma=7)$.  

- Interpret $\mu$.  
- Interpret $\sigma$.
- Does the $N(5,7)$ perfectly model Carl Gauss's discoveries per week?

More for Home...
========================================================
**Extra Example 3** Check out the NBA data!


```
                   Team Freq
1 Golden State Warriors   20
2  Los Angeles Clippers   20
3    Los Angeles Lakers   16
4      Sacramento Kings   21
```

Pool all the California NBA players together. If we take a random sample of size 12 of these huge humans, what is the probability that we choose exactly 5 of them from the Warriors?

More...
========================================================
**True or False?**  The normal distribution is a discrete distribution.

**True or False?**  The mean of a Poisson distribution is the variance of the Poisson distribution.

**True or False?**  Sample proportion $\hat p$ is an unbiased estimator for population parameter $p$.

**True or False?**  A binomial distribution can have three outcomes.
