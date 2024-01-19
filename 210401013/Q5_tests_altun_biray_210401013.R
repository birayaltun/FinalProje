# test-merge.R dosyas??
library(testthat)
library(dplyr)

# Veri setlerini birle??tirmek i??in kulland??????n??z kod
selected_data2 <- myDF2 %>%
  select(Area,`2017`)%>%
  rename(state=Area)

merged_data <- merge(x=selected_data,y=selected_data2,by="state",all.x = TRUE)

# Test durumunu tan??mlama
test_that("Veri setleri do??ru birle??tirildi mi?", {
  # Test ifadeleri
  expect_equal(nrow(merged_data), nrow(selected_data)) # Birle??tirilmi?? veri setinin sat??r say??s??, se??ilen veri setinin sat??r say??s??na e??it mi?
  expect_equal(ncol(merged_data), ncol(selected_data) + 1) # Birle??tirilmi?? veri setinin s??tun say??s??, se??ilen veri setinin s??tun say??s??ndan bir fazla m???
  expect_equal(merged_data$state, selected_data$state) # Birle??tirilmi?? veri setinin state s??tunu, se??ilen veri setinin state s??tunuyla ayn?? m???
})
