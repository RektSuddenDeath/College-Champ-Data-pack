

execute as @a[scores={mvprank=1}] run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
execute as @a[scores={mvprank=2}] run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
execute as @a[scores={mvprank=3}] run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
execute as @a[scores={mvprank=4}] run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
execute as @a[scores={mvprank=5}] run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
execute as @a[scores={mvprank=6..}] run tellraw @s "……"
execute as @a[scores={mvprank=6..}] run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]
tellraw @a " "

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> "," 本游戏个人积分："]
execute as @a[scores={mvprank=1..}] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "sba_indvscore","name":"@s"}},"    ",{"score":{"name": "@s","objective": "sba_gamekills"},"color": "gray"},{"text": "\ue017","font": "font:font"}]