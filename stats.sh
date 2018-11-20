#!/bin/bash
diskused=$(df -h | grep "/dev/sda1" | awk '{print $5}' )
memfree=$(free -mh | grep Mem: | awk '{print $7}' )
connections=$( netstat | grep tcp )
users=$( who )
echo -en "This is a snapshot of your current system:

              \e[104mLight      Disk used: $diskused
                    
               \e[105mLight     Free Menory: $memfree
                    
                 \e[106mLight   Logged in users: $users
                    
 Open Internet connections: 
 $connections
 "
 
 echo "
 colar info:
 http://misk.flogisoft.com/bash/tip_colors_and_formatting
 http://wiki.bash-hackers.org/scripting/style
 http://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
 "
