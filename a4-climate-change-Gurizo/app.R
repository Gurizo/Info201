library(rsconnect)
source("/Users/taehwancho/Info201code/a4-climate-change-Gurizo/ui.R")
source("/Users/taehwancho/Info201code/a4-climate-change-Gurizo/server.R")

shinyApp(ui = ui, server = server)