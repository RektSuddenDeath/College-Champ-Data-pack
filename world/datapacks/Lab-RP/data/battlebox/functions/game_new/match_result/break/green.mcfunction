
# Switch mode
gamemode spectator @a[team=green]

# General
clear @a[team=green,tag=!bb_noclear]
clear @a[team=green] #wool
execute as @a[team=green] run attribute @s generic.attack_damage base set -100
effect give @a[team=green] resistance 10000 4 true

scoreboard players add green bb_wins 1
scoreboard players set greenwin bb_cache 1
execute as @a[team=green] at @s run playsound minecraft:sound.majoracquire record @s ~ ~ ~ 1
execute as @a[team=green] at @s run playsound minecraft:sound.bigcoins record @s ~ ~ ~ 1

execute store result storage bb:scb_tmp wins int 1 run scoreboard players get green bb_wins
execute store result storage bb:scb_tmp round int 1 run scoreboard players get round bb_game
data modify storage bb:scb_tmp team set value "green"

function battlebox:game_new/match_result/macro_scbline with storage bb:scb_tmp


# Splits Points according to Team players
scoreboard players operation @a[team=green] bb_indvscore += SplitWin bb_stats
tellraw @a[team=green] ["§e[§r獍§e] ","§e你的队伍本回合轮空！"]
tellraw @a[team=green] ["[§6+",{"score":{"name": "SplitWin","objective": "bb_stats"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ","§a轮空！"]

title @a[team=green] subtitle "§b轮空！"
# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"translate":"team.green"},"§f轮空！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Remix Component
execute if entity @a[team=green,tag=p.score_tweak_win] run tellraw @a[team=green] "[§6+10分§f] 回合获胜！" 
execute if entity @a[team=green,tag=p.score_tweak_win] run scoreboard players add @a[team=green] bb_indvscore 10
