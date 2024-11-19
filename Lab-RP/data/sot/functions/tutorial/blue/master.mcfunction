
execute if score blue sot_tutorial_delay matches 0 run function sot:tutorial/blue/nextstage

execute if score blue sot_tutorial_stage matches 3 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/3
execute if score blue sot_tutorial_stage matches 3 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/3

execute if score blue sot_tutorial_stage matches 5 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/5
execute if score blue sot_tutorial_stage matches 5 if score blue sot_tutorial_delay matches -1 run tag @a[team=blue] remove sot_check_5
execute if score blue sot_tutorial_stage matches 5 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/5

execute if score blue sot_tutorial_stage matches 6 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/6
execute if score blue sot_tutorial_stage matches 6 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/6

execute if score blue sot_tutorial_stage matches 7 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/7
execute if score blue sot_tutorial_stage matches 7 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/7

execute if score blue sot_tutorial_stage matches 8 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/8
execute if score blue sot_tutorial_stage matches 8 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/8

execute if score blue sot_tutorial_stage matches 9 if score blue sot_tutorial_delay matches -1 run execute store result score blue sot_tutorial_success run function sot:tutorial/blue/check/9
execute if score blue sot_tutorial_stage matches 9 if score blue sot_tutorial_delay matches -1 if score blue sot_tutorial_success matches 1 run function sot:tutorial/blue/clear/9

execute if score tutorialActive SotGame matches 1 if score blue sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/blue/master 1t