
execute if score orange sot_tutorial_delay matches 0 run function sot:tutorial/orange/nextstage

execute if score orange sot_tutorial_stage matches 3 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/3
execute if score orange sot_tutorial_stage matches 3 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/3

execute if score orange sot_tutorial_stage matches 5 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/5
execute if score orange sot_tutorial_stage matches 5 if score orange sot_tutorial_delay matches -1 run tag @a[team=orange] remove sot_check_5
execute if score orange sot_tutorial_stage matches 5 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/5

execute if score orange sot_tutorial_stage matches 6 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/6
execute if score orange sot_tutorial_stage matches 6 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/6

execute if score orange sot_tutorial_stage matches 7 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/7
execute if score orange sot_tutorial_stage matches 7 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/7

execute if score orange sot_tutorial_stage matches 8 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/8
execute if score orange sot_tutorial_stage matches 8 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/8

execute if score orange sot_tutorial_stage matches 9 if score orange sot_tutorial_delay matches -1 run execute store result score orange sot_tutorial_success run function sot:tutorial/orange/check/9
execute if score orange sot_tutorial_stage matches 9 if score orange sot_tutorial_delay matches -1 if score orange sot_tutorial_success matches 1 run function sot:tutorial/orange/clear/9

execute if score tutorialActive SotGame matches 1 if score orange sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/orange/master 1t