library(ggplot2)

book1_data <- library_data %>%
  filter(str_detect(Title, "The Trespasser: Dublin Murder Squad Series, Book 6") & MaterialType == "EBOOK")
book2_data <- library_data %>%
  filter(str_detect(Title, "The Girl with the Lower Back Tattoo") & MaterialType == "EBOOK")

book1_checkouts <- book1_data %>%
  group_by(CheckoutYear) %>%
  summarise(total_checkouts = sum(Checkouts), Title = "The Trespasser")

book2_checkouts <- book2_data %>%
  group_by(CheckoutYear) %>%
  summarise(total_checkouts = sum(Checkouts), Title = "The Girl with the Lower Back Tattoo")

combined_data <- rbind(book1_checkouts, book2_checkouts)

ggplot() +
  geom_line(data = book1_checkouts, aes(x = CheckoutYear, y = total_checkouts, color = Title)) +
  geom_line(data = book2_checkouts, aes(x = CheckoutYear, y = total_checkouts, color = Title)) +
  labs(title = "EBOOK Checkouts Over Time for Two Different Books",
       x = "Checkout Year", y = "Total Checkouts",
       color = "Book Title") +
  scale_color_manual(values = c("#E69F00", "#56B4E9"))
