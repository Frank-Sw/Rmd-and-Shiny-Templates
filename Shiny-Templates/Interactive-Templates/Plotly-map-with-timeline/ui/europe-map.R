fluidPage(
  HTML(
    "<h2>What does immigrant integration (not) mean? Reconsidering integration through the eyes of German immigrants in the US </h2>"
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