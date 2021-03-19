
echo "welcome"
spresent=1
randomcheck=$((RANDOM%2))
if [[ $ispresent -eq $randomcheck ]]
then
echo "employee present"
else
echo "employee absent"
fi
#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM


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
