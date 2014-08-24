# Coursera: Data Science Track: Getting and Cleaning Data
# Peer Assessment

# Source:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# You should create one R script called run_analysis.R that does the following:

# 1. ==========
# Merges the training and the test sets to create one data set.

setwd('/Users/phildow/Coursera/Data Analysis/Data Track/2.data/peer-assignment/UCI HAR Dataset')

# Acquire headers for the data set

feature_names = read.table('features.txt')
head(feature_names)

# Read in files and confirm input

test_x = read.table('test/X_test.txt')
head(test_x)
dim(test_x)

test_y = scan('test/Y_test.txt')
head(test_y)
length(test_y)

test_subjects = scan('test/subject_test.txt')
head(test_subjects)
length(test_subjects)

if ( length(test_y) != length(test_subjects) || length(test_y) != dim(test_x)[1] ) {
  stop('dimensions of test data set inputs do not match')
}

train_x = read.table('train/X_train.txt')
head(train_x)
dim(train_x)

train_y = scan('train/Y_train.txt')
head(train_y)
length(train_y)

train_subjects = scan('train/subject_train.txt')
head(train_subjects)
length(train_subjects)
