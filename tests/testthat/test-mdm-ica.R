context("mdm_ica")

# setup
num_obs <- 10
num_comp <- 2
X <- matrix(rnorm(num_obs * num_comp), num_obs, num_comp)

test_that("asym vs. sym", {
  set.seed(1)
  m1 <- MDMICA::mdm_ica(X, type = "asym", algo = "par")
  set.seed(1)
  m2 <- MDMICA::mdm_ica(X, type = "sym", algo = "par")

  expect_equal(m1$theta, m2$theta)
  expect_equal(m1$W, m2$W)
  expect_equal(m1$obj, m2$obj / 2)
  expect_equal(m1$S, m2$S)
})







