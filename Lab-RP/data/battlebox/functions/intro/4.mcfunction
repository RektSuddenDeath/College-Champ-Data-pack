
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  你将与全部其他队伍各进行","color":"white"},{"text": "一次对战","color":"white","bold": true},{"text": "，每次对战限时60秒。","color":"white"}]
tellraw @a "  你需要在限定时间内尽可能击杀敌人并填满中心。"
tellraw @a " "
tellraw @a "  在对战开始前，你可以在准备区域选取一个有助于对战的额外物品。"
tellraw @a "  每种物品每队限一个人选择，它们在战斗中可能会对战局"
tellraw @a "  相当有帮助！"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10