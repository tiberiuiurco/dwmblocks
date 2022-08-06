#!/usr/bin/bash

# Execute command "cmus-remote -C status" and get the second word of the first line and put it in "status" variable
status=$(cmus-remote -C status | awk 'NR==1{print $2}')

# If status is "playing"
if [ "$status" = "playing" ]; then
    status_text=""
elif [ "$status" = "paused" ]; then
    status_text=""
elif [ "$status" = "stopped" ]; then
    status_text=""
fi

# file=$(cmus-remote -C status | awk -F/ 'NR==2{print $NF}')
# # Get only the first 10 characters of "file"
# # file=$(echo $file | cut -c1-10)
# # filter "file" with sed so that any brackets are removed
# file=$(echo $file | sed 's/[(「『【】』」)]/ /g')

# # Get everything until '.'
# file=$(echo $file | cut -d'.' -f1)


total_time=$(cmus-remote -C status | awk 'NR==3{print $NF}')
current_time=$(cmus-remote -C status | awk 'NR==4{print $NF}')

# total_time is number of seconds. Format it as mm:ss
total_time=$(echo $total_time | awk '{printf "%d:%02d", $1/60, $1%60}')
# current_time is number of seconds. Format it as mm:ss
current_time=$(echo $current_time | awk '{printf "%d:%02d", $1/60, $1%60}')

# Echo $status_text+" "+file 
# echo "$status_text $file [$current_time/$total_time]"
echo "$status_text [$current_time/$total_time]"

exit 0;
