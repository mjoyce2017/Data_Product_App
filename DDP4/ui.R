library(shiny)

shinyUI(fluidPage(

    titlePanel("Iris Species Predictor"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("sepal.length",
                        "Sepal Length in centimeters",
                        min = 3.75,
                        max = 8.25,
                        value = 6),
            sliderInput("sepal.width",
                        "Sepal Width in centimeters",
                        min = 2,
                        max = 4.5,
                        value = 3.25),
            sliderInput("petal.length",
                        "Petal Length in centimeters",
                        min = 0.75,
                        max = 7.25,
                        value = 4),
            sliderInput("petal.width",
                        "Petal Width in centimeters",
                        min = 0.1,
                        max = 2.5,
                        value = 1.25)
        ),

        mainPanel(
            h2("Predicted Species:"),
            textOutput("prediction"),
            h3("How to Interpret Values"),
            h4("If value is less than 1, then the species is setosa."),
            h4("If value is between 1 and 2, then the species is versicolor."),
            h4("If value is greater than 2, then the species is virginica."),
            
        )
    )
))
