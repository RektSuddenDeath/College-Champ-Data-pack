
execute if score red sot_tutorial_delay matches 1.. run scoreboard players remove red sot_tutorial_delay 1
execute if score blue sot_tutorial_delay matches 1.. run scoreboard players remove blue sot_tutorial_delay 1
execute if score green sot_tutorial_delay matches 1.. run scoreboard players remove green sot_tutorial_delay 1
execute if score yellow sot_tutorial_delay matches 1.. run scoreboard players remove yellow sot_tutorial_delay 1
execute if score cyan sot_tutorial_delay matches 1.. run scoreboard players remove cyan sot_tutorial_delay 1
execute if score pink sot_tutorial_delay matches 1.. run scoreboard players remove pink sot_tutorial_delay 1
execute if score orange sot_tutorial_delay matches 1.. run scoreboard players remove orange sot_tutorial_delay 1
execute if score purple sot_tutorial_delay matches 1.. run scoreboard players remove purple sot_tutorial_delay 1

execute if score minute master.timer matches 0 if score second master.timer matches ..30 run function sot:tutorial/force_end
execute if score tutorialActive SotGame matches 1 run schedule function sot:tutorial/general_master 1t