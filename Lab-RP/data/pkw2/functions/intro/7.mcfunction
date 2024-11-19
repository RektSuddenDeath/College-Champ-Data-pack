tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §e§l游戏积分方式"
tellraw @a " "
tellraw @a ["  ",{"text": "- 完成主关","hoverEvent": {"action":"show_text","contents": "完成每个主关可获得一个§7石奖牌§r，每个积§a3§r分"}}]
tellraw @a ["  ",{"text": "- 完成额外关","hoverEvent": {"action":"show_text","contents": "完成每条支线的第§a1/2/3§r个额外关\n可获得一个§a铜/银/金§a奖牌§r，每个积§a7/16/23§r分\n\n完成第§a1/2/3/4/5§r条支线的第三小关可额外获得§a0/5/15/35/60§r分"}}]
tellraw @a ["  ",{"text": "- 完成最终挑战将为全队提升积分倍率","hoverEvent": {"action": "show_text","contents": "完成§a简单/中等/困难§r的全部最终关可为团队积分增加§a0.15x/0.30x/0.80x§r\n最终关的每一小关不额外得分。"}}]
tellraw @a "  "
tellraw @a "  §o请将鼠标移动到积分项目上以查看详情。"
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10