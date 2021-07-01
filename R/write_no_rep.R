library(tidyverse)


write_no_rep <- function(df, path){
	
	for (i in df$name){

		loop_df <- filter(df, i != name)
		write_csv2(loop_df,
							 paste0(path,
							 			 i,
							 			 ".csv"))
	}
	
	print(paste0("Wrote ", nrow(df), " files with ", nrow(df) - 1, " rows each in ", path))
	
}


