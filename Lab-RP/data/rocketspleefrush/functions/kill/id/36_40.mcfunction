
# Player Specific
###
execute if entity @s[scores={univ_pid=36}] run tellraw @p[advancements={utils:killed/36=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] times 0 60 10
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] title ""
execute if entity @s[scores={univ_pid=36}] run title @p[advancements={utils:killed/36=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=36}]"}]
execute if entity @s[scores={univ_pid=36}] run execute as @p[advancements={utils:killed/36=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=36}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=36}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/36=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=36}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/36=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=37}] run tellraw @p[advancements={utils:killed/37=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] times 0 60 10
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] title ""
execute if entity @s[scores={univ_pid=37}] run title @p[advancements={utils:killed/37=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=37}]"}]
execute if entity @s[scores={univ_pid=37}] run execute as @p[advancements={utils:killed/37=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=37}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=37}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/37=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=37}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/37=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=38}] run tellraw @p[advancements={utils:killed/38=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] times 0 60 10
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] title ""
execute if entity @s[scores={univ_pid=38}] run title @p[advancements={utils:killed/38=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=38}]"}]
execute if entity @s[scores={univ_pid=38}] run execute as @p[advancements={utils:killed/38=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=38}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=38}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/38=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=38}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/38=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=39}] run tellraw @p[advancements={utils:killed/39=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] times 0 60 10
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] title ""
execute if entity @s[scores={univ_pid=39}] run title @p[advancements={utils:killed/39=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=39}]"}]
execute if entity @s[scores={univ_pid=39}] run execute as @p[advancements={utils:killed/39=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=39}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=39}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/39=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=39}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/39=true}]"},"§7淘汰！"]
###
###
execute if entity @s[scores={univ_pid=40}] run tellraw @p[advancements={utils:killed/40=true}] ["",{"text": "[§6+"},{"score":{"name": "kill","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§f[§a⚔§f] ",{"text":"你淘汰了"},{"selector":"@s"},"!"]
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players operation @s rsr_indvscore += kill rsr_stats
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players operation @s rsr_roundscore += kill rsr_stats
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] run scoreboard players add @s rsr_roundkills 1
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] times 0 60 10
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] title ""
execute if entity @s[scores={univ_pid=40}] run title @p[advancements={utils:killed/40=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=40}]"}]
execute if entity @s[scores={univ_pid=40}] run execute as @p[advancements={utils:killed/40=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=40}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
execute if entity @s[scores={univ_pid=40}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/40=true}]"},"§7淘汰！"]
execute if entity @s[scores={univ_pid=40}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被",{"selector":"@p[advancements={utils:killed/40=true}]"},"§7淘汰！"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats