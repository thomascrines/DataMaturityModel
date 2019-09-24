library(shiny)
library(fmsb)

question_1 <- "What does data management mean to your team?"
question_2 <- "Does your team have robust data management governance in place?"
question_3 <- "Do all your datasets have complete and accurate metadata captured using recognised standards?"
question_4 <- "Where is your data stored and who can access it?"
question_5 <- "How does your team manage retention and ensure data is version controlled?"
question_6 <- "How does your team share data?"
question_7 <- "How do you import data into your tools?"


ui <- fluidPage(
    
    titlePanel("Data Management Maturity Model"),
    
    fluidRow(
        textInput("name", "Name:"),
        textInput("team", "Team:")
    ),
    
    fluidRow(
        mainPanel(
            tabsetPanel(
                tabPanel("Questions",
                         h2("Data Management Awareness"),
                         h4("Familiarity with data management principles for using and retaining data."),
                         radioButtons("question_1", question_1, 
                                      choices = c(
                                          "Level 1: We’ve got no in-depth understanding of data management",
                                          "Level 2: We’ve got an awareness of the legal responsibilities including GDPR, FoI and the DPA",
                                          "Level 3: There’s been some good practice developed in our team on a case-by-case basis whenever we’ve encountered issues or obtained additional knowledge",
                                          "Level 4: There are people in our team with a professional understanding of the advantages of recorded metadata, ownership and versioning, and there are business processes enforcing legal responsibilities e.g. FoI requests",
                                          "Level 5: There is published policy in our division committing all our teams to considering data management (governance, metadata, retention policies, storage and versioning) whenever we’re working with data and suggesting model solutions"
                                      ),
                                      width = "100%", selected = character(0)),
                         
                         h2("Data Management Governance"),
                         h4("The processes and rules used to control data and changes to it. It also covers accountability for the quality of the data and its management. The sort of things to consider when answering the question are: Does your team have identified owners for datasets? Are there entries in the information assets register? Is there a DPIA for personal data?"),
                         radioButtons("question_2", question_2,
                                      choices = c(
                                          "Level 1: There is very little/no governance in place in our team",
                                          "Level 2: There is some governance in place but it’s not formally recorded in a searchable way",
                                          "Level 3: There is governance recorded locally and available to our team",
                                          "Level 4: We have governance recorded at divisional level",
                                          "Level 5: There is robust governance in place with identified owners for datasets, entries in the information asset register and DPIAs for personal data"
                                      ),
                                      width = "100%", selected = character(0)),
                         
                         h2("Metadata"),
                         h4("Metadata is data about data and is concerned with the quality, quantity, detail and availability of information about the data."),
                         radioButtons("question_3", question_3,
                                      choices = c(
                                          "Level 1: We don’t generally capture descriptive metadata",
                                          "Level 2: There is some metadata embedded in documents that is stored and recorded",
                                          "Level 3: There is some metadata available within our team",
                                          "Level 4: There is some metadata published across our division",
                                          "Level 5: There is complete, accurate and searchable metadata for all our datasets that uses recognised standards"
                                      ),
                                      width = "100%", selected = character(0)),
                         h2("Storage and Security"),
                         h4("The location and processes used to hold and secure data, and to manage and facilitate access by authorised analysts."),
                         radioButtons("question_4", question_4,
                                      choices = c(
                                          "Level 1: Our data is stored locally and accessible by specific users",
                                          "Level 2: Our data is stored on a branch shared drive and accessible by members of that branch",
                                          "Level 3: Our data is stored in a secure eRDM folder and is only accessible by named individuals",
                                          "Level 4: All our data is stored on a corporate repository but is only accessible by specific tools",
                                          "Level 5: All our data is stored on a corporate repository and is accessible by all tools"
                                      ),
                                      width = "100%", selected = character(0)),
                         h2("Retention and Versioning"),
                         h4("Retention and versioning are two vital practices in the data’s lifecycle, to support legal compliance with data protection requirements and the reproducibility of analysis. Things to consider when answering the question are: Do you have retention policies in place and how are they managed? Can you trace data across its lifecycle? Who owns the data?  Is your data version controlled and if so, what methods do you use?"),
                         radioButtons("question_5", question_5,
                                      choices = c(
                                          "Level 1: Our data is stored locally and accessible by specific users",
                                          "Level 2: We have our retention policy recorded locally and managed locally. We have separate datasets with ad-hoc names",
                                          "Level 3: We have our retention policy recorded in eRDM and managed locally. We have separated datasets with structured naming conventions",
                                          "Level 4: We have our retention policy recorded in eRDM or similar and it is managed at branch level. There is some versioning in place with limited commenting.",
                                          "Level 5: Our retention policy is recorded in a searchable repository and managed automatically centrally. There is full major and minor versioning in place with comments and audit facilities"
                                      ),
                                      width = "100%", selected = character(0)),
                         h2("Data Sharing"),
                         h4("The appropriate sharing or publication of data and data products, either within the public sector or more widely and the processes used to achieve this. Things to consider when answering the question are: Is your data ever shared? How do people know about your data? Do you reach beyond established audience for your publications and if so. how? Do you share with appropriate researchers?"),
                         radioButtons("question_6", question_6,
                                      choices = c(
                                          "Level 1: Our data is stored locally and accessible by specific users",
                                          "Level 2: There is ad hoc sharing based on FoI requests and similar",
                                          "Level 3: We have local processes for individual data sharing with other bodies in the policy area",
                                          "Level 4: There is regular data sharing up and running with public sector and academic partners",
                                          "Level 5: We have open datasets regularly published on the ODPP. Individual level datasets stored with the UKDA or similar"
                                      ),
                                      width = "100%", selected = character(0)),
                         h2("Data Processing"),
                         h4("The automated collection, reception and processing that happens before analysis."),
                         radioButtons("question_7", question_7,
                                      c(
                                          "Level 1: Our data is stored locally and is accessible by specific users",
                                          "Level 2: There are manual processes using existing scripts",
                                          "Level 3: Semi-automated processing is carried out using managed scripts",
                                          "Level 4: There are automated processes with some manual intervention",
                                          "Level 5: We have fully automated processes that are managed by a specialist team"  
                                      ), 
                                      width = "100%", selected = character(0)),
                         downloadButton("download", "Download Results")
                         
                ),
                tabPanel("Results",
                         h4(textOutput("name")),
                         h4(textOutput("team")),
                         h4(question_1),
                         h4(textOutput("answer_1")),
                         h4(question_2),
                         h4(textOutput("answer_2")),
                         h4(question_3),
                         h4(textOutput("answer_3")),
                         h4(question_4),
                         h4(textOutput("answer_4")),
                         h4(question_5),
                         h4(textOutput("answer_5")),
                         h4(question_6),
                         h4(textOutput("answer_6")),
                         h4(question_7),
                         h4(textOutput("answer_7")),
                         plotOutput("radarPlot")
                )
            )
        )
    )
)

