library(tidyverse)


test_df <- tibble(name = c("John Doe", "Jane Doe", "Alfred Hitchcock", "Thomas Edison"),
								#	name_2 = c("John Doe", "Jane Doe", "Alfred Hitchcock", "Thomas Edison"),
								#	y = c(1, 2, 3, 4)
								)


write_no_rep <- function(df, path){
	
	for (i in df$name){

		loop_df <- filter(df, i != name)
		write_csv2(loop_df,
							 paste0(path,
							 			 i,
							 			 ".csv"))
	}
	
	print(paste0("Wrote ", nrow(df), " files with ", nrow(df) - 1, " rows each"))
	
}

write_no_rep(test_df, "data/names-test/func-test/")





for (i in test_df$name){
	#name_1 <- filter(test_df, name_1 != name_2)
#	loop_df <- filter(test_df, i != name_2)
	loop_df <- filter(test_df, i != name)
#	print(loop_df$name)
	write_csv2(loop_df,
						 paste0("data/names-test/",
						 			 i,
						 			 ".csv"))
}

print(paste0("Wrote ", nrow(test_df), " files with ", nrow(test_df) - 1, " rows each"))
