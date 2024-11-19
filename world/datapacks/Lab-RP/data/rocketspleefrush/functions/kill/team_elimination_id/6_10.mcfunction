
# Player Specific
###
execute if entity @s[scores={univ_pid=6}] run tellraw @p[advancements={utils:killed/6=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] times 0 60 10
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] title ""
execute if entity @s[scores={univ_pid=6}] run title @p[advancements={utils:killed/6=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=6}]"}]
execute if entity @s[scores={univ_pid=6}] run execute as @p[advancements={utils:killed/6=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=6}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=6}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/6=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=6}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/6=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=7}] run tellraw @p[advancements={utils:killed/7=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] times 0 60 10
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] title ""
execute if entity @s[scores={univ_pid=7}] run title @p[advancements={utils:killed/7=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=7}]"}]
execute if entity @s[scores={univ_pid=7}] run execute as @p[advancements={utils:killed/7=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=7}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=7}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/7=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=7}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/7=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=8}] run tellraw @p[advancements={utils:killed/8=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] times 0 60 10
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] title ""
execute if entity @s[scores={univ_pid=8}] run title @p[advancements={utils:killed/8=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=8}]"}]
execute if entity @s[scores={univ_pid=8}] run execute as @p[advancements={utils:killed/8=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=8}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=8}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/8=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=8}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/8=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=9}] run tellraw @p[advancements={utils:killed/9=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] times 0 60 10
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] title ""
execute if entity @s[scores={univ_pid=9}] run title @p[advancements={utils:killed/9=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=9}]"}]
execute if entity @s[scores={univ_pid=9}] run execute as @p[advancements={utils:killed/9=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=9}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=9}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/9=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=9}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/9=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=10}] run tellraw @p[advancements={utils:killed/10=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] times 0 60 10
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] title ""
execute if entity @s[scores={univ_pid=10}] run title @p[advancements={utils:killed/10=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=10}]"}]
execute if entity @s[scores={univ_pid=10}] run execute as @p[advancements={utils:killed/10=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=10}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=10}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/10=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=10}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/10=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats