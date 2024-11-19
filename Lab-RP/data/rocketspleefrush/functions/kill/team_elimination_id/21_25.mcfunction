
# Player Specific
###
execute if entity @s[scores={univ_pid=21}] run tellraw @p[advancements={utils:killed/21=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] times 0 60 10
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] title ""
execute if entity @s[scores={univ_pid=21}] run title @p[advancements={utils:killed/21=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=21}]"}]
execute if entity @s[scores={univ_pid=21}] run execute as @p[advancements={utils:killed/21=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=21}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=21}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/21=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=21}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/21=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=22}] run tellraw @p[advancements={utils:killed/22=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] times 0 60 10
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] title ""
execute if entity @s[scores={univ_pid=22}] run title @p[advancements={utils:killed/22=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=22}]"}]
execute if entity @s[scores={univ_pid=22}] run execute as @p[advancements={utils:killed/22=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=22}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=22}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/22=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=22}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/22=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=23}] run tellraw @p[advancements={utils:killed/23=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] times 0 60 10
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] title ""
execute if entity @s[scores={univ_pid=23}] run title @p[advancements={utils:killed/23=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=23}]"}]
execute if entity @s[scores={univ_pid=23}] run execute as @p[advancements={utils:killed/23=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=23}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=23}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/23=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=23}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/23=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=24}] run tellraw @p[advancements={utils:killed/24=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] times 0 60 10
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] title ""
execute if entity @s[scores={univ_pid=24}] run title @p[advancements={utils:killed/24=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=24}]"}]
execute if entity @s[scores={univ_pid=24}] run execute as @p[advancements={utils:killed/24=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=24}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=24}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/24=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=24}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/24=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=25}] run tellraw @p[advancements={utils:killed/25=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] times 0 60 10
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] title ""
execute if entity @s[scores={univ_pid=25}] run title @p[advancements={utils:killed/25=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=25}]"}]
execute if entity @s[scores={univ_pid=25}] run execute as @p[advancements={utils:killed/25=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=25}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=25}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/25=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=25}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/25=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats