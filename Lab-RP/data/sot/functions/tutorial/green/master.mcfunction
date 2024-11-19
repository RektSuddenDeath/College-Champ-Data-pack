
execute if score green sot_tutorial_delay matches 0 run function sot:tutorial/green/nextstage

execute if score green sot_tutorial_stage matches 3 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/3
execute if score green sot_tutorial_stage matches 3 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/3

execute if score green sot_tutorial_stage matches 5 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/5
execute if score green sot_tutorial_stage matches 5 if score green sot_tutorial_delay matches -1 run tag @a[team=green] remove sot_check_5
execute if score green sot_tutorial_stage matches 5 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/5

execute if score green sot_tutorial_stage matches 6 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/6
execute if score green sot_tutorial_stage matches 6 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/6

execute if score green sot_tutorial_stage matches 7 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/7
execute if score green sot_tutorial_stage matches 7 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/7

execute if score green sot_tutorial_stage matches 8 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/8
execute if score green sot_tutorial_stage matches 8 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/8

execute if score green sot_tutorial_stage matches 9 if score green sot_tutorial_delay matches -1 run execute store result score green sot_tutorial_success run function sot:tutorial/green/check/9
execute if score green sot_tutorial_stage matches 9 if score green sot_tutorial_delay matches -1 if score green sot_tutorial_success matches 1 run function sot:tutorial/green/clear/9

execute if score tutorialActive SotGame matches 1 if score green sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/green/master 1t