server <- function(input, output) {
    
    output$name <- renderText({
        input$name
    })
    
    output$team <- renderText({
        input$team
    })
    
    output$answer_1 <- renderText({
        input$submit
        input$question_1
    })
    
    output$answer_2 <- renderText({
        input$submit
        input$question_2
    })
    
    output$answer_3 <- renderText({
        input$submit
        input$question_3
    })
    
    output$answer_4 <- renderText({
        input$submit
        input$question_4
    })
    
    output$answer_5 <- renderText({
        input$submit
        input$question_5
    })
    
    output$answer_6 <- renderText({
        input$submit
        input$question_6
    })
    
    output$answer_7 <- renderText({
        input$submit
        input$question_7
    })
    
    output$radarPlot <- renderPlot({
        
        data <- data.frame(
            "Data Management Awareness" = strtoi(substr(input$question_1, 7, 7)), 
            "Data Management Governance" = strtoi(substr(input$question_2, 7, 7)), 
            "Metadata" = strtoi(substr(input$question_3, 7, 7)), 
            "Storage and Security" = strtoi(substr(input$question_4, 7, 7)), 
            "Retention and Versioning" = strtoi(substr(input$question_5, 7, 7)), 
            "Data Sharing" = strtoi(substr(input$question_6, 7, 7)), 
            "Data Processing" = strtoi(substr(input$question_7, 7, 7))
        )
        
        data <- rbind(rep(5,7), rep(0,7), data)
        
        radarchart(data)
    })
    
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

shinyApp(ui = ui, server = server)
