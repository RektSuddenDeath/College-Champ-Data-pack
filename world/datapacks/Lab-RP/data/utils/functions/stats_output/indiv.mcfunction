team modify red prefix ""
team modify blue prefix ""
team modify green prefix ""
team modify yellow prefix ""
team modify cyan prefix ""
team modify pink prefix ""
team modify orange prefix ""
team modify purple prefix ""
team modify spec prefix ""

tag @s add temp_tosend_aaa
tellraw @s ["§b数据结算：各玩家总分 (csv格式复制)"]
execute as @a[team=!spec] run tellraw @a[tag=temp_tosend_aaa] [",",{"selector":"@s"},",",{"score":{"name": "@s","objective": "tourney_indv"}},",",{"score":{"name": "@s","objective": "personalRank"}},""]
tag @s remove temp_tosend_aaa

team modify red prefix "§c愺 "
team modify blue prefix "§9愺 "
team modify green prefix "§a愺 "
team modify yellow prefix "§e愺 "
team modify cyan prefix "§3愺 "
team modify pink prefix "§d愺 "
team modify orange prefix "§6愺 "
team modify purple prefix "§5愺 "
team modify spec prefix "§8愺 "
