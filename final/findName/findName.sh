# Justin Baum
# 21 November 2018
# Patrick O'Keefe
# CSCE215

if [ "$#" -ne 1 ]; then
	echo "Illegal number of parameters"
	exit
fi

FILE=/acct/common/CSCE215-Fall18
STUDENT_ID=$1

for line in $(cat $FILE); do 
	LINE_ID=$(echo $line | cut -d',' -f4)
	if [ "$LINE_ID" = "$STUDENT_ID" ]; then
		FIRST=$(echo $line | cut -d',' -f1)
		LAST=$(echo $line | cut -d ',' -f3)
		MI=$(echo $line | cut -d ',' -f2)
		echo $FIRST $MI  $LAST
		F="true"
	fi
done;

if [ -z $F ]; then
	echo "User is not in CSCE215 this semester or doesn't exist."
fi

