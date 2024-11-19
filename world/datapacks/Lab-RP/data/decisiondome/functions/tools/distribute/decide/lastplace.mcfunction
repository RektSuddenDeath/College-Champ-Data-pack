# Chat Notification
execute if score lastPlaceTeam tourney_stats matches 1 run tellraw @a ["","[","§e▶","] ","§c红队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 2 run tellraw @a ["","[","§e▶","] ","§9蓝队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 3 run tellraw @a ["","[","§e▶","] ","§a绿队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 4 run tellraw @a ["","[","§e▶","] ","§e黄队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 5 run tellraw @a ["","[","§e▶","] ","§3青队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 6 run tellraw @a ["","[","§e▶","] ","§6橙队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 7 run tellraw @a ["","[","§e▶","] ","§5紫队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
execute if score lastPlaceTeam tourney_stats matches 8 run tellraw @a ["","[","§e▶","] ","§d粉队","§d为上一个游戏最后一名的队伍，所以获得了一份小道具！"]
# Tag the marker to avoid double tools
execute if score lastPlaceTeam tourney_stats matches 1 run tag @e[type=marker,tag=ddToolsDistribute,tag=red] add hasTool
execute if score lastPlaceTeam tourney_stats matches 2 run tag @e[type=marker,tag=ddToolsDistribute,tag=blue] add hasTool
execute if score lastPlaceTeam tourney_stats matches 3 run tag @e[type=marker,tag=ddToolsDistribute,tag=green] add hasTool
execute if score lastPlaceTeam tourney_stats matches 4 run tag @e[type=marker,tag=ddToolsDistribute,tag=yellow] add hasTool
execute if score lastPlaceTeam tourney_stats matches 5 run tag @e[type=marker,tag=ddToolsDistribute,tag=cyan] add hasTool
execute if score lastPlaceTeam tourney_stats matches 6 run tag @e[type=marker,tag=ddToolsDistribute,tag=orange] add hasTool
execute if score lastPlaceTeam tourney_stats matches 7 run tag @e[type=marker,tag=ddToolsDistribute,tag=purple] add hasTool
execute if score lastPlaceTeam tourney_stats matches 8 run tag @e[type=marker,tag=ddToolsDistribute,tag=pink] add hasTool
# According to the team selected, give a tool
## 其中部分会提供多于1个的道具，在队伍为末位的情况下只提供1个。
execute if score lastPlaceTeam tourney_stats matches 1 run execute as @r[team=red] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 2 run execute as @r[team=blue] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 3 run execute as @r[team=green] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 4 run execute as @r[team=yellow] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 5 run execute as @r[team=cyan] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 6 run execute as @r[team=orange] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 7 run execute as @r[team=purple] run function decisiondome:tools/distribute/picktool
execute if score lastPlaceTeam tourney_stats matches 8 run execute as @r[team=pink] run function decisiondome:tools/distribute/picktool