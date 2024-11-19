
# WARNING, THIS LOOP IS ALWAYS ENABLED.

## Teleport 
title @a[x=-9971,y=99,z=-10002,dx=4,dz=4,dy=4,team=!spec,scores={chaos_control_tp_delay=..0}] times 2 10 8
title @a[x=-9971,y=99,z=-10002,dx=4,dz=4,dy=4,team=!spec,scores={chaos_control_tp_delay=..0}] title {"text": "\ue011","font": "font:font"}
title @a[x=-9971,y=99,z=-10002,dx=4,dz=4,dy=4,team=!spec,scores={chaos_control_tp_delay=..0}] subtitle ""
scoreboard players set @a[x=-9971,y=99,z=-10002,dx=4,dz=4,dy=4,team=!spec,scores={chaos_control_tp_delay=..0}] chaos_control_tp_delay 5

scoreboard players remove @a chaos_control_tp_delay 1

tp @a[team=red,scores={chaos_control_tp_delay=1}] -10200 147 -10200 -90 0
tp @a[team=blue,scores={chaos_control_tp_delay=1}] -10200 124 -10200 -90 0
tp @a[team=green,scores={chaos_control_tp_delay=1}] -10200 101 -10200 -90 0
tp @a[team=yellow,scores={chaos_control_tp_delay=1}] -10200 78 -10200 -90 0
tp @a[team=cyan,scores={chaos_control_tp_delay=1}] -10200 55 -10200 -90 0
tp @a[team=pink,scores={chaos_control_tp_delay=1}] -10200 32 -10200 -90 0
tp @a[team=orange,scores={chaos_control_tp_delay=1}] -10200 9 -10200 -90 0
tp @a[team=purple,scores={chaos_control_tp_delay=1}] -10200 -12 -10200 -90 0

schedule function decisiondome:elevatorjoke/chaos/loop 1t