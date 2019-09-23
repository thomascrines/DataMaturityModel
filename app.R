#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Data Management Maturity Model"),

    # Sidebar with a slider input for number of bins 
    fluidRow(
        mainPanel(
            h2("Data Management Awareness"),
            h4("Familiarity with data management principles for using and retaining data."),
            radioButtons("question_1", "What does data management mean to your team?", 
                         choices = c(
                             "Level 1: We’ve got no in-depth understanding of data management",
                              "Level 2: We’ve got an awareness of the legal responsibilities including GDPR, FoI and the DPA",
                                     "Level 3: There’s been some good practice developed in our team on a case-by-case basis whenever we’ve encountered issues or obtained additional knowledge",
                                     "Level 4: There are people in our team with a professional understanding of the advantages of recorded metadata, ownership and versioning, and there are business processes enforcing legal responsibilities e.g. FoI requests",
                                     "Level 5: There is published policy in our division committing all our teams to considering data management (governance, metadata, retention policies, storage and versioning) whenever we’re working with data and suggesting model solutions"
                        )),
            
            h2("Data Management Governance"),
            h4("The processes and rules used to control data and changes to it. It also covers accountability for the quality of the data and its management. The sort of things to consider when answering the question are: Does your team have identified owners for datasets? Are there entries in the information assets register? Is there a DPIA for personal data?"),
            radioButtons("question_2", "Does your team have robust data management governance in place?",
                         choices = c(
                             "Level 1: There is very little/no governance in place in our team",
                             "Level 2 :There is some governance in place but it’s not formally recorded in a searchable way",
                             "Level 3: There is governance recorded locally and available to our team",
                             "Level 4: We have governance recorded at divisional level",
                             "Level 5: There is robust governance in place with identified owners for datasets, entries in the information asset register and DPIAs for personal data"
                             )),
            
            h2("Metadata"),
            h4("Metadata is data about data and is concerned with the quality, quantity, detail and availability of information about the data."),
            radioButtons("question_3", "Do all your datasets have complete and accurate metadata captured using recognised standards?",
                         choices = c(
                             "Level 1: We don’t generally capture descriptive metadata",
                             "Level 2: There is some metadata embedded in documents that is stored and recorded",
                             "Level 3: There is some metadata available within our team",
                             "Level 4: There is some metadata published across our division",
                             "Level 5: There is complete, accurate and searchable metadata for all our datasets that uses recognised standards"
                             )),
            h2("Storage and Security"),
            h4("The location and processes used to hold and secure data, and to manage and facilitate access by authorised analysts."),
            radioButtons("question_4", "Where is your data stored and who can access it? ",
                         choices = c(
                             "Level 1: Our data is stored locally and accessible by specific users",
                             "Level 2: Our data is stored on a branch shared drive and accessible by members of that branch",
                             "Level 3: Our data is stored in a secure eRDM folder and is only accessible by named individuals",
                             "Level 4: All our data is stored on a corporate repository but is only accessible by specific tools",
                             "Level 5: All our data is stored on a corporate repository and is accessible by all tools"
                             )),
            h2("Retention and Versioning"),
            h4("Retention and versioning are two vital practices in the data’s lifecycle, to support legal compliance with data protection requirements and the reproducibility of analysis. Things to consider when answering the question are: Do you have retention policies in place and how are they managed? Can you trace data across its lifecycle? Who owns the data?  Is your data version controlled and if so, what methods do you use?"),
            radioButtons("question_5", "How does your team manage retention and ensure data is version controlled?",
                         choices = c(
                             "Level 1: Our data is stored locally and accessible by specific users",
                             "Level 2: We have our retention policy recorded locally and managed locally. We have separate datasets with ad-hoc names",
                             "Level 3: We have our retention policy recorded in eRDM and managed locally. We have separated datasets with structured naming conventions",
                             "Level 4: We have our retention policy recorded in eRDM or similar and it is managed at branch level. There is some versioning in place with limited commenting.",
                             "Level 5: Our retention policy is recorded in a searchable repository and managed automatically centrally. There is full major and minor versioning in place with comments and audit facilities"
                             )),
            h2("Data Sharing"),
            h4("The appropriate sharing or publication of data and data products, either within the public sector or more widely and the processes used to achieve this. Things to consider when answering the question are: Is your data ever shared? How do people know about your data? Do you reach beyond established audience for your publications and if so. how? Do you share with appropriate researchers?"),
            radioButtons("question_6", "How does your team share data?",
                         choices = c(
                             "Level 1 : Our data is stored locally and accessible by specific users",
                             "Level 2: There is ad hoc sharing based on FoI requests and similar",
                             "Level 3: We have local processes for individual data sharing with other bodies in the policy area",
                             "Level 4: There is regular data sharing up and running with public sector and academic partners",
                             "Level 5: We have open datasets regularly published on the ODPP. Individual level datasets stored with the UKDA or similar"
                             )),
            h2("Data Processing"),
            h4("The automated collection, reception and processing that happens before analysis."),
            radioButtons("question_7", "How do you import data into your tools?",
                         c(
                             "Level 1: Our data is stored locally and is accessible by specific users",
                             "Level 2: There are manual processes using existing scripts",
                             "Level 3: Semi-automated processing is carried out using managed scripts",
                             "Level 4: There are automated processes with some manual intervention",
                             "Level 5: We have fully automated processes that are managed by a specialist team"  
                             ))
    )
)
)





    
    

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
