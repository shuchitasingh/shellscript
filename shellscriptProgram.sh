
echo "welcome"
spresent=1
randomcheck=$((RANDOM%2))
if [[ $ispresent -eq $randomcheck ]]
then
echo "employee present"
else
echo "employee absent"
fi




WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2

fullTimeHr=8
partTimeHr=4


randomCheck=$((1+RANDOM%2))
if [ $ISFULLTIME -eq $randomCheck ]
then
	dailyWage=$(($fullTimeHr * $WAGE_PER_HR))
	echo "Daily Wage of a Fulltime Employee is $dailyWage"
elif [ $ISPARTTIME -eq $randomCheck ]
then
	dailyWage1=$(($partTimeHr * $WAGE_PER_HR))
	echo "Daily Wage of a Parttime Employee is $dailyWage1"
fi






WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2


fullTimeHr=8
partTimeHr=4


randomCheck=$((1+RANDOM%2))
case $randomCheck in
	$ISFULLTIME)
		fullTimeSalary=$(($fullTimeHr * $WAGE_PER_HR))
		echo "Employee's Fulltime salary is $fullTimeSalary"
		;;
	$ISPARTTIME)
		partTimeSalary=$(($partTimeHr * $WAGE_PER_HR))
		echo "Employee's Parttime salary is $partTimeSalary"
		;;
	*)
esac



WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20

#VARIABLE
totalSalary=0

#CHECKS DAILYWAGE FOR FULLTIME AND PARTTIME USING CASE
for (( day=1; day<=$WORKINGDAYS; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
salary=$(($empHrs*$WAGE_PER_HR))
totalSalary=$(($totalSalary+$salary))
done
echo "Total salary of an employee in month is $totalSalary"






WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20
WORK_HR_IN_MONTH=100


totalEmpHr=0
totalWorkingDays=0


while [[ $totalEmpHr -lt $WORK_HR_IN_MONTH &&
			$totalWorkingDays -lt $WORKINGDAYS ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$WAGE_PER_HR))
echo "Total employee hr in a month is $totalEmpHr"
echo "Total Salary is $totalSalary"



WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20
WORK_HR_IN_MONTH=100


totalEmpHr=0
totalWorkingDays=0


function getWorkHours() {
	case $1 in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}


while [[ $totalWorkingHr -lt $WORK_HR_IN_MONTH &&
         $totalWorkingDays -lt $WORKINGDAYS ]]
do
	randomCheck=$((RANDOM%3))
	((totalWorkingDays++))
	empHrs=$( getWorkHours $randomCheck )
	totalWorkingHr=$(($totalWorkingHr+$empHrs))
done
totalSalary=$(($totalWorkingHr*$WAGE_PER_HR))
echo "Total Working employee hr in a month is $totalWorkingHr"
echo "Total Salary is $totalSalary"




WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20
WORK_HR_IN_MONTH=100


totalEmpHr=0
totalWorkingDays=0


function getWorkHours() {
	case $1 in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}


function calculateDailyWage() {
local empHrs=$1
wage=$(($empHrs*$WAGE_PER_HR))
echo $wage
}


while [[ $totalWorkingHr -lt $WORK_HR_IN_MONTH &&
         $totalWorkingDays -lt $WORKINGDAYS ]]
do
	randomCheck=$((RANDOM%3))
	((totalWorkingDays++))
	empHrs=$( getWorkHours $randomCheck )
	totalWorkingHr=$(($totalWorkingHr+$empHrs))


	dailyWage[$totalWorkingDays]=$( calculateDailyWage $empHrs )
done
totalSalary=$(($totalWorkingHr*$WAGE_PER_HR))
echo "Total Working employee hr in a month is $totalWorkingHr"
echo "Total Salary is $totalSalary"
echo "Daily Wage is ${dailyWage[@]} "



WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20
WORK_HR_IN_MONTH=100


totalEmpHr=0
totalWorkingDays=0


function getWorkHours() {
	case $1 in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}


function calculateDailyWage() {
local empHrs=$1
wage=$(($empHrs*$WAGE_PER_HR))
echo $wage
}


while [[ $totalWorkingHr -lt $WORK_HR_IN_MONTH &&
         $totalWorkingDays -lt $WORKINGDAYS ]]
do
	randomCheck=$((RANDOM%3))
	((totalWorkingDays++))
	empHrs=$( getWorkHours $randomCheck )
	totalWorkingHr=$(($totalWorkingHr+$empHrs))


	dailyWage[$totalWorkingDays]=$( calculateDailyWage $empHrs )
done
totalSalary=$( calculateDailyWage $totalWorkingHr )
echo "Daily Wage is ${dailyWage[@]} "
echo "All key ${!dailyWage[@]} "
