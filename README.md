# getting-cleaning-data

<h3>Course 3 project - getting and cleaning data</h3>

<h4>Purpose of this project:</h4>
<p>
Demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.</p>
<p>
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
</p>

<h4>What has been done to the raw data set:</h4>
<p>
  The x, y and subject data sets from test and train folders are merged row-wise to create a single data set of subjects, activities and measurement data.Each of these data are then averaged group by subject and activity. The resulting data set contains six entries per subject, resulting in a unique entry per subject & activity.
</p>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

<h4>Here are the data for the project:</h4>

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

<p>You should create one R script called run_analysis.R that does the following.</p>
<ul><li>
1. Merges the training and the test sets to create one data set.</li>
<li>2. Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>3. Uses descriptive activity names to name the activities in the data set</li>
<li>4. Appropriately labels the data set with descriptive variable names.</li>
<li>5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  </li></ul>
