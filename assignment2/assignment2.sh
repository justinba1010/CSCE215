#!/bin/bash
############################################
#### Justin Baum                        ####
#### 00426510                           ####
#### CSCE215 Patrick O'Keefe            ####
############################################

# Our absolute positioning
DIRECTORY="/usr/local/tmp/csce215/election2008"
EXTRACTDATADIR="/acct/jabaum/assignment2"

# Part 1.1
echo -e  -e "Listing all .csv files."
echo -e  "###########################################\n"
find $DIRECTORY -name "*.csv"

# Part 1.2
echo -e  "\nListing all .csv files in the sub directory Jul/"
echo -e  "###########################################\n"
find $DIRECTORY/Jul -name "*.csv"

# Part 1.3
echo -e  "\nListing all .csv files for the first 9 days of August"
echo -e  "###########################################\n"
find $DIRECTORY/Aug -name "Aug0?.csv"

# Part 1.4
echo -e  "\nListing all .csv files for the first 9 days of August and July"
echo -e  "###########################################\n"
find $DIRECTORY/Jul $DIRECTORY/Aug -name "*0?.csv"

# Part 1.5
echo -e  "\nListing all .csv files that are dated before August 10th"
echo -e  "###########################################\n"
find $DIRECTORY/Aug -name "Aug0?.csv"

# Part 2
# Get headers from any file
head -n 2 $DIRECTORY/Aug/Aug01.csv > $EXTRACTDATADIR/polls.csv

for file in $(find $DIRECTORY -name "*.csv")
do
    $EXTRACTDATADIR/extractdata.sh $file >> $EXTRACTDATADIR/polls.csv
done


# extractdata file
# head -n -1 $1 | tail -n 51


# Part 2 no outside file

head -n 3 $DIRECTORY/Aug/Aug01.csv > $EXTRACTDATADIR/polls2.csv

for file in $(find $DIRECTORY -name "*.csv")
do
    head -n -1 $file | tail -n 51 >> $EXTRACTDATADIR/polls2.csv
done
