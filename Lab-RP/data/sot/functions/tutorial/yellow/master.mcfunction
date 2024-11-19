
execute if score yellow sot_tutorial_delay matches 0 run function sot:tutorial/yellow/nextstage

execute if score yellow sot_tutorial_stage matches 3 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/3
execute if score yellow sot_tutorial_stage matches 3 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/3

execute if score yellow sot_tutorial_stage matches 5 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/5
execute if score yellow sot_tutorial_stage matches 5 if score yellow sot_tutorial_delay matches -1 run tag @a[team=yellow] remove sot_check_5
execute if score yellow sot_tutorial_stage matches 5 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/5

execute if score yellow sot_tutorial_stage matches 6 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/6
execute if score yellow sot_tutorial_stage matches 6 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/6

execute if score yellow sot_tutorial_stage matches 7 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/7
execute if score yellow sot_tutorial_stage matches 7 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/7

execute if score yellow sot_tutorial_stage matches 8 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/8
execute if score yellow sot_tutorial_stage matches 8 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/8

execute if score yellow sot_tutorial_stage matches 9 if score yellow sot_tutorial_delay matches -1 run execute store result score yellow sot_tutorial_success run function sot:tutorial/yellow/check/9
execute if score yellow sot_tutorial_stage matches 9 if score yellow sot_tutorial_delay matches -1 if score yellow sot_tutorial_success matches 1 run function sot:tutorial/yellow/clear/9

execute if score tutorialActive SotGame matches 1 if score yellow sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/yellow/master 1t