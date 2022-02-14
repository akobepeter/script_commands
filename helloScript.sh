#! /usr/bin/bash

echo "Hello Peter keep learning"

echo "Hello Peter keep learning" > file.txt

cat > file.txt

# Append a text to the file
cat >> file.txt

# Single Line Comment
# this is a cat command

# MultipleLine Comment

: '
this is a cat command
this is a cat command
this is a cat command
this is a cat command
this is a cat command
this is a cat command
this is a cat command '


# Here Doc delimeter
cat << kreative
this is my story
add another line
kreative

# Conditional Statement

# If Statement
count=10
if [ $count -ne 9 ]
then
echo "condition is true"
fi


# If else Statement
count=10
if [ $count -ne 9 ]
then
echo "condition is true"
else
echo "condition is not true"
fi

# If-else if-else Statement
count=10
if [ $count -lt 9 ]
then
echo "condition is true"
elif [ $count -eq 10 ]
then
echo "condition stands"
else
echo "condition is not true"
fi


# AND Operator
age=30
if [ $age -gt 18 -a  $age -lt 40 ]
then
echo 'Age is correct'
else
echo 'Age is not correct'
fi  


# OR Operator
age=30
if [ $age -gt 18 -o  $age -gt 40 ]
then
echo 'Age is correct'
else
echo 'Age is not correct'
fi 


# Case Statement
car="Mercedes"
case $car in
   "BMW" )
   echo "It is BMW";;
   "Mercedes" )
    echo "It is mercedes";;
    "TOYOTA" )
    echo "It is toyota";;
    "HONDA" )
    echo "It is honda";;
     * )
     echo "unknown car";;
esac


# While loop
number=1
while [ $number -le 10 ]
do 
echo $number
number=$(( number+1 ))
done

# until loop
number=1
until [ $number -eq 10 ]
do 
echo $number
number=$(( number+1 ))
done

# for loop
names=" Peter kunle Aisha Sarah Yemi "
for name in $names
do
echo 'Hello ' $name
done

for i in {0..20..2} # {starting point,ending point,increment}
do
 echo $i
done

# break statement
for (( i=0; i<=10; i++ ))
do
 
 if [ $i -gt 5 ]
 then
 break
 fi
 echo $i
done 


# continue statement
for (( i=0; i<=10; i++ ))
do
 
 if [ $i -eq 3 ] || [ $i -eq 7 ]
 then
 continue
 fi
 echo $i
done 

# script input
echo 'well'
args=("$@")
echo ${args[0]}  ${args[1]}   ${args[2]} ${args[3]}
echo $@
echo $#


# script input
while read line
do
echo "$line"
done < "${1:-/dev/stdin}"

# script output
ls  -al 1>file1.txt  2>file2.txt
ls  +al 1>file3.txt 2>file4.txt

# standard commands
ls  +al >file1.txt 2>&1
ls  +al >& file1.txt

# send output from one script to another (pipes)
message="Hello Peter learning bash"
export message
./secondScript.sh

echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2


# Concatenation
c=$st1$st2
echo $c

# string processing
#lowercase
echo ${st1^} 
# uppercase
echo ${st1^^}


# Numbers and Arithmetic

n1=20
n2=4

# Arithmetic Operation
echo $(( n1 + n2 )) #or echo $(expr $n1 + $n2 )
echo $(( n1 - n2 ))
echo $(( n1 * n2 ))  #or echo $(expr $n1 /* $n2 )
echo $(( n1 / n2 ))
echo $(( n1 % n2 ))
echo $(( 30 + 21 ))


# Converting hexadecimal number to decimal

# echo  "Enter Hex number of your choice "
# read Hex

# echo -n "The decimal value of $Hex is: "
# echo "obase=10; ibase=16; $Hex" | bc 

echo $((16#FF))



# Declare a Command

declare -r pwdfile=/etc/passwd
echo $pwdfile

pwdfile=/etc/abc.txt

echo $pwdfile

# comparison strings 
if [ "$st1" == "$st2" ]
then
echo "strings match"
else
echo "strings does not match"
fi


# checking the length of two strings
if [ "$st1" \< "$st2" ]
then
echo "$st1 is  smaller than $st2"

elif [ "$st1" \> "$st2" ]
then
echo "$st2 is  smaller than $st1"

else
echo "strings are equal"
fi

# Array
cars=('BMW''Honda''Benz''Toyota');
echo $cars


# Functions

function sayHi(){
    echo 'Welcome'
}

sayHi

# Files and Directories
mkdir -p Directory2

# mkdir -p newfolder

echo "Enter directory name to check "
read directory

if [ -d "$directory" ]
then
echo "$directory exists"
else
echo "$directory doesn't exists"
fi


echo "Enter file name "
read fileName
touch $fileName

echo "Enter file name to check "
read fileName

if [ -f "$fileName" ]
then
echo "$fileName exists"
else
echo "$fileName doesn't exists"
fi

# Appending text in a file 
echo "Enter file name in which you want to append "
read fileName

if [ -f "$fileName" ]
then
echo "Enter the text that you want to append"
read fileText
echo "$fileText" >> $fileName
else
echo "$fileName doesn't exists"
fi


# Replacing a text in a file
echo "Enter file name in which you want to append "
read fileName

if [ -f "$fileName" ]
then
echo "Enter the text that you want to append"
read fileText
echo "$fileText" > $fileName
else
echo "$fileName doesn't exists"
fi

# Reading a text in a file
echo "Enter file name from which you want to read "
read fileName

if [ -f "$fileName" ]
then
while IFS= read -r line
do
echo "$line"
done < $fileName
else
echo "$fileName doesn't exists"
fi


# Removing a text in a file
echo "Enter file name from which you want to delete or remove "
read fileName

if [ -f "$fileName" ]
then
rm  $fileName
else
echo "$fileName doesn't exists"
fi


# Sending an email via script

# Professional menu
select car in BMW Mercedes Telsa Range Toyota
do
case $car in
     BMW)
     echo "BMW selected";;
     Mercedes)
     echo "Mercedes selected";;
     Telsa)
     echo "Telsa selected";;
     Range)
     echo "Range selected";;
     Toyota)
     echo "Toyota selected";;
     *)
     echo " Error Please select between 1 to 5";;
esac


echo "Please enter any key to continue"

while [ true ]
do
read -t 3 -n 1
if [ $? = 0 ]
then
echo "you have terminated the script"
exit;
else
echo "waiting for you to press the key sir " 
fi
done

done