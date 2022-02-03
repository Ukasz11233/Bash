#!/bin/bash

. functions.sh

num1=$(dialog --title "Inputbox" --inputbox "NUMBER1" 10 20 --stdout)
end $? $$

num2=$(dialog --title "Inputbox" --inputbox "NUMBER2" 10 20 --stdout)
end $? $$


result=$(dialog --title "MENU $num1 $num2" --menu "MENU" 30 20 5 \
	1 "+" \
	2 "-" \
	3 "*" \
	4 "/" \
	--stdout
	) 

end $? $$

case "$result" in
	"1") result=$(dod $num1 $num2) ;;
	"2") result=$(ode $num1 $num2) ;;
	"3") result=$(mno $num1 $num2) ;;
	"4") result=$(dzi $num1 $num2) ;;
esac

dialog --title "Result" --msgbox "$result" 10 20
clear

