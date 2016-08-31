shinyServer(function(input, output, seesion) {

    # You can access the value of the widget with input$action, e.g.
    output$value <- renderPrint({ input$action });
    output$visFun <- renderPrint({ "foo" })

    output$abc <- renderPrint({ "bar" })

})
