scoreboard players operation activeTool ddToolsSequence = Tool2 ddToolsSequence
# 随机选取一个队伍获得小道具
tag @e[type=marker,tag=ddToolsDistribute,tag=!hasTool,limit=1,sort=random] add giveTool
tag @e[type=marker,tag=giveTool] add hasTool
# 宣布获得小道具的队伍并提供小道具
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=red] run tellraw @a ["","[","§e▶","] ","§c红队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=blue] run tellraw @a ["","[","§e▶","] ","§9蓝队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=green] run tellraw @a ["","[","§e▶","] ","§a绿队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=yellow] run tellraw @a ["","[","§e▶","] ","§e黄队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=cyan] run tellraw @a ["","[","§e▶","] ","§3青队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=orange] run tellraw @a ["","[","§e▶","] ","§6橙队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=purple] run tellraw @a ["","[","§e▶","] ","§5紫队","§d被随机选中获得了一份小道具！"]
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=pink] run tellraw @a ["","[","§e▶","] ","§d粉队","§d被随机选中获得了一份小道具！"]

execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=red] run execute as @r[team=red] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=blue] run execute as @r[team=blue] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=green] run execute as @r[team=green] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=yellow] run execute as @r[team=yellow] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=cyan] run execute as @r[team=cyan] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=orange] run execute as @r[team=orange] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=purple] run execute as @r[team=purple] run function decisiondome:tools/distribute/picktool
execute if entity @e[type=marker,tag=giveTool,tag=ddToolsDistribute,tag=pink] run execute as @r[team=pink] run function decisiondome:tools/distribute/picktool
# 去除标记
tag @e[type=marker,tag=giveTool] remove giveTool