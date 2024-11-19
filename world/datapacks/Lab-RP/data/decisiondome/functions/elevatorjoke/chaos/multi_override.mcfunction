
# 保存的为100倍的当前游戏Multiplier.
scoreboard players operation this_multi chaos_multi = multiplier1 tourney_stats

# Multiplier Addition.
execute if block -10191 147 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += red chaos_multi
execute if block -10191 124 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += blue chaos_multi
execute if block -10191 101 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += green chaos_multi
execute if block -10191 78 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += yellow chaos_multi
execute if block -10191 55 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += cyan chaos_multi
execute if block -10191 32 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += pink chaos_multi
execute if block -10191 9 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += orange chaos_multi
execute if block -10191 -14 -10203 lever[powered=false] run scoreboard players operation this_multi chaos_multi += purple chaos_multi

execute if block -10191 147 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= red chaos_multi
execute if block -10191 124 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= blue chaos_multi
execute if block -10191 101 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= green chaos_multi
execute if block -10191 78 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= yellow chaos_multi
execute if block -10191 55 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= cyan chaos_multi
execute if block -10191 32 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= pink chaos_multi
execute if block -10191 9 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= orange chaos_multi
execute if block -10191 -14 -10203 lever[powered=true] run scoreboard players operation this_multi chaos_multi -= purple chaos_multi

# Uniform the final multi for display purpose.
scoreboard players operation front chaos_multi = this_multi chaos_multi
scoreboard players operation back chaos_multi = this_multi chaos_multi

execute store result storage master:chaos_multi front int 1 run scoreboard players operation front chaos_multi /= 100 math
execute store result storage master:chaos_multi back int 1 run scoreboard players operation back chaos_multi %= 100 math

function decisiondome:elevatorjoke/chaos/macro_storage with storage master:chaos_multi


title @a times 10 60 10
title @a title "§e§l游戏倍率变更！"
title @a subtitle ["","⏵",{"storage":"master:event_status","nbt":"multi_uniform","color": "yellow"},"§ex§f⏴"]

# Change Multiplier.
scoreboard players operation multiplier1 tourney_stats = this_multi chaos_multi

