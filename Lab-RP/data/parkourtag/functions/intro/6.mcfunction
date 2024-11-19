execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","bold":true,"text":"  积分标准:  "},{"text": "（未计算倍率）","color": "gray"}]
tellraw @a " "
tellraw @a ["  ","- 逃脱者存活10秒:","§a 2"]
tellraw @a ["  - ",{"text": "逃脱者存活到最后","underlined":true,"hoverEvent": {"action":"show_text","value": "- 队内有一名玩家存活到最后:  §a21§7 （不重复计算）\n§f- 自己存活到最后: §a 21"}}]
tellraw @a ["  ","- 抓捕者抓捕一个对手:","§a 4"]
tellraw @a ["  - ",{"text": "抓捕者抓捕全部对手","underlined":true,"hoverEvent": {"action":"show_text","value": "- 抓捕全部对手基础分:  §a60\n§f- 游戏每过10秒，此积分递减: §c 6"}}]
tellraw @a [{"text":"全队奖励: ","color":"yellow"},{"text": "本队抓捕者先于对手抓获全部目标: ","color":"white"},{"text": "160","color":"green"}]
tellraw @a "  §7鼠标置于下划线项目以查看对应条目详情。"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]