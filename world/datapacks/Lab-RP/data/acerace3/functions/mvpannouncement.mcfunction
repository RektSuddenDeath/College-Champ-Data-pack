
tellraw @a " "

execute as @a[scores={mvprank=1}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=1}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=1}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=1}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[scores={mvprank=2}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=2}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=2}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=2}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[scores={mvprank=3}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=3}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=3}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=3}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[scores={mvprank=4}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=4}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=4}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=4}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[scores={mvprank=5}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=5}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=5}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=5}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[scores={mvprank=6..}] run tellraw @s "……"
execute as @a[scores={mvprank=6..}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=6..}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".0",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=6..}] if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
execute as @a[scores={mvprank=6..}] if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": "    ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":0"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]

execute as @a[team=!spec,scores={mvprank=0}] run tellraw @s "……"
execute as @a[team=!spec,scores={mvprank=0}] run tellraw @s [{"text": ""},{"text": "N/A. "},{"selector":"@s"},{"text": "    DNF","color":"white"}]
tellraw @a " "

# Transcript

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> "," 本游戏个人积分："]
execute as @a[team=!spec] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "ar_indvscore","name":"@s"}}]

tellraw @a[tag=_transcript] ["  §bTranscript >> "," 各玩家完赛所用时间："]
execute as @a[scores={mvprank=1..}] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "ar_finaltime_min","name":"@s"}},{"text": ":"},{"score":{"objective": "ar_finaltime_sec","name":"@s"}},".",{"score":{"name": "@s","objective": "ar_finaltime_ms"}}]
tellraw @a[tag=_transcript] ["  §bTranscript >> "," DNF: ",{"selector":"@a[team=!spec,scores={mvprank=0}]"}]

