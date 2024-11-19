

execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_red] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_red"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:red_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_blue] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_blue"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:blue_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_green] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_green"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:green_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_yellow] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_yellow"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:yellow_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_cyan] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_cyan"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:cyan_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_pink] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_pink"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:pink_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_orange] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_orange"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:orange_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend,tag=team_purple] at @s run summon minecart ~ ~ ~ {Tags:["rrr_gold_rush_defend","team_purple"],Motion:[0.09d,0d,0d],CustomDisplayTile:true,DisplayState:{Name:"minecraft:purple_terracotta"},DisplayOffset:4,Invulnerable:1b,CustomNameVisible:true,CustomName:'"§a100%§7"',Passengers:[{id:"villager",Silent:1b,Tags:["rrr_gold_rush_defend"],NoAI:1b,Health:9999f,active_effects:[{id:"invisibility",amplifier:0b,duration:999999,show_particles:false}]}]}

execute as @e[type=villager,tag=rrr_gold_rush_defend] run attribute @s generic.max_health base set 9999.0
execute as @e[type=villager,tag=rrr_gold_rush_defend] run data modify entity @s Health set value 9999f

execute as @e[type=minecart,tag=rrr_gold_rush_defend] run scoreboard players set @s rrr_gold_rush_defend_power 4800

# Notif
tellraw @a ["§b[§f褿§b] §b采集挑战已开始！"]
# Summon Wave 1 Mobs
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~10 ~ ~-5
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~10 ~ ~-5
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~11 ~ ~6
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~22 ~ ~6
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~24 ~ ~-6
execute as @e[type=marker,tag=rrr_gold_rush_anchor_defend] at @s run summon zombie ~24 ~ ~-6

fill 89970 36 89830 89970 33 90002 air replace black_stained_glass

# Timer
scoreboard players set goldrush_timeleft rrr_game 1620

# Timebar
scoreboard players set time_bar_type rrr_game 2
scoreboard players set tick timebar 1600
scoreboard players set max timebar 1600