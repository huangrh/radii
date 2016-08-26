require(shiny)

# define UI
shinyUI(fluidPage(

# Application title
titlePanel("Determine Stokes Radius by Gel Filtration"),
sidebarLayout(
    # Siderbar with controls
    sidebarPanel(
        h5("Step 1: Setup column data:"),
        numericInput(inputId="vt",label="Total volume",value="120.5", step=0.1),
        numericInput(inputId="vo", label="Void volume", value = 47.5, step=0.1),
        # textInput(inputId="std", label="Standard", value="biorad_protein_std"),
        hr(),
        h5("Step 2: Input eluted volume:"),
        numericInput(inputId="ve_myo", label="Horse Myoglobin", value=80, step=0.1),
        numericInput(inputId="ve_ova", label="Chichen ovalbumin", value=80,step=0.1),
        numericInput(inputId="ve_glo", label="Bovin gamma-globulin", value=80,step=0.1),
        numericInput(inputId="ve_thy", label="Bovine thyroglubulin", value=80,step=0.1),
        hr()
    ), # end of sidebarPanel

    # Tabset that include data, results and plots
    mainPanel(
        tabsetPanel(type="tabs",
            tabPanel("Standardize"

            ),
            tabPanel("Analysis",
                textInput(inputId="ve",label="Eluted volume",value="75"),
                textOutput(outputId="Rs_test", inline=TRUE)

            )
        )
    ) # end of mainPanel
)
))
