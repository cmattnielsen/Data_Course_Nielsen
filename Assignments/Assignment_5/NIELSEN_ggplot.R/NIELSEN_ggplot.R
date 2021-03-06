library(datasets)
data(iris)
summary(iris)
library(tidyverse)


library(ggplot)














p <- ggplot(iris, aes(x=, y=Petal.Length)) + geom_point() + geom_smooth(method = "lm")
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point() + geom_smooth(method = "lm")
ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point() + geom_smooth(method = "lm")
ggplot(iris, aes(x=Petal.Length, y=Sepal.Length)) + geom_point() + geom_smooth(method = "lm")



p <- ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + geom_point() + geom_smooth(method = "lm")
p



p + labs(title="Sepal length vs petal length", 
          subtitle="for three iris species", 
          y="Sepal.Length", 
          x="Petal.Length", 
          caption="Species")
          geom_point(aes(color=species,size=3)) + 
          geom_smooth(method="lm",color="firebrick") + 
p
p2 <- p

          p2 <- ggplot(iris, aes(x=Sepal.Length, y=Petal.Length)) + 
            geom_point(aes(color=Species),size=3) + 
            geom_smooth(method="lm",color="firebrick") + 
            labs(title="Sepal length vs petal length", subtitle="for three iris speciest", y="Sepal.Length", x="Petal.Length",) 
          p2

p4 <- p

p + facet_wrap(~ Species) + theme(legend.position = "none", strip.text.x = element_text(size = 12, face="bold"))p + facet_wrap(~ Species) + theme(legend.position = "none", strip.text.x = element_text(size = 12, face="bold"))


p3 = ggplot(iris, aes(x=mean(iris$Sepal.Length),y=iris$Sepal.Length*iris$Sepal.Width, fill=Species)) + labs(x="Sepal length deviance from the mean of all observations",y="Ratio of Sepal Width to Petal Width")
p3

p3 + geom_boxplot()



ggplot( iris, aes (x = Sepal.Length, y = Sepal.Width, colour = Species)) geom_point()
irisplot1 <- ggplot (iris, aes(x = Sepal.Length, y = Petal.Length, Color = Species)) + geom_point() + geom_smooth(method = "lm")
irisplot1

png(filename = "iris_fig1.png")
irisplot2 <- irisplot1 + labs(title="Sepal Length vs Petal Length", subtitle = "for three iris species" , y="Petal.Length",x="Sepal.Length", caption="") + theme_bw()
dev.off()


ggplot(iris, aes(x = Petal.Width)) + geom_density(aes(color = Species))


irisplotdensity <- ggplot(iris, aes(x = Petal.Width)) + geom_density(aes(color = Species)) + lims(x=c(0,2.5),y=c(0.7))
irisplotdensity


irisplotdensity2 <- ggplot(iris, aes(x = Petal.Width, fill=Species)) + geom_density(alpha=0.4) + lims(x=c(0,2.5),y=c(0,8)) + labs(title="Distribution of Petal Widths"), subtitle="for three iris species", y="Density", x="Petal Width", caption="" + theme_bw()
png(filename = "./iris_fig2.png")""


Sepal/Petal <- iris$Sepal.Width/iris$Petal.Width
Sepal/Petal

png(filename = "./Assignment_5.Rproj iris_fig3.png")
rationplot <- ggplot(iris, aes(x=Species, y=Petal.Width/Sepal.Width, fill=Species)) +
geom_boxplot(color="black") + labs(title="Sepal to Petal Width Ratio", subtitle="for three iris species", y="Ratio of sepal width to petal width", x="Species", caption="") + theme_bw
rationplot






png(filename = "iris_fig1.png")
irisplot <- 







p + facet_wrap(~ Species)
p + facet_wrap(~ Species, scales = "free") + theme(legend.position = "none")
p + facet_wrap(~ Species) + theme(legend.position = "none", strip.text.x = element_text(size = 12, face="bold"))
p + facet_wrap(~ Species) + theme(legend.position = "none", 
                                 strip.text.x = element_text(size = 12, face="bold"),
                                 strip.background = element_rect(fill = "lightblue"))

p







































jpeg("./Sepal_vs_Petal.jpg")
plot(x=dat$Sepal.Length,
     y=dat$Petal.Width,
     col=dat$Species,
     main = "Length vs Width",
     xlab = "Length",
     ylab = "Width")
dev.off()


data(mpg)
ggplot(mpg, aes(x=year , y=year))



library(ggplot2)
library(gganimate)
library(gapminder)
theme_set(theme_bw())  # pre-set the bw theme.

g <- ggplot(mpg , aes(gdpPercap, cty, size = pop, frame = year)) +
  geom_point() +
  geom_smooth(aes(group = year), 
              method = "lm", 
              show.legend = FALSE) +
  facet_wrap(~continent, scales = "free") +
  scale_x_log10()  # convert to log scale

gganimate(g, interval=0.2)



mpg_select <- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"), ]


theme_set(theme_bw())  
g <- ggplot(mpg_select, aes(displ, cty)) + 
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart")

g + geom_jitter(aes(col=manufacturer, size=hwy)) + 
  geom_smooth(method="lm", se=FALSE)




ggplot(iris, aes(x= Sepal.Length, y=Petal.Length,color=Species)) +
  geom_point() +
  geom_smooth(method = "lm")
  theme_minimal() +
  labs(title="Whatever",
      subtitle = "a;sldkfj")

  
ggplot(iris, aes(x=Petal.width, fill=species)) +
  geom_density(alpha=.5) +
  theme_minimal()
    


sw_pw <- iris$Sepal.Width/iris$Petal.Width
pw_sw <- iris$Petal.Width/iris$Petal.Width

ggplot(iris, aes(x=Species, y=pw_sw, fill=Species)) +
  geom_boxplot() +
  theme_minimal() +
  labs(y="Ratio of xyz")



iris$Deviance <- iris$Sepal.Length - mean(iris$Sepal.Length)


sort(iris$Deviance)
order(iris$Deviance)




iris2 <- iris[order(iris$Deviance),]



ggplot(iris2, aes(x=1:150, y=Sepal.Length - mean(iris@Sepal.Length),fill=Species)) +
  geom_bar(stat = "Identity") +
  coord_flip() +
  theme_minimal()









