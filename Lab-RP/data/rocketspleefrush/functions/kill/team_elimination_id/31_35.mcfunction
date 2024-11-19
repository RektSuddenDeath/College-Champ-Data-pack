
# Player Specific
###
execute if entity @s[scores={univ_pid=31}] run tellraw @p[advancements={utils:killed/31=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=31}] run execute as @p[advancements={utils:killed/31=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=31}] run title @p[advancements={utils:killed/31=true}] times 0 60 10
execute if entity @s[scores={univ_pid=31}] run title @p[advancements={utils:killed/31=true}] title ""
execute if entity @s[scores={univ_pid=31}] run title @p[advancements={utils:killed/31=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=31}]"}]
execute if entity @s[scores={univ_pid=31}] run execute as @p[advancements={utils:killed/31=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=31}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=31}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/31=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=31}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/31=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=32}] run tellraw @p[advancements={utils:killed/32=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=32}] run execute as @p[advancements={utils:killed/32=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=32}] run title @p[advancements={utils:killed/32=true}] times 0 60 10
execute if entity @s[scores={univ_pid=32}] run title @p[advancements={utils:killed/32=true}] title ""
execute if entity @s[scores={univ_pid=32}] run title @p[advancements={utils:killed/32=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=32}]"}]
execute if entity @s[scores={univ_pid=32}] run execute as @p[advancements={utils:killed/32=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=32}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=32}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/32=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=32}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/32=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=33}] run tellraw @p[advancements={utils:killed/33=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=33}] run execute as @p[advancements={utils:killed/33=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=33}] run title @p[advancements={utils:killed/33=true}] times 0 60 10
execute if entity @s[scores={univ_pid=33}] run title @p[advancements={utils:killed/33=true}] title ""
execute if entity @s[scores={univ_pid=33}] run title @p[advancements={utils:killed/33=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=33}]"}]
execute if entity @s[scores={univ_pid=33}] run execute as @p[advancements={utils:killed/33=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=33}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=33}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/33=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=33}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/33=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=34}] run tellraw @p[advancements={utils:killed/34=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=34}] run execute as @p[advancements={utils:killed/34=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=34}] run title @p[advancements={utils:killed/34=true}] times 0 60 10
execute if entity @s[scores={univ_pid=34}] run title @p[advancements={utils:killed/34=true}] title ""
execute if entity @s[scores={univ_pid=34}] run title @p[advancements={utils:killed/34=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=34}]"}]
execute if entity @s[scores={univ_pid=34}] run execute as @p[advancements={utils:killed/34=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=34}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=34}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/34=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=34}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/34=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=35}] run tellraw @p[advancements={utils:killed/35=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=35}] run execute as @p[advancements={utils:killed/35=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=35}] run title @p[advancements={utils:killed/35=true}] times 0 60 10
execute if entity @s[scores={univ_pid=35}] run title @p[advancements={utils:killed/35=true}] title ""
execute if entity @s[scores={univ_pid=35}] run title @p[advancements={utils:killed/35=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=35}]"}]
execute if entity @s[scores={univ_pid=35}] run execute as @p[advancements={utils:killed/35=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=35}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=35}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/35=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=35}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/35=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats