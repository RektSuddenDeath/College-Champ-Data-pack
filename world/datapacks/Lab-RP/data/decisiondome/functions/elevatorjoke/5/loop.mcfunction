
execute if block -9957 100 -10000 oak_button[powered=true] run function decisiondome:elevatorjoke/5/strikeinit
 execute if block -9957 100 -10000 oak_button[powered=true] run setblock -9957 100 -10000 air

 execute if score lobby tourney_stats matches 1 run schedule function decisiondome:elevatorjoke/5/loop 1t