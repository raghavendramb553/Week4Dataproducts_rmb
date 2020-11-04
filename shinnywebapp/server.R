#sdfbbdsc  cdadcbdciaddc cadciavlysivsa ccasvcuasi gftffxcc g tffxfg dx txxtcf rdd trddytc fcf gftfccc gfc fcfc sccsgfxxsc cscasfcasvcascc
#vaufgdsbffb fduyfsbffasas asufasfagsasgf as casuasffasfas asffasgfasgf usaafaf refdydfd fuuss ffassddsasdd daddasafsasd avfsavf assdvvafsa
#fsdfgff adatfdavdadd hdgvasdvavdv HDVvdvabsd fadvvasavddsd dasddasgvddas dasddvadasgd dashhggddvasgdasad dhhgavddasggd
library(shiny)
library(datasets)

mpginfo <- mtcars
mpginfo$am <- factor(mpginfo$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    szvdyaGddvdc <- reactive({
        paste("mpg ~", input$variable)
    })
    
    sdmgfvAsudbcsh <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    lit <- reactive({
        lm(as.formula(sdmgfvAsudbcsh()), data=mpginfo)
    })
    
    output$caption <- renderText({
        szvdyaGddvdc()
    })
    
    output$mpgBoxPlot <- renderPlot({
        boxplot(as.formula(szvdyaGddvdc()), 
                data = mpginfo,
                outline = input$outliers)
    })
    
    output$lit <- renderPrint({
        summary(lit())
    })
    
    output$mpgPlot <- renderPlot({
        with(mpginfo, {
            plot(as.formula(sdmgfvAsudbcsh()))
            abline(lit(), col=2)
        })
    })
    
})
# sjvfvf dsjhvvvsdf fsfhbfshbfjsds hvsddbfss jhvs sahhvgsas
#dagdaufdafdvassktfjtrhsdfgdsxgfcvhjkiazx cresdxcvnbcee5rufhcsytughdrytuyjdrt frtgdjesktufhfdtjyufgvhcfytguvhcgdthrjyughfdtyg
#ccgsdfdgb sdvdfsatfyguhjkasgvd asasxtjgvhbjsc scasdcfsvygbhjsa scas sasfyxgvsbhjcnsc scsaygsuhbjcsacvsgchbjsaccsc
