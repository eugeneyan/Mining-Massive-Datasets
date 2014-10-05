### Question 1

# probablity of following the link
b <- 0.7

# number of nodes 
n = 3

# matrix of vectors 
M <- matrix(c(0, 0.5, 0.5, 0, 0, 1, 0, 0, 1), nrow = 3)

# rank vector (i.e., initialize page rank) 
r <- matrix(c(1/3, 1/3, 1/3), ncol = 1)

# jumping to a random page/teleportation (i.e., 1 - B)
t <- matrix(nrow = n, ncol = 1, rep(1/n,n))

# PageRank: Power Iteration (i.e., iterate until r does not change)
r <- b * M %*% r + (1-b)*t
r

(r[1] + r[2]) * 3
(r[1] + r[2]) * 3
(r[2] + r[3]) * 3
(r[1] + r[3]) * 3

### Question 2

# initialize beta
b = 0.85

# number of nodes 
n = 3

# matrix of vectors 
M <- matrix(c(0, 0.5, 0.5, 0, 0, 1, 1, 0, 0), nrow = 3)

# rank vector (i.e., initialize page rank) 
r <- matrix(c(1/3, 1/3, 1/3), ncol = 1)

# jumping to a random page/teleportation (i.e., 1 - B)
t <- matrix(rep(1/3, 9), nrow = 3)
# t <- matrix(nrow = n, ncol = 1, rep(1/n,n)) # used with commented out r below; does not converge to answer

# PageRank: Power Iteration (i.e., iterate until r does not change)
r <- b * M + (1-b)*t
# r <- b * M %*% r + (1-b)*t # does not converge to answer
r

### Question 3
# matrix of vectors 
M <- matrix(c(0, 0.5, 0.5, 0, 0, 1, 1, 0, 0), nrow = 3)

# rank vector (i.e., initialize page rank) 
r <- matrix(c(1, 1, 1), ncol = 1)

r <- M %*% r
r
