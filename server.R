shinyServer(function(input, output) {

output$plt <- renderPlot({
  g <- ggplot(swiss, aes_string(x = input$var2,
                           y = input$var1)) + geom_point()
  if(input$color){g<- g + aes_string(colour = input$var3)}
  if(input$size){g<- g + aes_string(size = input$var4)}
  else if(input$smooth){g <- g + geom_smooth(method=input$method)}
  g
  })

output$ttl <- renderText({
  sprintf("%s vs. %s graph", input$var1, input$var2)
  })
  
correl <- reactive({
  cor(swiss[,input$var2],swiss[,input$var1])
})

# output$Cor <- renderPrint({
#   correl()
# })
output$Cor<- renderText({
   sprintf("The correlation between %s and %s is %f", input$var1, input$var2, correl())
 })

  }
)

