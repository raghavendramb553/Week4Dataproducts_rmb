#eyfgdsdukasfid asddasdfas dasddfasdas dasfd addfsvdasfdytsaadassddasdfafdasdas sdasfdasdtasdas ddzdufasddfd adadffadffdA DADFddUD dddffdad adxAFDA DDAAD
#AVSDS FUFGS AASCUGABUASGSB JFASFYIGJCSAKFF, FASSUYGSSUFAW FAFUYSGFFUSA DSUVDSAVSDA
#DSJFGBSYFGFBSUYVFKAAAAAAAAHKVYASKVLSVKASSVASVASCASCGASC CASVAS   yugusuygfsd dgsdsduvds fsdugsdv csddcgsdsss suvsyyfgsuybss sa
#hbsfvbdvz ssasfaf asfabsffassfsfas fiaii

library(shiny)

shinyUI(
  navbarPage("RMB application",
             tabPanel("study",
                      fluidPage(
                        titlePanel("The relationship b/w objects and MPG"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("spelling")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("About the Data Set",
                      
                      h3("Regression Models Course Project (from Coursera)"),
                      helpText("You work for Motor Trend, a magazine about the automobile industry Looking at a data set of a collection of cars, they are interested in exploring the relationship",
                               "between a set of variables and miles per gallon (MPG) (outcome). They are particularly interested in the following two questions: Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions"),
                      h3("Important"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("extra source information",
                      h2("machine famous vehicle path exams"),
                      hr(),
                      h3("Explaination"),
                      helpText("The source was downloaded from the 1974 Machine famous US advertise,",
                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models)."),
                      h3("Format"),
                      p("A source frame with 32 monitoring on 11 objects."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("coming return to my repository",
                      a("https://github.com/raghavendramb553/Week4Dataproducts_rmb"),
                      hr(),
                      h4("I assume that you loved my shiny app"),
                      h4("The name of the repository is called weekdataproducts_rmb")
             )
  )
)
#uugdyf gfegbeg wyyfwe7gyhghwg7y ggwee gygyhwsgkl fgwgsajf fagaggfa fafiuaggauiugfabwwfiahhf fffawbfagffawfgawff 
#usiugfs fffgagfa fasgff afafgfsugfasf asiffgaf