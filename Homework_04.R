# 1
x <- 1.1
a <- 2.2
b <- 3.3
# 1.a
z <- x^a^b
print(z)
# 1.b
z <- (x^a)^b
print(z)
# 1.c
z <- (3*x)^3 + (2*x)^2 + 1
print(z)

# 2
# 2.a
c(seq(1:8), seq(from=7, to=1))
# 2.b
rep(x=seq(1:5), times=seq(1:5))
# 2.c
rep(x=seq(1:5), times=seq(from=5, to=1))

# 3
location <- runif(2)
r <- sqrt(location[1]^2 + location [2]^2)
theta <- atan(location[2]/location[1])
print(r)
print(theta)

# 4
queue <- c("sheep", "fox", "owl", "ant")
print(queue)
# 4a
queue <- c(queue,"serpent")
print(queue)
# 4b
queue <- queue[2:length(queue)]
print(queue)
# 4c
queue <- c("donkey",queue)
print(queue)
# 4d
queue <- queue[1:length(queue)-1]
print(queue)
# 4e
queue <- c(queue[1:2],queue[4])
print(queue)
# 4f
queue <- c(queue[1:2],"aphid",queue[3])
print(queue)
# 4g
which(queue=="aphid")

#5
n <- 1:100
n_subset <- which(n%%2!=0 & n%%3!=0 & n%%7!=0)
print(n_subset)