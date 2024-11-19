
tellraw @a[scores={teamcomp=1..}] ["§l当前比赛队伍组成："]
tellraw @a[scores={teamcomp=1..}] ""
tellraw @a[scores={teamcomp=1..}] ["§c愺 红队",": 南京工业大学 浙江工业大学"]
tellraw @a[scores={teamcomp=1..}] ["§9愺 蓝队",": 上海交通大学 浙江大学"]
tellraw @a[scores={teamcomp=1..}] ["§a愺 绿队",": §l杭州电子科技大学 §r河北金融学院"]
tellraw @a[scores={teamcomp=1..}] ["§e愺 黄队",": §l上海应用技术大学 上海工程技术大学"]
tellraw @a[scores={teamcomp=1..}] ["§3愺 青队",": 中南大学 燕山大学"]
tellraw @a[scores={teamcomp=1..}] ["§d愺 粉队",": 西北电子科技大学 南京大学"]
tellraw @a[scores={teamcomp=1..}] ["§6愺 橙队",": 西北工业大学 北京航空航天大学"]
tellraw @a[scores={teamcomp=1..}] ["§5愺 紫队",": 华中科技大学 复旦大学"]
scoreboard players set @a teamcomp 0
scoreboard players enable @a teamcomp
schedule function utils:teamcomp/request 9t