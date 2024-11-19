


execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s positioned ~-500 ~ ~-500 run tp @a[team=red] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 run tp @a[team=blue] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~-500 ~ ~-500 run tp @a[team=green] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s positioned ~-500 ~ ~-500 run tp @a[team=yellow] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s positioned ~-500 ~ ~-500 run tp @a[team=cyan] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s positioned ~-500 ~ ~-500 run tp @a[team=orange] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=pink] at @s positioned ~-500 ~ ~-500 run tp @a[team=pink] ~482 -35 ~500 -90 0
execute as @e[type=area_effect_cloud,tag=SotCore,tag=purple] at @s positioned ~-500 ~ ~-500 run tp @a[team=purple] ~482 -35 ~500 -90 0

schedule function sot:tutorial/structure_init 5t

scoreboard objectives add sot_tutorial_stage dummy
scoreboard objectives add sot_tutorial_delay dummy
scoreboard objectives add sot_tutorial_success dummy

scoreboard players set red sot_tutorial_stage 0
scoreboard players set blue sot_tutorial_stage 0
scoreboard players set green sot_tutorial_stage 0
scoreboard players set yellow sot_tutorial_stage 0
scoreboard players set cyan sot_tutorial_stage 0
scoreboard players set pink sot_tutorial_stage 0
scoreboard players set orange sot_tutorial_stage 0
scoreboard players set purple sot_tutorial_stage 0

scoreboard players set red sot_tutorial_delay 0
scoreboard players set blue sot_tutorial_delay 0
scoreboard players set green sot_tutorial_delay 0
scoreboard players set yellow sot_tutorial_delay 0
scoreboard players set cyan sot_tutorial_delay 0
scoreboard players set pink sot_tutorial_delay 0
scoreboard players set orange sot_tutorial_delay 0
scoreboard players set purple sot_tutorial_delay 0

scoreboard players set red sot_tutorial_success 0
scoreboard players set blue sot_tutorial_success 0
scoreboard players set green sot_tutorial_success 0
scoreboard players set yellow sot_tutorial_success 0
scoreboard players set cyan sot_tutorial_success 0
scoreboard players set pink sot_tutorial_success 0
scoreboard players set orange sot_tutorial_success 0
scoreboard players set purple sot_tutorial_success 0

scoreboard players set tutorialActive SotGame 1

function sot:tutorial/general_master

execute if entity @a[team=red] run function sot:tutorial/red/master
execute if entity @a[team=blue] run function sot:tutorial/blue/master
execute if entity @a[team=green] run function sot:tutorial/green/master
execute if entity @a[team=yellow] run function sot:tutorial/yellow/master
execute if entity @a[team=cyan] run function sot:tutorial/cyan/master
execute if entity @a[team=orange] run function sot:tutorial/orange/master
execute if entity @a[team=pink] run function sot:tutorial/pink/master
execute if entity @a[team=purple] run function sot:tutorial/purple/master


# Tutorial Timer
scoreboard players set time_bar_active tourney_stats 1

bossbar add sot_tutorial_timer ""
bossbar set sot_tutorial_timer players @a
bossbar set sot_tutorial_timer visible true
bossbar set sot_tutorial_timer color pink

scoreboard players set tick timebar 2400
scoreboard players set max timebar 2400

function master:timer/bar/tick
function sot:tutorial/loop