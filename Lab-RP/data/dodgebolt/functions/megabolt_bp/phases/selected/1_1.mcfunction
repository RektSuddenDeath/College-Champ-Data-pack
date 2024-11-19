
scoreboard players set teamOnePicks megabolt_bp 1


execute if block 17004 110 17003 red_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.red"},"§b加入！"]
execute if block 17004 110 17003 red_concrete run tag @a[team=red] add db_teamone
execute if block 17004 110 17003 blue_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.blue"},"§b加入！"]
execute if block 17004 110 17003 blue_concrete run tag @a[team=blue] add db_teamone
execute if block 17004 110 17003 green_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.green"},"§b加入！"]
execute if block 17004 110 17003 green_concrete run tag @a[team=green] add db_teamone
execute if block 17004 110 17003 yellow_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.yellow"},"§b加入！"]
execute if block 17004 110 17003 yellow_concrete run tag @a[team=yellow] add db_teamone
execute if block 17004 110 17003 cyan_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.cyan"},"§b加入！"]
execute if block 17004 110 17003 cyan_concrete run tag @a[team=cyan] add db_teamone
execute if block 17004 110 17003 pink_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.pink"},"§b加入！"]
execute if block 17004 110 17003 pink_concrete run tag @a[team=pink] add db_teamone
execute if block 17004 110 17003 orange_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.orange"},"§b加入！"]
execute if block 17004 110 17003 orange_concrete run tag @a[team=orange] add db_teamone
execute if block 17004 110 17003 purple_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第一的队伍选择了",{"translate":"team.purple"},"§b加入！"]
execute if block 17004 110 17003 purple_concrete run tag @a[team=purple] add db_teamone


function dodgebolt:megabolt_bp/phases/teamtwo_beginpick