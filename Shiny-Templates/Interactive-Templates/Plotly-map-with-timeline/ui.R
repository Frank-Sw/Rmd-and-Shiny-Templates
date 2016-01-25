## ==== Packages to load for server

library(shiny) # Some advanced functionality depends on the shiny package being loaded client-side, including plot.ly
library(plotly)

## ==== Global Variables (client-side)

library(shinythemes) # Template uses the cerulean theme as it is pretty

shinyUI(fluidPage(

## ==== Include google analytics code
  tags$head(includeScript("google-analytics.js")),
  
## ==== Automatically include vertical scrollbar
## ==== This prevents the app from reloading content when the window is resized which would otherwise result in the
## ==== appearance of the scrollbar and the reloading of content. Note that "click data" may still be lost during 
## ==== resizing, as discussed here https://github.com/rstudio/shiny/issues/937
  tags$style(type="text/css", "body { overflow-y: scroll; }"),

  theme = shinytheme("cerulean"),

  HTML(
    "<h2>Plot.ly Scattergeo Plot with Timeline to Filter out Data</h2>"
  ),
  #     fluidRow(
  #     column(HTML("Filter letters by date sent?"), width = 3),
  #     column(uiOutput("show_timeslider_UI"), width = 2)
  #     ),
  wellPanel(
    uiOutput("show_letters_where_receive_unknown_UI"),
    uiOutput("show_timeslider_UI"),
    # uiOutput("legend_type_UI"),
    fluidRow(column(
      uiOutput("time_period_of_interest_UI"),
      width = 12
    )),
    HTML("<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus egestas quam, non vulputate odio dapibus ac. Cras et lacinia tortor, in scelerisque eros. Nulla facilisi. Fusce feugiat, ex non condimentum egestas, massa mauris venenatis nunc, id efficitur metus lorem nec dui. Integer eget sapien faucibus, laoreet nibh in, faucibus augue. Proin libero metus, tempor ut semper eget, vehicula vitae justo. Phasellus ut leo ac elit euismod maximus. Sed nec lobortis augue, ut sagittis nisi.
         </p>")
    ),
  plotlyOutput("europe_map", width = "100%", height = "800px")
  
  )
)