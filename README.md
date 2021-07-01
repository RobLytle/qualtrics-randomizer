# qualtrics-randomizer
tiny r package to randomize without replacement for qualtrics
 
Creates `nrow(df)` .CSV files of `nrow(df) - 1` rows each. Allows randomization without replacement in qualtrics by using the generated CSV files as embedded data.


```
library(devtools) 
install_github("RobLytle/qualtrics-randomizer")
```

