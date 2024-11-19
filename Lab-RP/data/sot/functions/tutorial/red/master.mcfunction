
execute if score red sot_tutorial_delay matches 0 run function sot:tutorial/red/nextstage

execute if score red sot_tutorial_stage matches 3 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/3
execute if score red sot_tutorial_stage matches 3 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/3

execute if score red sot_tutorial_stage matches 5 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/5
execute if score red sot_tutorial_stage matches 5 if score red sot_tutorial_delay matches -1 run tag @a[team=red] remove sot_check_5
execute if score red sot_tutorial_stage matches 5 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/5

execute if score red sot_tutorial_stage matches 6 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/6
execute if score red sot_tutorial_stage matches 6 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/6

execute if score red sot_tutorial_stage matches 7 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/7
execute if score red sot_tutorial_stage matches 7 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/7

execute if score red sot_tutorial_stage matches 8 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/8
execute if score red sot_tutorial_stage matches 8 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/8

execute if score red sot_tutorial_stage matches 9 if score red sot_tutorial_delay matches -1 run execute store result score red sot_tutorial_success run function sot:tutorial/red/check/9
execute if score red sot_tutorial_stage matches 9 if score red sot_tutorial_delay matches -1 if score red sot_tutorial_success matches 1 run function sot:tutorial/red/clear/9

execute if score tutorialActive SotGame matches 1 if score red sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/red/master 1t