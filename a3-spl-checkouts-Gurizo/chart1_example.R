ebook_data <- library_data %>% filter(MaterialType == "EBOOK")
book_data <- library_data %>% filter(MaterialType == "BOOK")

ebook_checkouts <- ebook_data %>%
  group_by(CheckoutYear) %>%
  summarize(total_checkouts = sum(Checkouts))

book_checkouts <- book_data %>%
  group_by(CheckoutYear) %>%
  summarize(total_checkouts = sum(Checkouts))

combined_data <- bind_rows(ebook_checkouts %>% mutate(MaterialType = "EBOOK"),
                           book_checkouts %>% mutate(MaterialType = "BOOK"))

ggplot(combined_data, aes(x = CheckoutYear, y = total_checkouts, color = MaterialType)) +
  geom_line() +
  labs(x = "Year", y = "Total checkouts", title = "Checkout Trends: EBOOK vs. BOOK") +
  theme_bw()