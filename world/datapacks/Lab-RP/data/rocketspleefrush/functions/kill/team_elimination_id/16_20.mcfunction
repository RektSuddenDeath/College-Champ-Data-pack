
# Player Specific
###
execute if entity @s[scores={univ_pid=16}] run tellraw @p[advancements={utils:killed/16=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] times 0 60 10
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] title ""
execute if entity @s[scores={univ_pid=16}] run title @p[advancements={utils:killed/16=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=16}]"}]
execute if entity @s[scores={univ_pid=16}] run execute as @p[advancements={utils:killed/16=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=16}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=16}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/16=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=16}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/16=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=17}] run tellraw @p[advancements={utils:killed/17=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] times 0 60 10
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] title ""
execute if entity @s[scores={univ_pid=17}] run title @p[advancements={utils:killed/17=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=17}]"}]
execute if entity @s[scores={univ_pid=17}] run execute as @p[advancements={utils:killed/17=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=17}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=17}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/17=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=17}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/17=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=18}] run tellraw @p[advancements={utils:killed/18=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] times 0 60 10
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] title ""
execute if entity @s[scores={univ_pid=18}] run title @p[advancements={utils:killed/18=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=18}]"}]
execute if entity @s[scores={univ_pid=18}] run execute as @p[advancements={utils:killed/18=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=18}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=18}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/18=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=18}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/18=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=19}] run tellraw @p[advancements={utils:killed/19=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] times 0 60 10
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] title ""
execute if entity @s[scores={univ_pid=19}] run title @p[advancements={utils:killed/19=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=19}]"}]
execute if entity @s[scores={univ_pid=19}] run execute as @p[advancements={utils:killed/19=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=19}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=19}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/19=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=19}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/19=true}]"},"§7淘汰！$(ally_kill_message)"]
###
###
execute if entity @s[scores={univ_pid=20}] run tellraw @p[advancements={utils:killed/20=true}] ["","§f[§a⚔§f] ","§c你淘汰了你的队友 ",{"selector":"@s"}," §c! 有空跟他道个歉？"]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] run scoreboard players add @s rsr_round_ally_kills 1
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] times 0 60 10
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] title ""
execute if entity @s[scores={univ_pid=20}] run title @p[advancements={utils:killed/20=true}] subtitle ["","§f[§a⚔§f] ",{"selector": "@a[scores={univ_pid=20}]"}]
execute if entity @s[scores={univ_pid=20}] run execute as @p[advancements={utils:killed/20=true}] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
execute if entity @s[scores={univ_pid=20}] run execute as @a[team=!spec,gamemode=adventure] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 
$execute if entity @s[scores={univ_pid=20}] run tellraw @a[gamemode=!adventure] ["","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/20=true}]"},"§7淘汰！$(ally_kill_message)"]
$execute if entity @s[scores={univ_pid=20}] run tellraw @a[gamemode=adventure] ["",{"text": "[§6+"},{"score":{"name": "survival","objective": "rsr_stats"},"color": "gold"},{"text":"分","color": "gold"},"] ","§7[§r楒§7] ",{"selector":"@s"},"§7被队友",{"selector":"@p[advancements={utils:killed/20=true}]"},"§7淘汰！$(ally_kill_message)"]
###
# Universal
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_indvscore += survival rsr_stats
scoreboard players operation @a[team=!spec,gamemode=adventure] rsr_roundscore += survival rsr_stats