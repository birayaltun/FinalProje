# test_my_code.R


library(testthat)





test_that("Dosya indirme ve Veri Y??kleme Testi", {
  # Dosyalar??n var olup olmad??????n?? kontrol et
  expect_true(file.exists("state_pop_by_age_gender.csv"), "state_pop_by_age_gender.csv dosyas?? bulunamad??.")
  expect_true(file.exists("bea-gdp-by-state.csv"), "bea-gdp-by-state.csv dosyas?? bulunamad??.")


  expect_true(exists("myDF"), "state_pop_by_age_gender.csv dosyas??ndan veri ??er??evesi olu??turulamad??.")
  expect_true(exists("myDF2"), "bea-gdp-by-state.csv dosyas??ndan veri ??er??evesi olu??turulamad??.")
})
library(testthat)

test_that("gdp_data has correct 2017 column", {
  expect_type(myDF2$`2017`, "double")
  expect_length(myDF2$`2017`, 60)
})





