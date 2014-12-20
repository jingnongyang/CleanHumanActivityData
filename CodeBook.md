### Introduction

This repository contains tidied dataset based on Human Activity Recognition Using Smartphones Dataset. The original raw dataset and a full description can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Explanation of Original Dataset

The original experiments made measurements of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz. The measurements were pre-processed by dividing into windows of 2.56 sec with 50% overlap (128 readings/window), applying low-pass filtering, and some being further processed by a Fast Fourier Transform (FFT). The original data set contains results of transforms such as mean(), std(), min(), max(), etc., on each window of measurements. 

### Transforms Performed on Original Dataset

We grabbed variables of mean() and std() from the original dataset, and grouped these by subject and activity, then calculated average of the variables of each group.

Note that the original dataset contains variables named as gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, 
tBodyGyroJerkMean. These are only intermediate variables used to calculate angle(), therefore, we do not include them in the final tidy dataset.

### Explanation of Tidied Dataset

Each row is the average of all windowed mean and standard deviation of all measurements for one subject and one activity.

### Variables in the Tidied Dataset

1. Subject: An identifier of the subject (person) who carried out the experiment.
2. Activity: one of six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying).
3. tBodyAcc_mean_X: mean of body acceleration from accelerometer X axis.
4. tBodyAcc_mean_Y: mean of body acceleration from accelerometer Y axis.
5. tBodyAcc_mean_Z: mean of body acceleration from accelerometer Z axis.
6. tBodyAcc_std_X: std of body acceleration from accelerometer X axis.
7. tBodyAcc_std_Y: std of body acceleration from accelerometer Y axis.
8. tBodyAcc_std_Z: std of body acceleration from accelerometer Z axis.
9. tGravityAcc_mean_X: mean of gravitational acceleration from accelerometer X axis.
10. tGravityAcc_mean_Y: mean of gravitational acceleration from accelerometer Y axis.
11. tGravityAcc_mean_Z: mean of gravitational acceleration from accelerometer Z axis.
12. tGravityAcc_std_X: std of gravitational acceleration from accelerometer X axis.
13. tGravityAcc_std_Y: std of gravitational acceleration from accelerometer Y axis.
14. tGravityAcc_std_Z: std of gravitational acceleration from accelerometer Z axis.
15. tBodyAccJerk_mean_X: mean of body acceleration Jerk signal from accelerometer X axis.
16. tBodyAccJerk_mean_Y: mean of body acceleration Jerk signal from accelerometer Y axis.
17. tBodyAccJerk_mean_Z: mean of body acceleration Jerk signal from accelerometer Z axis.
18. tBodyAccJerk_std_X: std of body acceleration Jerk signal from accelerometer X axis.
19. tBodyAccJerk_std_Y: std of body acceleration Jerk signal from accelerometer Y axis.
20. tBodyAccJerk_std_Z: std of body acceleration Jerk signal from accelerometer Z axis.
21. tBodyGyro_mean_X: mean of body angular velocity from the gyroscope X axis.
22. tBodyGyro_mean_Y: mean of body angular velocity from the gyroscope Y axis.
23. tBodyGyro_mean_Z: mean of body angular velocity from the gyroscope Z axis.
24. tBodyGyro_std_X: std of body angular velocity from the gyroscope X axis.
25. tBodyGyro_std_Y: std of body angular velocity from the gyroscope Y axis.
26. tBodyGyro_std_Z: std of body angular velocity from the gyroscope Z axis.
27. tBodyGyroJerk_mean_X: mean of body angular velocity Jerk signal from the gyroscope X axis.
28. tBodyGyroJerk_mean_Y: mean of body angular velocity Jerk signal from the gyroscope Y axis.
29. tBodyGyroJerk_mean_Z: mean of body angular velocity Jerk signal from the gyroscope Z axis.
30. tBodyGyroJerk_std_X: std of body angular velocity Jerk signal from the gyroscope X axis.
31. tBodyGyroJerk_std_Y: std of body angular velocity Jerk signal from the gyroscope Y axis.
32. tBodyGyroJerk_std_Z: std of body angular velocity Jerk signal from the gyroscope Z axis.
33. tBodyAccMag_mean: mean of magnitude of body acceleration from accelerometer.
34. tBodyAccMag_std: std of magnitude of body acceleration from accelerometer.
35. tGravityAccMag_mean: mean of magnitude of gravitational acceleration from accelerometer.
36. tGravityAccMag_std: std of magnitude of gravitational acceleration from accelerometer.
37. tBodyAccJerkMag_mean: mean of magnitude of body acceleration Jerk signal from accelerometer.
38. tBodyAccJerkMag_std: std of magnitude of body acceleration Jerk signal from accelerometer.
39. tBodyGyroMag_mean: mean of magnitude of body angular velocity from the gyroscope.
40. tBodyGyroMag_std: std of magnitude of body angular velocity from the gyroscope.
41. tBodyGyroJerkMag_mean: mean of magnitude of body angular velocity Jerk signal from the gyroscope.
42. tBodyGyroJerkMag_std: std of magnitude of body angular velocity Jerk signal from the gyroscope.
43. fBodyAcc_mean_X: mean of FFT of body acceleration from accelerometer X axis.
44. fBodyAcc_mean_Y: mean of FFT of body acceleration from accelerometer Y axis.
45. fBodyAcc_mean_Z: mean of FFT of body acceleration from accelerometer Z axis.
46. fBodyAcc_std_X: std of FFT of body acceleration from accelerometer X axis.
47. fBodyAcc_std_Y: std of FFT of body acceleration from accelerometer Y axis.
48. fBodyAcc_std_Z: std of FFT of body acceleration from accelerometer Z axis.
49. fBodyAccJerk_mean_X: mean of FFT of body acceleration Jerk signal from accelerometer X axis.
50. fBodyAccJerk_mean_Y: mean of FFT of body acceleration Jerk signal from accelerometer Y axis.
51. fBodyAccJerk_mean_Z: mean of FFT of body acceleration Jerk signal from accelerometer Z axis.
52. fBodyAccJerk_std_X: std of FFT of body acceleration Jerk signal from accelerometer X axis.
53. fBodyAccJerk_std_Y: std of FFT of body acceleration Jerk signal from accelerometer Y axis.
54. fBodyAccJerk_std_Z: std of FFT of body acceleration Jerk signal from accelerometer Z axis.
55. fBodyGyro_mean_X: mean of FFT of body angular velocity from the gyroscope X axis.
56. fBodyGyro_mean_Y: mean of FFT of body angular velocity from the gyroscope Y axis.
57. fBodyGyro_mean_Z: mean of FFT of body angular velocity from the gyroscope Z axis.
58. fBodyGyro_std_X: std of FFT of body angular velocity from the gyroscope X axis.
59. fBodyGyro_std_Y: std of FFT of body angular velocity from the gyroscope Y axis.
60. fBodyGyro_std_Z: std of FFT of body angular velocity from the gyroscope Z axis.
61. fBodyAccMag_mean: mean of FFT of body acceleration magnitude from accelerometer.
62. fBodyAccMag_std: std of FFT of body acceleration magnitude from accelerometer.
63. fBodyBodyAccJerkMag_mean: mean of FFT of magnitude of body acceleration Jerk signal from accelerometer.
64. fBodyBodyAccJerkMag_std: std of FFT of magnitude of body acceleration Jerk signal from accelerometer.
65. fBodyBodyGyroMag_mean: mean of FFT of magnitude of body angular velocity from the gyroscope.
66. fBodyBodyGyroMag_std: std of FFT of magnitude of body angular velocity from the gyroscope.
67. fBodyBodyGyroJerkMag_mean: mean of FFT of magnitude of body angular velocity Jerk signal from the gyroscope.
68. fBodyBodyGyroJerkMag_std: std of FFT of magnitude of body angular velocity Jerk signal from the gyroscope.

