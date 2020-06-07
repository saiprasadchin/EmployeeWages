#!/bin/bash -x
echo " Welcome to Employee Wage Computation Program"
echo
isPresent=1
isAbsent=0
attendance=$((RANDOM % 2))
if [ $attendance == 1 ];
then
	echo "Employee Present"
	empHours=8
else
	echo "Empolyee Absent"
	empHours=0
fi
echo "completed the first use case"
echo
echo
empRatePerHour=20
salary=$(($empHours * $empRatePerHour))
echo "Employe Day's salaryis:" $salary
echo "completed seconod use case"
echo
echo
isFullTime=1
isPartTime=2
attenDayWage=$((RANDOM % 3))

case $attenDayWage in
	$isFullTime)
				;;
	$isPartTime)
			empHours=4
			;;
	*)
			empHours=0
			;;
esac

salary=$(($empHours * $empRatePerHour))
echo "Salary :" $salary
echo "completed 3th and 4th use case"
echo
echo

totalWorkingDays=20
monthSalary=0
for (( i=0; i<=$totalWorkingDays; i++ ));

do
	attendance=$((RANDOM % 2))
	if [ $attendance == 1 ]
	then
			empHours=8
	else
			empHours=0
	fi
	monthSalary=$(($monthSalary + $empHours * $empRatePerHour))
done
echo "TOtal month's salary:" $monthSalary
echo "completed fifth use case"
echo
echo


hoursCrossed=0
daysCrossed=0
salary=0
days=0
totaHrs=101
totalDays=19
while [[ $hoursCrossed -lt $totaHrs && $days -lt $totalDays ]];
do
   attendance=$((RANDOM % 2))
   if [ $attendance  == 1 ];
   then
         empHours=8;
         let "hoursCrossed+=8";
   else
         empHours=0
   fi
	let "days+=1";
   salary=$(($salary + $empHours * $empRatePerHour))
done
echo "Salary till a condition is reached:" $salary
echo "Sixth use case completed"
echo
echo

totalHours=0
daysWorked=0
function getWorkHours(){
	while [[ $daysWorked -lt $totalDays ]];
	do
		attendance=$((RANDOM % 2))
		if [ $attendance == 1 ];
		then
			let "totalHours+=8";
		else
			empHours=0
		fi
	let "daysWorked+=1";
	done
}
getWorkHours
echo "Total Hours Worked :" $totalHours
echo "completed use case 7"
echo
echo


declare -A dailyWage
for (( i=0; i<$totalDays; i++))
do
   attendance=$(( RANDOM % 2 ))
   if [ $attendance == 1 ];
   then
      dailyWage[$i]=160
   else
      dailyWage[$i]=0
   fi
done
echo "Daily wage for day's attended :"${dailyWage[@]}
salary=0
for (( i=0; i<$totalDays; i++));
do
   salary=$(( $salary + ${dailyWage[$i]}))
done
echo "Total salary: " $salary
echo "completed use case 8"
echo
echo


declare -A dailyWage
for (( i=0; i<=$totalDays; i++))
do
	echo "Day: " $(($i + 1))
   attendance=$(( RANDOM % 2 ))
   if [ $attendance == 1 ];
   then
		echo "Present"
      dailyWage[$i]=160
   else
		echo "Absent"
      dailyWage[$i]=0
   fi
	echo "Wage:" ${dailyWage[$i]}
	echo
done
salary=0
for (( i=0; i<=$totalDays; i++));
do
   salary=$(( $salary + ${dailyWage[$i]}))
done
echo "Total salary: " $salary
echo "completed use case 9"
