scoreboard objectives add pkw_scoreindv dummy


execute as @a[team=!spec] run scoreboard players operation @s pkw_scoreindv = @s pkw_cp
execute as @a[team=!spec] run scoreboard players operation @s pkw_scoreindv *= 15 math

execute as @a[team=!spec] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1
execute as @a[team=!spec] at @s run tellraw @s ["",{"text": "["},{"text":"+","color":"gold"},{"score":{"name": "@s","objective": "pkw_scoreindv"},"color":"gold"},{"text":"分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"score":{"name": "@s","objective": "pkw_cp"},"color":"yellow"},{"text": "关"}]

execute as @a[team=!spec,scores={pkw_cp=3..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=6..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=9..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=12..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=15..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=18..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=21..}] run scoreboard players add @s pkw_scoreindv 20
execute as @a[team=!spec,scores={pkw_cp=24..}] run scoreboard players add @s pkw_scoreindv 300

tellraw @a[team=!spec,scores={pkw_cp=3..5}] ["",{"text": "["},{"text":"+20分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"1","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=6..8}] ["",{"text": "["},{"text":"+40分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"2","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=9..11}] ["",{"text": "["},{"text":"+60分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"3","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=12..14}] ["",{"text": "["},{"text":"+80分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"4","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=15..17}] ["",{"text": "["},{"text":"+100分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"5","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=18..20}] ["",{"text": "["},{"text":"+120分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"6","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=21..23}] ["",{"text": "["},{"text":"+140分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"7","color":"aqua"},{"text": "大关"}]
tellraw @a[team=!spec,scores={pkw_cp=24..}] ["",{"text": "["},{"text":"+160分","color":"gold"},{"text": "]"},{"text": " 完成了"},{"text":"8","color":"aqua"},{"text": "大关"}]

tellraw @a[team=!spec,scores={pkw_cp=24..}] ["",{"text": "["},{"text":"+280分","color":"gold"},{"text": "]"},{"text": " 完成全部挑战奖励"}]

function parkourwarrior:scorings/team