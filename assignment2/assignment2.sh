#!/bin/bash
############################################
#### Justin Baum                        ####
#### 00426510                           ####
#### CSCE215 Patrick O'Keefe            ####
############################################

# Our absolute positioning
DIRECTORY="/usr/local/tmp/csce215/election2008"
EXTRACTDATADIR="/acct/jabaum/CSCE215/assignment2"

# Part 1.1
find $DIRECTORY -name "*.csv" -print

# Part 1.2
find $DIRECTORY/Jul -name "*.csv" -print

# Part 1.3
find $DIRECTORY/Aug -name "Aug0?.csv" -print 

# Part 1.4
find $DIRECTORY/Jul $DIRECTORY/Aug -name "*0?.csv" -print

# Part 1.5
find $DIRECTORY -name "Jan*.csv" -o -name "Feb*.csv" -o -name "Mar*.csv" -o -name "Apr*.csv" -o -name "May*.csv" -o -name "Jun*.csv" -o -name "Jul*.csv" -o -name "Aug0?.csv"

# Part 2

# Clean the file first
echo "" > $EXTRACTDATADIR/polls.csv

for file in $(find $DIRECTORY -name "*.csv")
do
    $EXTRACTDATADIR/extractdata.sh $file >> $EXTRACTDATADIR/polls.csv
done


# extractdata file
# head -n -1 $1 | tail -n 51
