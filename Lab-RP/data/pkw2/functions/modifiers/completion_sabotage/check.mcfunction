

execute if entity @s[team=spec,tag=!admin] run tellraw @s ["§c[§r鼱§c] 你是旁观者，还是看场上的玩家表演吧！"]
execute if entity @s[team=spec,tag=!admin] run return 0

execute if entity @s[scores={pkw2_final=0}] run tellraw @s ["§c[§r鼱§c] 你未完成比赛，不能搞破坏！"]
execute if entity @s[scores={pkw2_final=0}] run return 0

execute if entity @s[tag=pkw2_sabotage_used] run tellraw @s ["§c[§r鼱§c] 你已经为剩余玩家的地图留下浓墨重彩的一笔了！"]
execute if entity @s[tag=pkw2_sabotage_used] run return 0

execute if entity @a[gamemode=!spectator,distance=0..3] run tellraw @s ["§c[§r鼱§c] 请远离其他在场玩家再尝试放置你的方块！"]
execute if entity @a[gamemode=!spectator,distance=0..3] run return 0

execute if block ~ ~-1 ~ light run tellraw @s ["§c[§r鼱§c] 不能在关卡完成的判定位置放置方块！"]
execute if block ~ ~-1 ~ light run return 0

execute unless block ~ ~-1 ~ air run tellraw @s ["§c[§r鼱§c] 你只能替换空气方块！"]
execute unless block ~ ~-1 ~ air run return 0

function pkw2:modifiers/completion_sabotage/success