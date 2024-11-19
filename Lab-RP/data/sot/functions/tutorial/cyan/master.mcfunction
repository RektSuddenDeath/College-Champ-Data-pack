
execute if score cyan sot_tutorial_delay matches 0 run function sot:tutorial/cyan/nextstage

execute if score cyan sot_tutorial_stage matches 3 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/3
execute if score cyan sot_tutorial_stage matches 3 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/3

execute if score cyan sot_tutorial_stage matches 5 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/5
execute if score cyan sot_tutorial_stage matches 5 if score cyan sot_tutorial_delay matches -1 run tag @a[team=cyan] remove sot_check_5
execute if score cyan sot_tutorial_stage matches 5 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/5

execute if score cyan sot_tutorial_stage matches 6 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/6
execute if score cyan sot_tutorial_stage matches 6 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/6

execute if score cyan sot_tutorial_stage matches 7 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/7
execute if score cyan sot_tutorial_stage matches 7 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/7

execute if score cyan sot_tutorial_stage matches 8 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/8
execute if score cyan sot_tutorial_stage matches 8 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/8

execute if score cyan sot_tutorial_stage matches 9 if score cyan sot_tutorial_delay matches -1 run execute store result score cyan sot_tutorial_success run function sot:tutorial/cyan/check/9
execute if score cyan sot_tutorial_stage matches 9 if score cyan sot_tutorial_delay matches -1 if score cyan sot_tutorial_success matches 1 run function sot:tutorial/cyan/clear/9

execute if score tutorialActive SotGame matches 1 if score cyan sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/cyan/master 1t