library(dplyr)
library(stringr)
library_data <- read.csv("/Users/taehwancho/Info201code/a3-spl-checkouts-Gurizo/2017-2023-10-Checkouts-SPL-Data.csv")

# Average checkouts for each of the books
avg_checkouts <- library_data %>%
  group_by(library_data$Title) %>%
  summarise(avg_checkouts = mean(Checkouts))
avg_checkouts

# Maximum checkouts for the book "Among Others"
book_title <- "Among Others"
most_checkouts <- library_data %>%
  filter(str_detect(Title, fixed(book_title))) %>%
  group_by(CheckoutMonth) %>%
  summarise(total_checkouts = sum(Checkouts)) %>%
  filter(total_checkouts == max(total_checkouts))
most_checkouts

# Total checkouts of the books based on the months in decreasing order.
book_checkouts <- library_data %>%
  filter(Title == book_title) %>%
  group_by(CheckoutMonth) %>%
  summarize(total_checkouts = sum(Checkouts)) %>%
  arrange(desc(total_checkouts)) %>%
  ungroup()
book_checkouts

# Minimum checkouts for the book "Among Others"
least_checkouts <- library_data %>%
  filter(str_detect(Title, fixed(book_title))) %>%
  group_by(CheckoutMonth) %>%
  summarise(total_checkouts = sum(Checkouts)) %>%
  filter(total_checkouts == min(total_checkouts))
least_checkouts

# Checkout data for only Ebooks
ebook_data <- library_data %>% filter(str_detect(Title, fixed(book_title))) %>% filter(MaterialType == "EBOOK")
ebook_checkouts <- ebook_data %>%
  group_by(CheckoutYear, CheckoutMonth) %>%
  summarize(total_checkouts = sum(Checkouts))
ebook_data

# Maximum checkouts for the Ebooks
most_checkouts <- ebook_checkouts %>%
  filter(total_checkouts == max(total_checkouts)) %>%
  select(CheckoutYear, CheckoutMonth, total_checkouts)
most_checkouts

# Printing the total checkouts of the book in years
print_data <- library_data %>% filter(MaterialType == "BOOK")
print_checkouts <- print_data %>%
  group_by(CheckoutYear) %>%
  summarize(total_checkouts = sum(Checkouts))
print_checkouts



