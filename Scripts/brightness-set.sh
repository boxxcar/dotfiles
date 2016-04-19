if (acpi -bi | grep -q "Charging") 
then
   exec xbacklight -set 100

fi (acpi -bi | grep -q " Discharging")
then
   exec xbacklight -set 20

else
   exit