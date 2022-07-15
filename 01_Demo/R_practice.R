#revisar en donde estas trabajando
getwd()

#vete al working directory que necesitas session - set working directory
# import your data 
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

#importar las librerias
library(jsonlite)

#function to read in a JSON file into R.
?fromJSON()

#read in the used car data into our R environment
demo_table2 <- fromJSON(txt='demo.json')

#we want to select the third row of the Year column
demo_table[3,"Year"]

#otra forma de seleccionar
demo_table$"Vehicle_Class"

#filtrar con logica
filter_table <- demo_table2[demo_table2$price > 10000,]

?subset()

#filtremos 
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd"& "clean" %in% title_status ) 

#vamos a sacar una muestra random
?sample()

#ejemplo sample
sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)

#1.capture the number of rows
num_rows <- 1:nrow(demo_table)

#2. sample 3 of those rows
sample_rows <- sample(num_rows, 3)

#3. retrieve the requested data
demo_table[sample_rows,]

#4.combine all three steps
demo_table[sample(1:nrow(demo_table), 3),]

#para llamar a una libreria
library(tidyverse)

#para transformar y mutar data
?mutate()
?mutate()

#add columns to original data frame
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) 

#create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') 

#para cambiar de wide tables a long table
?gather()

demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)

long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

#para cambiar de long tables a widetable
?spread()

wide_table <- long_table %>% spread(key="Metric",value="Score")

#check if our newly created wide-format table is exactly the same as our original 
all.equal(demo_table3, wide_table)

table <-demo_table3[,order(colnames(wide_table))]
table <- demo_table3[,(colnames(wide_table))]

all.equal(demo_table3, wide_table)

#graphical tool
?ggplot()

#visualize categorical data
#mpg es una base de datos integrado en R
head(mpg)

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=class)) 

#plot a bar plot
plt + geom_bar()

#conocer las bar charts
?geom_bar()

#podemos hacer primero un resumen para despues graficar
#create summary table
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') 

#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) 


#plot a bar plot  
plt + geom_col() 

#plot bar plot with labels
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + 
  theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees

#create summary table
mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 

#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy))

#hacer una grafica linear
plt + geom_line()

#add line plot with labels
plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(15:30))

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty)) 

#add scatter plot with labels
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") 

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) 

#add scatter plot with labels
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class") 

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) 

#add scatter plot with multiple aesthetics
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(y=hwy)) 

#add boxplot
plt + geom_boxplot() 

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) 

#add boxplot and rotate x-axis labels 45 degrees
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) 

#create summary table
mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 
plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))

#create heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)") 

#create summary table
mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 

#import dataset into ggplot2
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy))   

#add heatmap with labels
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5))

?t.test()
?aov()

?lm()











