
scoreboard objectives add temp_dd_random_tool dummy
execute as @a[team=!spec] store result score @s temp_dd_random_tool run random value 1..11

execute as @a[team=!spec,scores={temp_dd_random_tool=1}] run function decisiondome:tools/distribute/1
execute as @a[team=!spec,scores={temp_dd_random_tool=2..3}] run function decisiondome:tools/distribute/2
execute as @a[team=!spec,scores={temp_dd_random_tool=4}] run function decisiondome:tools/distribute/5
execute as @a[team=!spec,scores={temp_dd_random_tool=5}] run function decisiondome:tools/distribute/6
execute as @a[team=!spec,scores={temp_dd_random_tool=6..8}] run function decisiondome:tools/distribute/7
execute as @a[team=!spec,scores={temp_dd_random_tool=9..10}] run function decisiondome:tools/distribute/9
execute as @a[team=!spec,scores={temp_dd_random_tool=11}] run function decisiondome:tools/distribute/10

scoreboard objectives remove temp_dd_random_tool