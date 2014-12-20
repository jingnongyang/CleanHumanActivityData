### Introduction

This repository contains the average of windowed mean and standard deviation on human activity measurements for each combination of subject and activity.

### Explanation of Files

This project contains the following files.

1. run_analysis.R: the R script that performs cleaning of data. The script is supposed to run at the directory right above the test and train directories.
2. features_mean_std.txt: contains the tidied names of variables.
3. Averaged_Activity.txt: contains the tidied dataset. For definition of each column, please refer to CodeBook.md, section "Variables in the Tidied Dataset".
4. CodeBook.md: explanation of original dataset, tidied dataset, and transforms performed on the data.
5. README.md: this current file.

### How the Repository Works

The first step in run_analysis.R is to read data from the "test" directory and the "train" directory, and combine them into one dataset by calling rbind.

Then the script searches features.txt for names that include mean() or std(). These are the variables that we will calculate an average.

Next step taken is to extract the corresponding columns from the original data set, and prepend it with a column of subject ID and a column of descriptive activity labels.

Next, the dataset is grouped by combination of subject and activity, and mean of all variables is calculated for each group. The result is assigned to a new independent tidy data set called Tidied_average.

Finally, the tidy dataset is written into a file called Averaged_Activity.txt. To read the data file into R and verify the result, use the following command: read.table("Averaged_Activity.txt", header=TRUE)


