
execute as @a[scores={sg_teampos=1}] run tellraw @s ["[","§6+",{"score":{"name": "pos1","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第一名！"]
execute as @a[scores={sg_teampos=2}] run tellraw @s ["[","§6+",{"score":{"name": "pos2","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第二名！"]
execute as @a[scores={sg_teampos=3}] run tellraw @s ["[","§6+",{"score":{"name": "pos3","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第三名！"]
execute as @a[scores={sg_teampos=4}] run tellraw @s ["[","§6+",{"score":{"name": "pos4","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第四名！"]
execute as @a[scores={sg_teampos=5}] run tellraw @s ["[","§6+",{"score":{"name": "pos5","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第五名！"]
execute as @a[scores={sg_teampos=6}] run tellraw @s ["[","§6+",{"score":{"name": "pos6","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第六名！"]
execute as @a[scores={sg_teampos=7}] run tellraw @s ["[","§6+",{"score":{"name": "pos7","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第七名！"]
execute as @a[scores={sg_teampos=8}] run tellraw @s ["[","§6+",{"score":{"name": "pos8","objective": "sg_stats"},"color": "gold"},"§6分§r] ","§a§l你的团队是第八名！"]

execute as @a[scores={sg_teampos=1}] run scoreboard players operation @s sg_indvscore += pos1 sg_stats
execute as @a[scores={sg_teampos=2}] run scoreboard players operation @s sg_indvscore += pos2 sg_stats
execute as @a[scores={sg_teampos=3}] run scoreboard players operation @s sg_indvscore += pos3 sg_stats
execute as @a[scores={sg_teampos=4}] run scoreboard players operation @s sg_indvscore += pos4 sg_stats
execute as @a[scores={sg_teampos=5}] run scoreboard players operation @s sg_indvscore += pos5 sg_stats
execute as @a[scores={sg_teampos=6}] run scoreboard players operation @s sg_indvscore += pos6 sg_stats
execute as @a[scores={sg_teampos=7}] run scoreboard players operation @s sg_indvscore += pos7 sg_stats
execute as @a[scores={sg_teampos=8}] run scoreboard players operation @s sg_indvscore += pos8 sg_stats

# Announcement
kill @e[type=marker,tag=sg_teamStandings]

execute if entity @p[team=red,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §c红队"'}
execute if entity @p[team=red,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §c红队"'}

execute if entity @p[team=blue,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §9蓝队"'}
execute if entity @p[team=blue,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §9蓝队"'}

execute if entity @p[team=green,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §a绿队"'}
execute if entity @p[team=green,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §a绿队"'}

execute if entity @p[team=yellow,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §e黄队"'}
execute if entity @p[team=yellow,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §e黄队"'}

execute if entity @p[team=cyan,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §3青队"'}
execute if entity @p[team=cyan,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §3青队"'}

execute if entity @p[team=orange,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §6橙队"'}
execute if entity @p[team=orange,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §6橙队"'}

execute if entity @p[team=pink,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §d粉队"'}
execute if entity @p[team=pink,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §d粉队"'}

execute if entity @p[team=purple,scores={sg_teampos=1}] run summon marker 0 50 0 {Tags:["sg_teamStandings","1"],CustomName:'"1. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=2}] run summon marker 0 50 0 {Tags:["sg_teamStandings","2"],CustomName:'"2. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=3}] run summon marker 0 50 0 {Tags:["sg_teamStandings","3"],CustomName:'"3. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=4}] run summon marker 0 50 0 {Tags:["sg_teamStandings","4"],CustomName:'"4. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=5}] run summon marker 0 50 0 {Tags:["sg_teamStandings","5"],CustomName:'"5. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=6}] run summon marker 0 50 0 {Tags:["sg_teamStandings","6"],CustomName:'"6. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=7}] run summon marker 0 50 0 {Tags:["sg_teamStandings","7"],CustomName:'"7. §5紫队"'}
execute if entity @p[team=purple,scores={sg_teampos=8}] run summon marker 0 50 0 {Tags:["sg_teamStandings","8"],CustomName:'"8. §5紫队"'}
