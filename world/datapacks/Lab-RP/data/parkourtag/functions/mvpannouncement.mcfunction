
schedule clear parkourtag:mvpdecision


execute as @a[scores={mvprank=1}] run tellraw @a [{"text":""},{"text": "1. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
execute as @a[scores={mvprank=2}] run tellraw @a [{"text":""},{"text": "2. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
execute as @a[scores={mvprank=3}] run tellraw @a [{"text":""},{"text": "3. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
execute as @a[scores={mvprank=4}] run tellraw @a [{"text":""},{"text": "4. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
execute as @a[scores={mvprank=5}] run tellraw @a [{"text":""},{"text": "5. ","color":"white"},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
execute as @a[scores={mvprank=6..}] run tellraw @s "……"
execute as @a[scores={mvprank=6..}] run tellraw @s [{"text": ""},{"score":{"objective": "mvprank","name": "@s"}},{"text": ". "},{"selector":"@s"},{"text": ": ","color":"white"},{"score":{"objective": "pkt_indvscore","name":"@s"}}]
tellraw @a " "
