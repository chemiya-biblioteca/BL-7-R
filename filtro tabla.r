library(dplyr)
library(forcats)

print(starwars %>% filter(species == "Droid"))
print(head(starwars %>% filter(!is.na(species))
           %>% count(species, sort = TRUE)))
