#!/bin/bash
echo "Welcome to Employee Wage Computation Program on Master Branch"

IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0
totalWorkHours=0
#Declaring dictionary
declare -A dayWiseWages
function calculateDailyWage()
{
 empHrs=$1
 daySalary=$(( $empHrs * $EMP_RATE_PER_HR ))
 echo $daySalary
}
function getWorkingHours()
{
 case $1 in
 $IS_FULL_TIME ) empHrs=8
 ;;
 $IS_PART_TIME ) empHrs=4
 ;;
 *) empHrs=0
<<<<<<< HEAD
<<<<<<< HEAD
esac
echo "Employee hours: $empHrs"
salary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo "Salary: $salary"
=======
=======
 ;;
>>>>>>> UC-7-Get-workhours
 esac
 echo $empHrs
}
while(( $totalWorkHours < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
 ((totalWorkingDays++))
 #Calling function getWorkingHours by passing random number
 workHours="$( getWorkingHours $(( RANDOM%3 )) )"
 echo "Work hours from function getWorkingHours()::::::::::>>> $workHours "
 totalWorkHours=$(( $totalWorkHours + $workHours ))
 echo -e "TotalWorkHours: $totalWorkHours\n"
 #Using array to store day-wise salary
 empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
 #Using dictionary to store day-wise salary
 dayWiseWages[$totalWorkingDays]="$(calculateDailyWage $workHours)"
done
<<<<<<< HEAD
totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR))
echo "Total Salary: $totalSalary"

>>>>>>> UC-5-Wages-foramonth
=======
totalSalary=$(( $totalWorkHours * $EMP_RATE_PER_HR ));
echo -e "\n::::::::::::Printing Days from array::::::"
echo ${!empDailyWage[@]}
echo -e "\n::::::::::::Printing salary stored day wise in an array:::::::::::::::"
echo ${empDailyWage[@]}
echo -e "\n::::::::::::Printing Days from dictionary::::::"
echo ${!dayWiseWages[@]}
echo -e "\n::::::::::::Printing salary stored day wise in dictionary:::::::::::::::"
echo ${dayWiseWages[@]}
echo "Total salary: $totalSalary"
>>>>>>> UC-7-Get-workhours
