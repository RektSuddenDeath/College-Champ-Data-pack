
# fx
execute as @a at @s run playsound sound.start record @s
title @a title ""
title @a subtitle ""

# Team Finished
scoreboard players set race_team_finished rrr_game 0

# Transfer
gamemode spectator @a
tag @a[team=!spec] add cam_locked
# Summon Minecarts
execute if entity @a[team=red] as @e[type=marker,tag=rrr_main_anchor,tag=team_red] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_red","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=blue] as @e[type=marker,tag=rrr_main_anchor,tag=team_blue] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_blue","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=green] as @e[type=marker,tag=rrr_main_anchor,tag=team_green] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_green","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=yellow] as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_yellow","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=cyan] as @e[type=marker,tag=rrr_main_anchor,tag=team_cyan] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_cyan","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=pink] as @e[type=marker,tag=rrr_main_anchor,tag=team_pink] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_pink","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=orange] as @e[type=marker,tag=rrr_main_anchor,tag=team_orange] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_orange","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if entity @a[team=purple] as @e[type=marker,tag=rrr_main_anchor,tag=team_purple] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","final","team_purple","no_explode"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}

# Summon Cam
execute if entity @a[team=red] run execute as @e[type=minecart,tag=final,tag=team_red] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_red"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=blue] run execute as @e[type=minecart,tag=final,tag=team_blue] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_blue"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=green] run execute as @e[type=minecart,tag=final,tag=team_green] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_green"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=yellow] run execute as @e[type=minecart,tag=final,tag=team_yellow] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_yellow"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=cyan] run execute as @e[type=minecart,tag=final,tag=team_cyan] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_cyan"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=pink] run execute as @e[type=minecart,tag=final,tag=team_pink] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_pink"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=orange] run execute as @e[type=minecart,tag=final,tag=team_orange] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_orange"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}
execute if entity @a[team=purple] run execute as @e[type=minecart,tag=final,tag=team_purple] at @s run summon armor_stand ~-5 ~5 ~ {Tags:["rrr_cam","team_purple"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f,45f]}

# Spectate
execute as @a[team=red] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_red,sort=nearest,limit=1]
execute as @a[team=blue] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_blue,sort=nearest,limit=1]
execute as @a[team=green] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_green,sort=nearest,limit=1]
execute as @a[team=yellow] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_yellow,sort=nearest,limit=1]
execute as @a[team=cyan] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_cyan,sort=nearest,limit=1]
execute as @a[team=pink] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_pink,sort=nearest,limit=1]
execute as @a[team=orange] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_orange,sort=nearest,limit=1]
execute as @a[team=purple] run spectate @e[type=armor_stand,tag=rrr_cam,tag=team_purple,sort=nearest,limit=1]


tellraw @a ""
tellraw @a ["§b[§r褿§b]"," §b如视角未跟随矿车移动，请按",{"text":" SHIFT ","color": "#E3E3E3"},"§b复位!"]
tellraw @a ""


function railroadrush:race/minecart_action
function railroadrush:cam/loop