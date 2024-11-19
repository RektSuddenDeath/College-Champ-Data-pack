
execute if score purple sot_tutorial_delay matches 0 run function sot:tutorial/purple/nextstage

execute if score purple sot_tutorial_stage matches 3 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/3
execute if score purple sot_tutorial_stage matches 3 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/3

execute if score purple sot_tutorial_stage matches 5 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/5
execute if score purple sot_tutorial_stage matches 5 if score purple sot_tutorial_delay matches -1 run tag @a[team=purple] remove sot_check_5
execute if score purple sot_tutorial_stage matches 5 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/5

execute if score purple sot_tutorial_stage matches 6 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/6
execute if score purple sot_tutorial_stage matches 6 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/6

execute if score purple sot_tutorial_stage matches 7 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/7
execute if score purple sot_tutorial_stage matches 7 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/7

execute if score purple sot_tutorial_stage matches 8 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/8
execute if score purple sot_tutorial_stage matches 8 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/8

execute if score purple sot_tutorial_stage matches 9 if score purple sot_tutorial_delay matches -1 run execute store result score purple sot_tutorial_success run function sot:tutorial/purple/check/9
execute if score purple sot_tutorial_stage matches 9 if score purple sot_tutorial_delay matches -1 if score purple sot_tutorial_success matches 1 run function sot:tutorial/purple/clear/9

execute if score tutorialActive SotGame matches 1 if score purple sot_tutorial_stage matches 1..9 run schedule function sot:tutorial/purple/master 1t