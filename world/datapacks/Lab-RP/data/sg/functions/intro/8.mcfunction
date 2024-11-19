
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§e§l游戏计分方式："]
tellraw @a " "
tellraw @a ["  - ",{"text": "生存时间超过一个其他玩家","underlined": true,"hoverEvent": {"action":"show_text","value": ["击杀基础分: §a4\n§f场上剩余§a24/16/8§f名玩家时，生存分提升: §a2"]}}]
tellraw @a ["  - ",{"text": "淘汰其他玩家","underlined": true,"hoverEvent": {"action":"show_text","value": ["击杀基础分: §a85\n§f场上剩余§a24/16/8§f名玩家时，击杀分降低: §c15"]}}]
tellraw @a ["  - ",{"text": "破坏空投","underlined": true,"hoverEvent": {"action":"show_text","value": ["按照投放顺序，价值为: §a240/200/160/160/160\n§7此积分全队平分。"]}}]
tellraw @a ["  - ",{"text": "团队排名","underlined": true,"hoverEvent": {"action":"show_text","value": ["按照团灭时间剩余的队伍决定排名。\n第1-8名分别获得: §a420/320/260/200/160/120/100/80§r分。\n§7此积分全队平分。"]}}]
tellraw @a ["   "]

#tellraw @a "  §7鼠标移动到划线积分项目以查看详情。"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
