#!/bin/bash

if [ "$1" == "dept_new" ];then
	touch "$2.txt"
	echo "File $2.text created"
elif [ "$1" == "dept_del" ];then
	rm -r "$2.txt"
elif [ "$1" == "student_new" ];then
	name="$2"
	id="$3"
	dept="$4"
	if [ -e "$4.txt" ];then
		if grep -q "^$name $id " "$dept.txt";then
			echo "Student exists in $dept department"
		else
			echo "$name $id $dept" >> "$dept.txt"
			echo "Student added!"
		fi
	else
		echo "$dept department does not exist"
	fi
elif [ "$1" == "student_del" ];then
	identifier="$2"
	dep="$3"
	if  grep -q "^$identifier" "$dep.txt";then
		echo "Student Info succesfully deleted!"
	fi
		
		
	
fi		
