
execute if score pink sot_tutorial_delay matches 0 run function sot:tutorial/pink/nextstage

execute if score pink sot_tutorial_stage matches 3 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/3
execute if score pink sot_tutorial_stage matches 3 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/3

execute if score pink sot_tutorial_stage matches 5 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/5
execute if score pink sot_tutorial_stage matches 5 if score pink sot_tutorial_delay matches -1 run tag @a[team=pink] remove sot_check_5
execute if score pink sot_tutorial_stage matches 5 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/5

execute if score pink sot_tutorial_stage matches 6 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/6
execute if score pink sot_tutorial_stage matches 6 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/6

execute if score pink sot_tutorial_stage matches 7 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/7
execute if score pink sot_tutorial_stage matches 7 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/7

execute if score pink sot_tutorial_stage matches 8 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/8
execute if score pink sot_tutorial_stage matches 8 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/8

execute if score pink sot_tutorial_stage matches 9 if score pink sot_tutorial_delay matches -1 run execute store result score pink sot_tutorial_success run function sot:tutorial/pink/check/9
execute if score pink sot_tutorial_stage matches 9 if score pink sot_tutorial_delay matches -1 if score pink sot_tutorial_success matches 1 run function sot:tutorial/pink/clear/9

execute if score tutorialActive SotGame matches 1 if score pink sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/pink/master 1t