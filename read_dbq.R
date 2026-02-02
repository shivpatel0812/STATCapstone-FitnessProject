library(haven)

tryCatch(
  {
    data <- read_xpt("DBQ_L (1).xpt")
    
    message("File loaded successfully.")
    message("Rows: ", nrow(data), " | Columns: ", ncol(data))
    
    print(head(data))
  },
  error = function(e) {
    message("Error: ", conditionMessage(e))
    message("File may be corrupted or in an unsupported format.")
    message("Try re-downloading the file or checking that it is a valid SAS .xpt file.")
  }
)

