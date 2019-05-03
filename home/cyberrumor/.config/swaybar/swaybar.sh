#!/usr/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %I:%M %p")
        echo -n "$DATETIME"
}

# Define the battery
Battery() {
		CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
		echo -n "$CAPACITY"
}

# Define the volume
Volume() {
		LEVEL=$(amixer get Master | grep %)
		echo -n $LEVEL | cut -d ' ' -f 4
}


# Print the results
while true; do
        echo $(Clock) : volume = $(Volume) : battery = [$(Battery)%]
        sleep 1
done
