
# Billboard Top 100 (Simulated)
library(shiny)
library(tidyverse)
library(shinythemes)

data <- read.csv("www/Fake_Billboard_Data.csv")
data2 <- data  # Add this line here

ui <- fluidPage(
  theme = shinytheme('united'),
  navbarPage(
    tags$head(tags$style(
      HTML(
        "body{
                background-image: url(https://img2-bs.511doc.com/mark/00/00/61/28/948cad68e75fd435bd7aa2886ae4d806.jpg!/quality/90/unsharp/true/compress/true/fw/640/clip/640x500a0a0);
    }"
      )
    )),
    title = img(src = "https://www.billboard.com/wp-content/themes/vip/pmc-billboard-2021/assets/app/icons/icon-512x512.png", height = "35px",),
    id = "navBar",
    position = "fixed-top",
    header = tags$style(
      ".navbar-nav {
                       float: right !important;
                       }",
      "body {padding-top: 75px;}"
    ),
    
    tags$head(tags$style(
      HTML(
        "head{
                background-image: url( https://bgr.com/wp-content/uploads/2021/08/billboard-logo.jpg?quality=82&strip=all&w=1440&h=768&crop=1);
    }"
      )
    )),
    
    
    
    
    
    tabPanel(
      "About",
      
      titlePanel("Billboard Top 100"),
      fluidRow(
        
        
        
        
        
        hr(),
        mainPanel(h2("Functionality of our dashboard"),
                  
                  hr(),
                  
                  h3("For our Songs'Rank tabpanel"),
                  
                  
                  
                  h4("We have select a sidebar for users to choose True/False/All in order to filter the artist was awarded whether nor not(don't forget to click the sumbit buttom!). Other than that, The table, at the bottom, can alter along with the filter bar. And we also provide a scatterplot, which also altering along with the filter bar, for user to view the relationship bewteen peak position and weeks on chart Among 100 songs."),
                  
                  hr(),
                  
                  h3("For our Artists'Analysis tabpanel"),
                  
                  h4("In this page, we allow users to choose which artists they want. And users could see two info from the artist. One is the relationship historgram, which located at the left side, bewteen peak position and rank. Second, the table, which located in the bottom, is to tell each artist their best song position, average rank, average rank from last week, and total song in week chart."),
                  
                  hr(),
                  
                  h3("For our Artists'Album Pic tabpanel"),
                  
                  h4("The last tabpanel is for users to check out the album cover for each artist by using sliderinput and radio Buttons. Users can choose to rank and whether to view the album cover. "),
                  
                  hr(),
                  
                  h3("Thank you!(◍•ᴗ•◍)"),
                  
                  
                  
        )
        
      ),
      
      
    ),
    
    
    
    
    
    
    
    
    tabPanel(
      "Songs' Ranking",
      
      titlePanel(("Billboard Top 100")),
      h4("The time is ",
         # We give textOutput a span container to make it appear
         # right in the h4, without starting a new line.
         textOutput("currentTime", container = span)),
      
      
      # Sidebar with a slider input for number of bins
      sidebarLayout(
        position = "right",
        sidebarPanel(
          h1("Official Info"),
          a(
            href = "https://www.billboard.com/charts/hot-100/",
            "Billboard Top100 Up-to-Date can be found here.(Just Click It!(Ꙭ))",
            target = "_blank",
            col = "blue"
          ),
          hr(),
          selectInput(
            inputId = "Award",
            label = "Award:",
            choices = c("All", unique(data$award)),
            selected = "All"
          ),
          
          
          submitButton("Submit", icon("refresh")),
          
          
          hr(),
          helpText("The Following Data is up-to-date(2022/11/30)")
        ),
        
        
        
        
        # Show a plot of the generated distribution
        mainPanel(plotOutput(outputId = "distPlot"))
      ),
      tabPanel("Table", dataTableOutput("table"))
    ),
    
    
    
    tabPanel(
      "Artists' Analysis",
      
      titlePanel("Billboard Top 100"),
      
      # Sidebar with a slider input for number of bins
      sidebarLayout(
        position = "right",
        sidebarPanel(
          selectInput(
            inputId = "Artist",
            label = "Artist:",
            choices = c("All", unique(data$artist)),
            selected = "All"
          ),
          
          
          submitButton("Submit", icon("refresh")),
          hr(),
          helpText("The Following Data is up-to-date(2022/11/30)")
        ),
        
        
        
        
        # Show a plot of the generated distribution
        mainPanel(plotOutput(outputId = "distPlot2"))
      ),
      tabPanel("Table", dataTableOutput("table2"))
    ),
    
    
    tabPanel(
      "Artists' Album Pic",
      
      titlePanel("Billboard Top 100"),
      fluidRow(
        column(4, wellPanel(
          sliderInput("r", "Songs Ranking:", min = 1, max = 100,
                      value = 1, step = 1),
          radioButtons("yorn", "Show Album cover or Not:",
                       c("Yes", "No"))
        )),
        submitButton("Change the Song", icon("refresh")),
        mainPanel(h2("This is the information of this song"),
                  h4(helpText("Slide the left bar to change the cover")),
                  
                  hr(),
                  
                  h3("The name and the artist is:"),
                  
                  h3(textOutput("nametext")),
                  uiOutput(outputId = "img1")
                  
        )
        
      ),
      
      
    )
    
    
    
    
    
    
  )
)


