
# Player Specific
###
execute if entity @s[scores={univ_pid=26}] run tellraw @p[advancements={utils:killed/26=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] times 0 60 10
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] title ""
execute if entity @s[scores={univ_pid=26}] run title @p[advancements={utils:killed/26=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=26}]"}]
execute if entity @s[scores={univ_pid=26}] run execute as @p[advancements={utils:killed/26=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=26}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=26}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/26=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=26}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/26=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=27}] run tellraw @p[advancements={utils:killed/27=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] times 0 60 10
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] title ""
execute if entity @s[scores={univ_pid=27}] run title @p[advancements={utils:killed/27=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=27}]"}]
execute if entity @s[scores={univ_pid=27}] run execute as @p[advancements={utils:killed/27=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=27}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=27}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/27=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=27}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/27=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=28}] run tellraw @p[advancements={utils:killed/28=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] times 0 60 10
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] title ""
execute if entity @s[scores={univ_pid=28}] run title @p[advancements={utils:killed/28=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=28}]"}]
execute if entity @s[scores={univ_pid=28}] run execute as @p[advancements={utils:killed/28=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=28}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=28}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/28=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=28}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/28=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=29}] run tellraw @p[advancements={utils:killed/29=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] times 0 60 10
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] title ""
execute if entity @s[scores={univ_pid=29}] run title @p[advancements={utils:killed/29=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=29}]"}]
execute if entity @s[scores={univ_pid=29}] run execute as @p[advancements={utils:killed/29=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=29}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=29}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/29=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=29}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/29=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=30}] run tellraw @p[advancements={utils:killed/30=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] times 0 60 10
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] title ""
execute if entity @s[scores={univ_pid=30}] run title @p[advancements={utils:killed/30=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=30}]"}]
execute if entity @s[scores={univ_pid=30}] run execute as @p[advancements={utils:killed/30=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=30}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=30}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/30=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=30}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/30=true}]"},"§7淘汰！"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats