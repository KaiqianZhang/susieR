context("test_get_ER2.R")

test_that("get_ER2 agrees with version 0.3", with(simulate(sparse = TRUE), {
  original.res = readRDS('ER2_original_res.rds')
  
  
  scaledX = set_X_attributes(X)
  scaledX.sparse = set_X_attributes(X.sparse)
  
  dense.res = get_ER2(scaledX, y, s)
  sparse.res = get_ER2(scaledX.sparse, y, s)
  
  expect_equal(dense.res, original.res)
  expect_equal(sparse.res, original.res)
}))
