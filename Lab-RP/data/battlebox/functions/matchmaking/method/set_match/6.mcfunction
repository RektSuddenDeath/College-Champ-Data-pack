
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

# 标记值
scoreboard players set 6 bb_matchtable 1
scoreboard players set selected_match bb_game 6

tag @a[team=red] add bb_arena_1
tag @a[team=blue] add bb_arena_2
tag @a[team=green] add bb_arena_3
tag @a[team=yellow] add bb_arena_4
tag @a[team=cyan] add bb_arena_3
tag @a[team=pink] add bb_arena_4
tag @a[team=orange] add bb_arena_1
tag @a[team=purple] add bb_arena_2

tag @a[team=cyan] add bb_arena_secondary
tag @a[team=pink] add bb_arena_secondary
tag @a[team=orange] add bb_arena_secondary
tag @a[team=purple] add bb_arena_secondary

scoreboard players set red bb_team_arena 1
scoreboard players set blue bb_team_arena 2
scoreboard players set green bb_team_arena 3
scoreboard players set yellow bb_team_arena 4
scoreboard players set cyan bb_team_arena 3
scoreboard players set pink bb_team_arena 4
scoreboard players set orange bb_team_arena 1
scoreboard players set purple bb_team_arena 2

# 检查轮空
execute as @a[team=red] unless entity @a[team=!red,tag=bb_arena_1] run scoreboard players set red bb_round_off 1
execute as @a[team=blue] unless entity @a[team=!blue,tag=bb_arena_2] run scoreboard players set blue bb_round_off 1
execute as @a[team=green] unless entity @a[team=!green,tag=bb_arena_3] run scoreboard players set green bb_round_off 1
execute as @a[team=yellow] unless entity @a[team=!yellow,tag=bb_arena_4] run scoreboard players set yellow bb_round_off 1
execute as @a[team=cyan] unless entity @a[team=!cyan,tag=bb_arena_3] run scoreboard players set cyan bb_round_off 1
execute as @a[team=pink] unless entity @a[team=!pink,tag=bb_arena_4] run scoreboard players set pink bb_round_off 1
execute as @a[team=orange] unless entity @a[team=!orange,tag=bb_arena_1] run scoreboard players set orange bb_round_off 1
execute as @a[team=purple] unless entity @a[team=!purple,tag=bb_arena_2] run scoreboard players set purple bb_round_off 1

# Transfer Anchors
tp @e[type=marker,tag=bb_redanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_blueanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]
tp @e[type=marker,tag=bb_greenanchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_yellowanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]
tp @e[type=marker,tag=bb_cyananchor] @e[type=marker,tag=bb_centeranchor,tag=a3,limit=1]
tp @e[type=marker,tag=bb_pinkanchor] @e[type=marker,tag=bb_centeranchor,tag=a4,limit=1]
tp @e[type=marker,tag=bb_orangeanchor] @e[type=marker,tag=bb_centeranchor,tag=a1,limit=1]
tp @e[type=marker,tag=bb_purpleanchor] @e[type=marker,tag=bb_centeranchor,tag=a2,limit=1]

# 在储存空间标记对战表
data modify storage bb:opponent red set value "orange"
data modify storage bb:opponent blue set value "purple"
data modify storage bb:opponent green set value "cyan"
data modify storage bb:opponent yellow set value "pink"
data modify storage bb:opponent cyan set value "green"
data modify storage bb:opponent pink set value "yellow"
data modify storage bb:opponent orange set value "red"
data modify storage bb:opponent purple set value "blue"
# Debug
tellraw @a[tag=admin] ["§b[§6Dev§b] ","§bMatch ",{"text": "6","color": "#E3E3E3"}," §bselected."]
