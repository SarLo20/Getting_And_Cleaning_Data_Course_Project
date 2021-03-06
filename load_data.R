## set working directory
wd <- "/home/sarah/R/Getting_And_Cleaning_Data_Course_Project/UCI HAR Dataset"

## load the data into R
allFiles <- list.files(path = wd)
activity_labels <- read.table(paste0(wd, "/", allFiles[1]))
features <- read.table(paste0(wd, "/", allFiles[3]))
subject_test <- read.table(paste0(wd, "/", allFiles[5], "/subject_test.txt"))
X_test <- read.table(paste0(wd, "/", allFiles[5], "/X_test.txt"))
y_test <- read.table(paste0(wd, "/", allFiles[5], "/y_test.txt"))
subject_train <- read.table(paste0(wd, "/", allFiles[6], "/subject_train.txt"))
X_train <- read.table(paste0(wd, "/", allFiles[6], "/X_train.txt"))
y_train <- read.table(paste0(wd, "/", allFiles[6], "/y_train.txt"))

## not necessary
# body_acc_x_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_acc_x_test.txt"))
# body_acc_y_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_acc_y_test.txt"))
# body_acc_z_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_acc_z_test.txt"))
# body_gyro_x_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_gyro_x_test.txt"))
# body_gyro_y_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_gyro_y_test.txt"))
# body_gyro_z_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/body_gyro_z_test.txt"))
# total_acc_x_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/total_acc_x_test.txt"))
# total_acc_y_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/total_acc_y_test.txt"))
# total_acc_z_test <- read.table(paste0(wd, "/", allFiles[5], "/Inertial Signals/total_acc_z_test.txt"))
# body_acc_x_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_acc_x_train.txt"))
# body_acc_y_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_acc_y_train.txt"))
# body_acc_z_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_acc_z_train.txt"))
# body_gyro_x_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_gyro_x_train.txt"))
# body_gyro_y_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_gyro_y_train.txt"))
# body_gyro_z_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/body_gyro_z_train.txt"))
# total_acc_x_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/total_acc_x_train.txt"))
# total_acc_y_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/total_acc_y_train.txt"))
# total_acc_z_train <- read.table(paste0(wd, "/", allFiles[6], "/Inertial Signals/total_acc_z_train.txt"))
