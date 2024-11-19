
# Store the completed room in a temporary storage
scoreboard objectives add gr_postemp dummy
scoreboard objectives add gr_ranktemp dummy
kill @e[type=area_effect_cloud,tag=calctemp]
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_red","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_blue","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_green","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_yellow","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_cyan","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_orange","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_purple","calctemp"]}
summon area_effect_cloud 15000 100 15000 {Duration:999999,Tags:["gr_pink","calctemp"]}

scoreboard players set @e[type=area_effect_cloud,tag=calctemp] gr_ranktemp 0

scoreboard players operation @e[type=area_effect_cloud,tag=gr_red] gr_postemp = red gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_blue] gr_postemp = blue gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_green] gr_postemp = green gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_yellow] gr_postemp = yellow gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_cyan] gr_postemp = cyan gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_orange] gr_postemp = orange gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_pink] gr_postemp = pink gr_completeroom 
scoreboard players operation @e[type=area_effect_cloud,tag=gr_purple] gr_postemp = purple gr_completeroom 
# Rank it
scoreboard objectives add grCalcCache1 dummy
scoreboard players set Step grCalcCache1 1
function gr:scoreboard/calcp2
scoreboard objectives remove grCalcCache1
# 将各队对应到对应的占位符中，Repetitive
## red
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = red gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_red] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = red gr_completeroom
## blue
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = blue gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_blue] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = blue gr_completeroom
## green
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = green gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_green] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = green gr_completeroom
## yellow
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = yellow gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_yellow] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = yellow gr_completeroom
## cyan
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = cyan gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_cyan] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = cyan gr_completeroom
## orange
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = orange gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_orange] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = orange gr_completeroom
## pink
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = pink gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_pink] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = pink gr_completeroom
## purple
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 1 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=1}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 2 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=2}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 3 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=3}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 4 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=4}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 5 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=5}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 6 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=6}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 7 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=7}] gr_roomstorage = purple gr_completeroom
execute as @e[type=area_effect_cloud,tag=gr_purple] if score @s gr_ranktemp matches 8 run scoreboard players operation @e[type=area_effect_cloud,limit=1,tag=gr_posstorage,scores={gr_posstorage=8}] gr_roomstorage = purple gr_completeroom
# update
function gr:scoreboard/update
# cleanup
scoreboard objectives remove gr_postemp
scoreboard objectives remove gr_ranktemp