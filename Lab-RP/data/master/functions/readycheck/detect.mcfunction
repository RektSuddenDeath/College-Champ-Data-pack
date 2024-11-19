
# Ready
execute if entity @p[team=red,scores={readycheck=1}] if score red readycheck matches 0 run tellraw @a ["",{"text": "红队","color": "red"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=blue,scores={readycheck=1}] if score blue readycheck matches 0 run tellraw @a ["",{"text": "蓝队","color": "blue"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=green,scores={readycheck=1}] if score green readycheck matches 0 run tellraw @a ["",{"text": "绿队","color": "green"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=yellow,scores={readycheck=1}] if score yellow readycheck matches 0 run tellraw @a ["",{"text": "黄队","color": "yellow"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=cyan,scores={readycheck=1}] if score cyan readycheck matches 0 run tellraw @a ["",{"text": "青队","color": "dark_aqua"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=pink,scores={readycheck=1}] if score pink readycheck matches 0 run tellraw @a ["",{"text": "粉队","color": "light_purple"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=orange,scores={readycheck=1}] if score orange readycheck matches 0 run tellraw @a ["",{"text": "橙队","color": "gold"},{"text": "已准备！","color": "green"}]
execute if entity @p[team=purple,scores={readycheck=1}] if score purple readycheck matches 0 run tellraw @a ["",{"text": "紫队","color": "dark_purple"},{"text": "已准备！","color": "green"}]

execute if entity @p[team=red,scores={readycheck=1}] if score red readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=blue,scores={readycheck=1}] if score blue readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=green,scores={readycheck=1}] if score green readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=yellow,scores={readycheck=1}] if score yellow readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=cyan,scores={readycheck=1}] if score cyan readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=pink,scores={readycheck=1}] if score pink readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=orange,scores={readycheck=1}] if score orange readycheck matches 0 run scoreboard players add readyteams readycheck 1
execute if entity @p[team=purple,scores={readycheck=1}] if score purple readycheck matches 0 run scoreboard players add readyteams readycheck 1

execute if score readyteams readycheck matches 8 run tellraw @a ["",{"text": "所有队伍均已准备完成！","bold": true,"color": "green"}]

# Not Ready
execute if entity @p[team=red,scores={readycheck=2}] if score red readycheck matches 0 run tellraw @a ["",{"text": "红队","color": "red"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=blue,scores={readycheck=2}] if score blue readycheck matches 0 run tellraw @a ["",{"text": "蓝队","color": "blue"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=green,scores={readycheck=2}] if score green readycheck matches 0 run tellraw @a ["",{"text": "绿队","color": "green"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=yellow,scores={readycheck=2}] if score yellow readycheck matches 0 run tellraw @a ["",{"text": "黄队","color": "yellow"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=cyan,scores={readycheck=2}] if score cyan readycheck matches 0 run tellraw @a ["",{"text": "青队","color": "dark_aqua"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=pink,scores={readycheck=2}] if score pink readycheck matches 0 run tellraw @a ["",{"text": "粉队","color": "light_purple"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=orange,scores={readycheck=2}] if score orange readycheck matches 0 run tellraw @a ["",{"text": "橙队","color": "gold"},{"text": "未准备好！","color": "red"}]
execute if entity @p[team=purple,scores={readycheck=2}] if score purple readycheck matches 0 run tellraw @a ["",{"text": "紫队","color": "dark_purple"},{"text": "未准备好！","color": "red"}]


# Pushes Vote Result to scoreboard, disabling further votes.
execute if score red readycheck matches 1 run tellraw @a[team=red,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score blue readycheck matches 1 run tellraw @a[team=blue,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score green readycheck matches 1 run tellraw @a[team=green,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score yellow readycheck matches 1 run tellraw @a[team=yellow,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score cyan readycheck matches 1 run tellraw @a[team=cyan,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score pink readycheck matches 1 run tellraw @a[team=pink,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score orange readycheck matches 1 run tellraw @a[team=orange,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]
execute if score purple readycheck matches 1 run tellraw @a[team=purple,scores={readycheck=1..}] ["",{"text": "你的队伍已作答准备检查，请勿重复投票。","color": "red"}]

execute if entity @p[team=red,scores={readycheck=1..}] run scoreboard players set red readycheck 1
execute if entity @p[team=blue,scores={readycheck=1..}] run scoreboard players set blue readycheck 1
execute if entity @p[team=green,scores={readycheck=1..}] run scoreboard players set green readycheck 1
execute if entity @p[team=yellow,scores={readycheck=1..}] run scoreboard players set yellow readycheck 1
execute if entity @p[team=cyan,scores={readycheck=1..}] run scoreboard players set cyan readycheck 1
execute if entity @p[team=pink,scores={readycheck=1..}] run scoreboard players set pink readycheck 1
execute if entity @p[team=orange,scores={readycheck=1..}] run scoreboard players set orange readycheck 1
execute if entity @p[team=purple,scores={readycheck=1..}] run scoreboard players set purple readycheck 1

# Loop
scoreboard players add timeout readycheck 1
scoreboard players set @a readycheck 0
execute if score readyteams readycheck matches 0..7 unless score timeout readycheck matches 600.. run schedule function master:readycheck/detect 1t

