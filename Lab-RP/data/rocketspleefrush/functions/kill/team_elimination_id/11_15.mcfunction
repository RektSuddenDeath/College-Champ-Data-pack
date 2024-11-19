
# Player Specific
###
execute if entity @s[scores={univ_pid=11}] run tellraw @p[advancements={utils:killed/11=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] times 0 60 10
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] title ""
execute if entity @s[scores={univ_pid=11}] run title @p[advancements={utils:killed/11=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=11}]"}]
execute if entity @s[scores={univ_pid=11}] run execute as @p[advancements={utils:killed/11=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=11}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=11}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/11=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=11}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/11=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=12}] run tellraw @p[advancements={utils:killed/12=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] times 0 60 10
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] title ""
execute if entity @s[scores={univ_pid=12}] run title @p[advancements={utils:killed/12=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=12}]"}]
execute if entity @s[scores={univ_pid=12}] run execute as @p[advancements={utils:killed/12=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=12}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=12}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/12=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=12}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/12=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=13}] run tellraw @p[advancements={utils:killed/13=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] times 0 60 10
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] title ""
execute if entity @s[scores={univ_pid=13}] run title @p[advancements={utils:killed/13=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=13}]"}]
execute if entity @s[scores={univ_pid=13}] run execute as @p[advancements={utils:killed/13=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=13}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=13}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/13=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=13}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/13=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=14}] run tellraw @p[advancements={utils:killed/14=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] times 0 60 10
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] title ""
execute if entity @s[scores={univ_pid=14}] run title @p[advancements={utils:killed/14=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=14}]"}]
execute if entity @s[scores={univ_pid=14}] run execute as @p[advancements={utils:killed/14=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=14}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=14}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/14=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=14}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/14=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=15}] run tellraw @p[advancements={utils:killed/15=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] times 0 60 10
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] title ""
execute if entity @s[scores={univ_pid=15}] run title @p[advancements={utils:killed/15=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=15}]"}]
execute if entity @s[scores={univ_pid=15}] run execute as @p[advancements={utils:killed/15=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=15}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=15}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/15=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=15}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/15=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats