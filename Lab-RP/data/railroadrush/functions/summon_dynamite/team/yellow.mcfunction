
execute if score yellow rrr_checkpoint_reached matches -1.. as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon minecart ~7 116 ~20 {Tags:["rrr_minecart","dynamite","team_yellow"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if score yellow rrr_checkpoint_reached matches 1.. as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon minecart ~137 120 ~20 {Tags:["rrr_minecart","dynamite","team_yellow"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if score yellow rrr_checkpoint_reached matches 2.. as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon minecart ~237 120 ~20 {Tags:["rrr_minecart","dynamite","team_yellow"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}
execute if score yellow rrr_checkpoint_reached matches 3.. as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon minecart ~337 120 ~20 {Tags:["rrr_minecart","dynamite","team_yellow"],Motion:[0.4d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a||||||||||||||||||||§7"',Passengers:[{id:"marker",Tags:["minecart_occupier"]}]}