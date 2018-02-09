context("mdm_ica")

# random pairwise univariate
num_obs <- 10
num_comp <- 2
X <- matrix(rnorm(num_obs * num_comp), num_obs, num_comp)

test_that("asym vs. sym", {
  set.seed(1)
  m1 <- MDMICA::mdm_ica(X, mdm_type = "asym", opt_algo = "par")
  set.seed(1)
  m2 <- MDMICA::mdm_ica(X, mdm_type = "sym", opt_algo = "par")

  expect_equal(m1$theta.hat, m2$theta.hat)
  expect_equal(m1$W.hat, m2$W.hat)
  expect_equal(m1$obj, m2$obj / 2)
  expect_equal(m1$S, m2$S)
})







