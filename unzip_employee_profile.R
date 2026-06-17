# ==========================================
# MODULE 2 ASSIGNMENT - R SCRIPT
# ==========================================

# STEP 1: UNZIP EMPLOYEE PROFILE ZIP FILE

zip_file <- "Employee_Profile.zip"

extract_folder <- "Employee Profile Extracted"

if(file.exists(zip_file)) {
  
  unzip(
    zipfile = zip_file,
    exdir = extract_folder
  )
  
  cat("ZIP file extracted successfully.\n\n")
  
} else {
  
  stop("ZIP file not found.")
  
}

# STEP 2: READ EXTRACTED CSV FILE

csv_file <- paste0(
  extract_folder,
  "/employee_profile.csv"
)

employee_data <- read.csv(csv_file)

# STEP 3: DISPLAY EMPLOYEE DATA

cat("Employee Data:\n\n")

print(employee_data)
