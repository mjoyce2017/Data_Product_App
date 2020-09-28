library(shiny)

shinyServer(function(input, output) {
    model <- lm(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris)
    
    modelpred <- reactive({
        SWInput <- input$sepal.width
        SLInput <- input$sepal.length
        PWInput <- input$petal.width
        PLInput <- input$petal.length
        predict(model, newdata = data.frame(Sepal.Length = SLInput, Sepal.Width = SWInput, Petal.Length = PLInput, Petal.Width = PWInput))
        })
output$prediction <- renderText({
    modelpred()
})
    })
