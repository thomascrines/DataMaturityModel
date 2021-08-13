server <- function(input, output) {
  
  output$download <- downloadHandler(
    filename = "download.html",
    content = function(file) {
      tempReport = file.path(tempdir(), "report.Rmd")
      file.copy("download_report.Rmd", tempReport, overwrite = TRUE)
      params <- list(answer_1 = input$question_1,
                     answer_2 = input$question_2,
                     answer_3 = input$question_3,
                     answer_4 = input$question_4,
                     answer_5 = input$question_5,
                     answer_6 = input$question_6,
                     answer_7 = input$question_7,
                     name = input$name,
                     team = input$team
      )
      rmarkdown::render(tempReport, output_file = file,
                        params = params,
                        envir = new.env(parent = globalenv())
      )
    }
  )
}