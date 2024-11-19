clear @a
effect give @a fire_resistance 25 0 true
execute as @a run attribute @s minecraft:generic.armor base set 0

scoreboard players set gameflag db_game 0
schedule clear dodgebolt:death
schedule clear dodgebolt:shrink/auto


stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
function master:sfx/dodgebolt
title @a times 0 60 10
title @a title [{"text":"回合结束！","color":"red","bold":true}]

tellraw @a ["[§6§lDodgebolt§r]: 本轮平局！ 双方均不得分。"]

scoreboard players reset §3 db_sb
scoreboard players set : db_sb 3

function master:timer/nextround/10s
schedule function dodgebolt:timecontrol 9s

schedule clear master:latejoinspec

tellraw @a[tag=_transcript] ["  §bTranscript >> §fThe round ended in a tie. Current series: ",{"score":{"name": "team1wins","objective": "db_game"}},":",{"score":{"name": "team2wins","objective": "db_game"}}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7ROUND_STARTS§f -> PRE_ROUND"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]


tellraw @a ["","§b[§r逌§b] 回合结束！"]