#----------------------------

server <- function(input, output, session) {
  output$currentTime <- renderText({
    invalidateLater(as.integer(1), session)
    
    format(Sys.time())
  })
  
  
  data_temp = reactive({
    if (input$Award == "All") {
      data
    } else {
      data %>% filter(award == input$Award)
    }
  })
  
  data_pic = reactive({
    data_temp() |> filter(weeksOnChart > 10 & peakPosition <= 20)
  })
  output$distPlot <- renderPlot({
    output$table = renderDataTable(data_temp())
    musicplot <-
      ggplot(data_pic(), aes(weeksOnChart, peakPosition)) +
      geom_point() +
      geom_text(
        aes(label = title),
        size = 4,
        check_overlap = TRUE,
        vjust = 1,
        position=position_jitter(width=1,height=1)
      )
    print(
      musicplot + ggtitle(
        "Song's position in PeakPosition VS WeeksOnChart
(With weeks more than 10 times and peak position in Top20)"
      )
    )
    
  })
  
  
  data_pic2 = reactive({
    if (input$Artist == "All") {
      data
    } else {
      data %>% filter(artist == input$Artist)
    }
  })
  data_temp2 = reactive({
    data2 = data |> group_by(artist) |>
      summarise(
        best_song_position = min(peakPosition),
        song_avg_rank = mean(rank),
        lastweek_song_avg_rank = mean(lastWeek),
        total_song_inChart_week = sum(weeksOnChart),
        total_song_numb_onchart = n()
      )
    if (input$Artist == "All") {
      data2
    } else {
      data2 %>% filter(artist == input$Artist)
    }
  })
  output$distPlot2 <- renderPlot({
    output$table2 = renderDataTable(data_temp2())
    
    musicplot2 <-
      ggplot(data_pic2(), aes(rank, peakPosition),) +
      geom_col(fill = "lightblue") +
      geom_point(fill = "purple") +
      geom_text(
        aes(label = NA),
        size = 4,
        check_overlap = TRUE,
        col = "black",
        vjust = 0.5,
        nudge_y = 0.5
      )
    print(musicplot2 + ggtitle("Artist's single song in Top100"))
    
  })
  
  
  pic = reactive({
    data2 %>% filter(rank == as.integer(input$r))
  })
  
  
  
  output$nametext <- renderText({
    text = paste0(pic()$title," ,which is made by ",pic()$artist)
    return(text) 
  })
  
  
  output$imagetext <- renderText({
    return(pic()$image[1]) 
  })
  
  
  output$img1 <- renderUI({
    if(input$yorn == "Yes"){
      tags$img(src = pic()$image,height = 500)}
    
    else if(input$yorn == "No"){
      tags$img(src = "https://m.media-amazon.com/images/M/MV5BM2NlZmU0NGMtODEyOC00MTE3LTg1M2YtZTkzMDhjMzZlYjQyXkEyXkFqcGdeQXVyNTE4ODM3NTU@._V1_.jpg",height = 500)}
    
  })
  
}

shinyApp(ui = ui, server = server)
