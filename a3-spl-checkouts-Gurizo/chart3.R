library(dplyr)
library(ggplot2)

book_data <- library_data %>%
  filter(MaterialType == "BOOK")

book_checkouts <- book_data %>%
  group_by(Title) %>%
  summarise(total_checkouts = sum(Checkouts)) %>%
  arrange(desc(total_checkouts)) %>%
  slice(1:5)

ggplot(book_checkouts, aes(x = Title, y = total_checkouts, fill = Title)) +
  geom_col() +
  labs(title = "Top 5 Books with the Most Checkouts",
       x = "Book Title", y = "Total Checkouts",
       fill = "Book Title") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

