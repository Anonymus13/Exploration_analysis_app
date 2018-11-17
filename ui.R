library(shiny)
library(ggplot2)
shinyUI(fluidPage(
  titlePanel("Exploration analysis tool (swiss dataset)"),
  
  sidebarLayout(
    sidebarPanel(
      h2("Variable selection"),
      
      selectInput("var1", "Response",
                  colnames(swiss)),
      selectInput("var2", "Predictor",
                  colnames(swiss)),
      
      checkboxInput("smooth", "Add fitted line", value = FALSE, width = NULL),
      selectInput("method", "Method",
                  c("auto", "lm", "glm", "gam","loess"), selected="auto"),
      # checkboxGroupInput("extra_var","Other variables:",choices = c("color","size")),
      
      checkboxInput("color", "add Color"),
      selectInput("var3", "Color variable",
                  colnames(swiss)),
      
      # conditionalPanel("input.extra_var == 'color'", selectInput("var3", "Color variable",
      #                                    colnames(swiss))),
      checkboxInput("size", "add Size"),
      selectInput("var4", "Size variable",
                  colnames(swiss))
        # conditionalPanel("input.extra_var == 'size'", selectInput("var4", "Size variable",
        #                                                   colnames(swiss))),
      ),
    mainPanel(
      h3(textOutput("ttl")),
      plotOutput("plt"),
      verbatimTextOutput("Cor")
    )
  )
  )
)