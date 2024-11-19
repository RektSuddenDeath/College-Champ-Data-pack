
scoreboard players add second _transcript 1
execute if score second _transcript matches 60 run scoreboard players add minute _transcript 1
execute if score second _transcript matches 60 run scoreboard players set second _transcript 0

execute if score minute _transcript matches 60 run scoreboard players add hour _transcript 1
execute if score minute _transcript matches 60 run scoreboard players set minute _transcript 0

execute if score second _transcript matches 0..9 run scoreboard players set second_padding _transcript 0
execute if score second _transcript matches 10..59 run scoreboard players reset second_padding _transcript

execute if score minute _transcript matches 0..9 run scoreboard players set minute_padding _transcript 0
execute if score minute _transcript matches 10..59 run scoreboard players reset minute_padding _transcript

# Format :
# "  §bTranscript >> ",
# tellraw @a[tag=_transcript] ["  §bTranscript >> §f"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# ," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"
schedule function master:transcript/sec 1s

# tellraw @a[tag=_transcript] ["  §bTranscript >> §f红队成功逃出了地牢!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]