#===============================================================================
#graphs syntaxis VERSION 1.0
#===============================================================================

# H4.
## libraries on
library(ggplot2)
library(dplyr)
  
## environmental issues on support for RWPP moderated by gender==1
importance_environmental <- seq(from=0, to=100, by=5)
log_odds <- c(-0.287+((-0.005*importance_environmental)+(-1.098*1)+
                         (-0.002*importance_environmental*1)))
odds <- exp(log_odds)
pr.RWPP <- (odds/(1+odds))

## environmental issues on support for RWPP moderated by gender==0
importance_environmental_0 <- seq(from=0, to=100, by=5)
log_odds_0 <- c(-0.287+(-0.005*importance_environmental_0))
odds_0 <- exp(log_odds_0)
pr.RWPP_0 <- (odds_0/(1+odds_0))

df <- data.frame(importance_environmental, 
                 pr.RWPP,
                 pr.RWPP_0)
graph <- ggplot(df, aes(importance_environmental)) +    
  geom_line(aes(y=pr.RWPP), colour="red") +            
  geom_line(aes(y=pr.RWPP_0), colour="blue") +
  theme(axis.title.y = element_blank()) +
  theme(axis.title.x = element_blank()) +
  theme_bw() +
  labs(x = "importance environmental",
       y = "pr RWPP",)
plot(graph)

png(filename = "graph.png")
plot(graph)
dev.off()


#H5.
## environmental issues on support for RWPP moderated by gender==1 & age==1
importance_environmental <- seq(from=0, to=100, by=5)
log_odds_1 <- c(2.706+(-0.069*importance_environmental)+(-0.185*1)+
                    (-0.741*1)+(-0.017*importance_environmental*1)+
                                (0.015*importance_environmental*1)+
                                (-0.237*1*1)+
                                (0.004*importance_environmental*1*1))
odds_1 <- exp(log_odds_1)
pr.RWPP_1 <- (odds_1/(1+odds_1))

## environmental issues on support for RWPP moderated by gender==1 & age==3
importance_environmental <- seq(from=0, to=100, by=5)
log_odds_3 <- c(2.706+(-0.069*importance_environmental)+(-0.185*1)+
                  (-0.741*3)+(-0.017*importance_environmental*1)+
                  (0.015*importance_environmental*3)+
                  (-0.237*1*3)+
                  (0.004*importance_environmental*1*3))
odds_3 <- exp(log_odds_3)
pr.RWPP_3 <- (odds_3/(1+odds_3))


## environmental issues on support for RWPP moderated by gender==1 & age==5
importance_environmental <- seq(from=0, to=100, by=5)
log_odds_5 <- c(2.706+(-0.069*importance_environmental)+(-0.185*1)+
                  (-0.741*5)+(-0.017*importance_environmental*1)+
                  (0.015*importance_environmental*5)+
                  (-0.237*1*5)+
                  (0.004*importance_environmental*1*5))
odds_5 <- exp(log_odds_5)
pr.RWPP_5 <- (odds_5/(1+odds_5))

df2 <- data.frame(pr.RWPP_5, pr.RWPP_1, pr.RWPP_3,
                  importance_environmental)

graph2 <- ggplot(df2, aes(importance_environmental)) +    
  geom_line(aes(y=pr.RWPP_5), colour="red") + 
  geom_line(aes(y=pr.RWPP_3), colour="orange") +
  geom_line(aes(y=pr.RWPP_1), colour="blue") +
  theme(axis.title.y = element_blank()) +
  theme(axis.title.x = element_blank()) +
  theme_bw() +
  labs(x = "importance environmental",
       y = "pr RWPP",)
plot(graph2)

png(filename = "graph2.png")
plot(graph2)
dev.off()
