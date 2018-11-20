#!/bin/bash
diskused=$(df -h | grep "/dev/sdal"/ | awk '{print $5}' )
memfree=$(free -mh | grep | Mem: awk '{print $7}' )
connections=$( netstat | grep tcp )
users=$( who )
echo "This is a snapshot of your current system:

                    Disk used: $diskused
                    
                    Free Menory: $memfree
                    
                    Logged in users: $users
                    
 Open Internet connections: 
 $connections
 "
 
 echo "
 colar info:
 http://misk.flogisoft.com/bash/tip_colors_and_formatting
 http://wiki.bash-hackers.org/scripting/style
 http://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
 "
