
# Player Specific
###
execute if entity @s[scores={univ_pid=1}] run tellraw @p[advancements={utils:killed/1=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] times 0 60 10
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] title ""
execute if entity @s[scores={univ_pid=1}] run title @p[advancements={utils:killed/1=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=1}]"}]
execute if entity @s[scores={univ_pid=1}] run execute as @p[advancements={utils:killed/1=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=1}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=1}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/1=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=1}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/1=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=2}] run tellraw @p[advancements={utils:killed/2=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] times 0 60 10
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] title ""
execute if entity @s[scores={univ_pid=2}] run title @p[advancements={utils:killed/2=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=2}]"}]
execute if entity @s[scores={univ_pid=2}] run execute as @p[advancements={utils:killed/2=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=2}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=2}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/2=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=2}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/2=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=3}] run tellraw @p[advancements={utils:killed/3=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] times 0 60 10
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] title ""
execute if entity @s[scores={univ_pid=3}] run title @p[advancements={utils:killed/3=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=3}]"}]
execute if entity @s[scores={univ_pid=3}] run execute as @p[advancements={utils:killed/3=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=3}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=3}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/3=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=3}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/3=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=4}] run tellraw @p[advancements={utils:killed/4=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] times 0 60 10
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] title ""
execute if entity @s[scores={univ_pid=4}] run title @p[advancements={utils:killed/4=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=4}]"}]
execute if entity @s[scores={univ_pid=4}] run execute as @p[advancements={utils:killed/4=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=4}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=4}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/4=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=4}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/4=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=5}] run tellraw @p[advancements={utils:killed/5=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] times 0 60 10
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] title ""
execute if entity @s[scores={univ_pid=5}] run title @p[advancements={utils:killed/5=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=5}]"}]
execute if entity @s[scores={univ_pid=5}] run execute as @p[advancements={utils:killed/5=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=5}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=5}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/5=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=5}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/5=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats