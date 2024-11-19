gamemode spectator @s
clear @s
scoreboard players remove RedPlayers SotGame 1
scoreboard players add red SotEscaped 1
tag @s add sot_escaped

execute if score modifiers_sumo_warden SotGame matches 1 run tellraw @s ["§c[§r鼱§c] 你的金币暂时还不安全……"]
execute if score modifiers_sumo_warden SotGame matches 1 if score RedPlayers SotGame matches 0 run function sot:modifiers/sumo_warden/init/red
execute if score modifiers_sumo_warden SotGame matches 1 run return 1

scoreboard players operation red SotTeamBanked += @s SotPersonal
execute as @a[team=red] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
tellraw @a[team=red] ["§a[§r彀§a] ",{"selector":"@s","color":"red"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
scoreboard players set @s SotPersonal 0
execute if score RedPlayers SotGame matches 0 run tellraw @a[team=red] ["§a[§r彀§a] ",{"text": "你的队伍已全队逃出地牢！","color":"green","bold":true}]
execute if score RedPlayers SotGame matches 0 run tp @a[team=red,gamemode=spectator] 1522 102 1449 0 0
execute if score RedPlayers SotGame matches 0 run gamemode adventure @a[team=red,gamemode=spectator] 
execute if score RedPlayers SotGame matches 0 run scoreboard players set RedPlaying SotGame 0
execute if score RedPlayers SotGame matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> §f红队成功逃出了地牢!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

attribute @s generic.attack_damage base set -100

execute if score RedPlaying SotGame matches 0 run scoreboard players set red SotTeamTime -1
execute if score RedPlaying SotGame matches 0 run execute as @a[team=red] run attribute @s generic.attack_damage base set -100
execute if score RedPlaying SotGame matches 0 run tp @a[team=red,gamemode=spectator] 1522 102 1449 0 0
execute if score RedPlaying SotGame matches 0 run gamemode adventure @a[team=red,gamemode=spectator] 

# execute if score gameflag SotGame matches 1 run schedule function sot:escape/red 2t