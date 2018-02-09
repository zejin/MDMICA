#
set.seed(12345)
X <- matrix(rnorm(10 * 3), 10, 3)

#
set.seed(12345)
mdm_ica(X, mdm_type = "asym", opt_algo = "def") 

set.seed(12345)
mdm_ica(X, mdm_type = "asym", opt_algo = "par") 

set.seed(12345)
mdm_ica(X, mdm_type = "asym", num_bo = 1, kernel = "exp", opt_algo = "par") 

set.seed(12345)
mdm_ica(X, mdm_type = "asym", num_bo = 1, kernel = "mat", opt_algo = "par") 

#
set.seed(12345)
mdm_ica(X, mdm_type = "sym", opt_algo = "par")

set.seed(12345)
mdm_ica(X, mdm_type = "sym", num_bo = 1, kernel = "exp", opt_algo = "par") 

set.seed(12345)
mdm_ica(X, mdm_type = "sym", num_bo = 1, kernel = "mat", opt_algo = "par") 

#
set.seed(12345)
mdm_ica(X, mdm_type = "comp", opt_algo = "par")

set.seed(12345)
mdm_ica(X, mdm_type = "comp", num_bo = 1, kernel = "exp", opt_algo = "par")

set.seed(12345)
mdm_ica(X, mdm_type = "comp", num_bo = 1, kernel = "mat", opt_algo = "par")

#
set.seed(12345)
mdm_ica(X, mdm_type = "dhsic", opt_algo = "par")

set.seed(12345)
mdm_ica(X, mdm_type = "dhsic", num_bo = 1, kernel = "exp", opt_algo = "par")

set.seed(12345)
mdm_ica(X, mdm_type = "dhsic", num_bo = 1, kernel = "mat", opt_algo = "par")

# cd ica/simulation/comp_4/exp_3/bo/seed_15/jordan_mix_0
# n_iter = 1
# i, j -> j, i
source('../fun_.R')
set.seed(12345)
x <- matrix(rnorm(10 * 3), 10, 3)
x <- scale(x, T, F)
num_comp <- 3
num_init <- 3 * 10
U.hat <- matrix.sqrt.inv.pc(cov(x))
z <- x %*% t(U.hat)

theta_init <- latin.hc(num_comp, num_init)
theta_mat <- theta_init$m
theta_list <- theta_init$l
W_list <- lapply(theta_list, theta2W)
W_list <- lapply(W_list, t)

mat_mul <- function(W, Z) {
  Z %*% W
}
s_list <- lapply(W_list, mat_mul, Z = z)

#
set.seed(12345)
dCovICA2_obj_list <- unlist(lapply(s_list, dCovICA.asy.obj))
dCovICA2_best_init <- theta_list[[which(dCovICA2_obj_list == min(dCovICA2_obj_list))]]
dCovICA2_est <- dCovICA.asy.seq.curr.nlm(z, theta.0 = dCovICA2_best_init)
z %*% t(theta2W(dCovICA2_est[['theta.hat']]))

set.seed(12345)
dCovICA4_obj_list <- unlist(lapply(s_list, dCovICA.asy.obj))
dCovICA4_best_init <- theta_list[[which(dCovICA4_obj_list == min(dCovICA4_obj_list))]]
dCovICA4_est <- dCovICA.asy.joint.nlm(z, theta.0 = dCovICA4_best_init)
z %*% t(theta2W(dCovICA4_est[['theta.hat']]))

set.seed(12345)
dCovICA5_obj_list <- unlist(lapply(s_list, dCovICA.asy.obj))
dCovICA5_best_init <- dCovICA.asy.joint.bayes.exp(z, theta.0 = theta_mat, obj.0 = dCovICA5_obj_list)$theta.hat
dCovICA5_est <- dCovICA.asy.joint.nlm(z, theta.0 = dCovICA5_best_init)
z %*% t(theta2W(dCovICA5_est[['theta.hat']]))

set.seed(12345)
dCovICA6_obj_list <- unlist(lapply(s_list, dCovICA.asy.obj))
dCovICA6_best_init <- dCovICA.asy.joint.bayes.mat(z, theta.0 = theta_mat, obj.0 = dCovICA6_obj_list)$theta.hat
dCovICA6_est <- dCovICA.asy.joint.nlm(z, theta.0 = dCovICA6_best_init)
z %*% t(theta2W(dCovICA6_est[['theta.hat']]))

