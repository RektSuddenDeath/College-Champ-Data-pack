
scoreboard players set teamTwoPicks megabolt_bp 2


execute if block 16993 110 17003 red_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.red"},"§b加入！"]
execute if block 16993 110 17003 red_concrete run tag @a[team=red] add db_teamtwo
execute if block 16993 110 17003 blue_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.blue"},"§b加入！"]
execute if block 16993 110 17003 blue_concrete run tag @a[team=blue] add db_teamtwo
execute if block 16993 110 17003 green_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.green"},"§b加入！"]
execute if block 16993 110 17003 green_concrete run tag @a[team=green] add db_teamtwo
execute if block 16993 110 17003 yellow_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.yellow"},"§b加入！"]
execute if block 16993 110 17003 yellow_concrete run tag @a[team=yellow] add db_teamtwo
execute if block 16993 110 17003 cyan_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.cyan"},"§b加入！"]
execute if block 16993 110 17003 cyan_concrete run tag @a[team=cyan] add db_teamtwo
execute if block 16993 110 17003 pink_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.pink"},"§b加入！"]
execute if block 16993 110 17003 pink_concrete run tag @a[team=pink] add db_teamtwo
execute if block 16993 110 17003 orange_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.orange"},"§b加入！"]
execute if block 16993 110 17003 orange_concrete run tag @a[team=orange] add db_teamtwo
execute if block 16993 110 17003 purple_concrete run tellraw @a ["§b[§r逌§b] ","§b积分第二的队伍选择了",{"translate":"team.purple"},"§b加入！"]
execute if block 16993 110 17003 purple_concrete run tag @a[team=purple] add db_teamtwo


function dodgebolt:megabolt_bp/phases/teamone_beginpick