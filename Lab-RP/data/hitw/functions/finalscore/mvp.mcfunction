
schedule clear hitw:finalscore/mvpdecision

execute as @a[scores={mvprank=1}] run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
execute as @a[scores={mvprank=2}] run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
execute as @a[scores={mvprank=3}] run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
execute as @a[scores={mvprank=4}] run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
execute as @a[scores={mvprank=5}] run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
execute as @a[scores={mvprank=6..}] run tellraw @s "……"
execute as @a[scores={mvprank=6..}] run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}},"    ",{"score":{"objective": "hitw_game_dodged","name":"@s"},"color": "gray"},{"text": "\ue016","font":"font:font"}]
tellraw @a " "

# Clear out arena
fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air

kill @e[type=minecraft:armor_stand,tag=north]
kill @e[type=minecraft:armor_stand,tag=west]
kill @e[type=minecraft:armor_stand,tag=south]
kill @e[type=minecraft:armor_stand,tag=east]

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> "," 本游戏个人积分："]
execute as @a[scores={mvprank=1..}] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "hitw_indvscore","name":"@s"}}]