#
set.seed(12345)
dCovICA8_obj_list <- unlist(lapply(s_list, dCovICA.sym.obj))
dCovICA8_best_init <- theta_list[[which(dCovICA8_obj_list == min(dCovICA8_obj_list))]]
dCovICA8_est <- dCovICA.sym.joint.nlm(z, theta.0 = dCovICA8_best_init)
z %*% t(theta2W(dCovICA8_est[['theta.hat']]))

set.seed(12345)
dCovICA9_obj_list <- unlist(lapply(s_list, dCovICA.sym.obj))
dCovICA9_best_init <- dCovICA.sym.joint.bayes.exp(z, theta.0 = theta_mat, obj.0 = dCovICA9_obj_list)$theta.hat
dCovICA9_est <- dCovICA.sym.joint.nlm(z, theta.0 = dCovICA9_best_init)
z %*% t(theta2W(dCovICA9_est[['theta.hat']]))

set.seed(12345)
dCovICA10_obj_list <- unlist(lapply(s_list, dCovICA.sym.obj))
dCovICA10_best_init <- dCovICA.sym.joint.bayes.mat(z, theta.0 = theta_mat, obj.0 = dCovICA10_obj_list)$theta.hat
dCovICA10_est <- dCovICA.sym.joint.nlm(z, theta.0 = dCovICA10_best_init)
z %*% t(theta2W(dCovICA10_est[['theta.hat']]))

#
set.seed(12345)
dCovICA12_obj_list <- unlist(lapply(s_list, dCovICA.com.obj))
dCovICA12_best_init <- theta_list[[which(dCovICA12_obj_list == min(dCovICA12_obj_list))]]
dCovICA12_est <- dCovICA.com.joint.nlm(z, theta.0 = dCovICA12_best_init)
z %*% t(theta2W(dCovICA12_est[['theta.hat']]))

set.seed(12345)
dCovICA13_obj_list <- unlist(lapply(s_list, dCovICA.com.obj))
dCovICA13_best_init <- dCovICA.com.joint.bayes.exp(z, theta.0 = theta_mat, obj.0 = dCovICA13_obj_list)$theta.hat
dCovICA13_est <- dCovICA.com.joint.nlm(z, theta.0 = dCovICA13_best_init)
z %*% t(theta2W(dCovICA13_est[['theta.hat']]))

set.seed(12345)
dCovICA14_obj_list <- unlist(lapply(s_list, dCovICA.com.obj))
dCovICA14_best_init <- dCovICA.com.joint.bayes.mat(z, theta.0 = theta_mat, obj.0 = dCovICA14_obj_list)$theta.hat
dCovICA14_est <- dCovICA.com.joint.nlm(z, theta.0 = dCovICA14_best_init)
z %*% t(theta2W(dCovICA14_est[['theta.hat']]))

#
set.seed(12345)
dCovICA16_obj_list <- unlist(lapply(s_list, dCovICA.hsic.obj))
dCovICA16_best_init <- theta_list[[which(dCovICA16_obj_list == min(dCovICA16_obj_list))]]
dCovICA16_est <- dCovICA.hsic.joint.nlm(z, theta.0 = dCovICA16_best_init)
z %*% t(theta2W(dCovICA16_est[['theta.hat']]))

set.seed(12345)
dCovICA17_obj_list <- unlist(lapply(s_list, dCovICA.hsic.obj))
dCovICA17_best_init <- dCovICA.hsic.joint.bayes.exp(z, theta.0 = theta_mat, obj.0 = dCovICA17_obj_list)$theta.hat
dCovICA17_est <- dCovICA.hsic.joint.nlm(z, theta.0 = dCovICA17_best_init)
z %*% t(theta2W(dCovICA17_est[['theta.hat']]))

set.seed(12345)
dCovICA18_obj_list <- unlist(lapply(s_list, dCovICA.hsic.obj))
dCovICA18_best_init <- dCovICA.hsic.joint.bayes.mat(z, theta.0 = theta_mat, obj.0 = dCovICA18_obj_list)$theta.hat
dCovICA18_est <- dCovICA.hsic.joint.nlm(z, theta.0 = dCovICA18_best_init)
z %*% t(theta2W(dCovICA18_est[['theta.hat']]))



