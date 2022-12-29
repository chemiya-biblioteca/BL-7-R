library(tidyr)
df <- data.frame(S.No = c(1:10),
                 Name = c('John', 'Smith', 
                          'Peter', 'Luke',
                          'King', rep(NA, 5)))
df                                     

df %>% replace_na(list(Name = 'Henry')) 
