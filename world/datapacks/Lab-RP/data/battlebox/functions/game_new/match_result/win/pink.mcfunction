


# Turn blocks solid if game is still active
execute if score gameflag bb_game matches 1 as @e[type=marker,tag=bb_pinkanchor] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 pink_concrete

# General
clear @a[team=pink,tag=!bb_noclear]
clear @a[team=pink] #wool
execute as @a[team=pink] run attribute @s generic.attack_damage base set -100
effect give @a[team=pink] resistance 10000 4 true
scoreboard players add completed bb_game 1
scoreboard players add pink bb_wins 1
scoreboard players set pinkwin bb_cache 1
title @a[team=pink] times 10 60 10
title @a[team=pink] title [{"text": "你赢了！","color": "green","bold": true}]
execute as @a[team=pink] at @s run playsound minecraft:sound.majoracquire record @s ~ ~ ~ 1
execute as @a[team=pink] at @s run playsound minecraft:sound.bigcoins record @s ~ ~ ~ 1

execute store result storage bb:scb_tmp wins int 1 run scoreboard players get pink bb_wins
execute store result storage bb:scb_tmp round int 1 run scoreboard players get round bb_game
data modify storage bb:scb_tmp team set value "pink"

function battlebox:game_new/match_result/macro_scbline with storage bb:scb_tmp

# Make enemy lose
$function battlebox:game_new/match_result/lose/$(pink)

# Splits Points according to Team players
scoreboard players operation @a[team=pink] bb_indvscore += SplitWin bb_stats 
tellraw @a[team=pink] ["[§6+",{"score":{"name": "SplitWin","objective": "bb_stats"},"color": "gold"},"§6分§r] ","§a[§r彀§a] ",{"text": "你的队伍赢下了本局！干得漂亮！","color": "green","bold": true}]

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"translate":"team.pink"},"§f占领了中心点！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Remix Component
execute if entity @a[team=pink,tag=p.score_tweak_win] run tellraw @a[team=pink] "[§6+10分§f] 回合获胜！" 
execute if entity @a[team=pink,tag=p.score_tweak_win] run scoreboard players add @a[team=pink] bb_indvscore 10