
scoreboard players remove tick timebar 1
# 映射到120格上

scoreboard players operation amount timebar = tick timebar
# 保证时间是ceil()的

scoreboard players operation amount timebar *= 120 math
scoreboard players operation amount timebar /= max timebar
# 决定分秒的 0 Paddings
scoreboard players operation sub_amount timebar = tick timebar
scoreboard players add sub_amount timebar 19

scoreboard players operation minute timebar = sub_amount timebar
scoreboard players operation second timebar = sub_amount timebar

scoreboard players operation minute timebar /= 1200 math
scoreboard players operation second timebar /= 20 math
scoreboard players operation second timebar %= 60 math

execute if score minute timebar matches ..-1 run scoreboard players set minute timebar 0
execute if score second timebar matches ..-1 run scoreboard players set second timebar 0
execute if score tick timebar matches ..-1 run scoreboard players set second timebar 0

execute if score minute timebar matches 0..9 run data modify storage ui:timebar min_pad set value "0"
execute if score second timebar matches 0..9 run data modify storage ui:timebar sec_pad set value "0"

execute if score minute timebar matches 10.. run data modify storage ui:timebar min_pad set value ""
execute if score second timebar matches 10.. run data modify storage ui:timebar sec_pad set value ""

execute if score minute timebar matches 0..9 run scoreboard players set min_pad timebar 0
execute if score second timebar matches 0..9 run scoreboard players set sec_pad timebar 0

execute if score minute timebar matches 10.. run scoreboard players reset min_pad timebar
execute if score second timebar matches 10.. run scoreboard players reset sec_pad timebar

# 如果上一个时间轴和这个不同，更新
execute unless score last_amount timebar = amount timebar run function master:timer/bar/update
# 更新上一个时间轴刻度
scoreboard players operation last_amount timebar = amount timebar
execute if score time_bar_active tourney_stats matches 1 run schedule function master:timer/bar/tick 1t