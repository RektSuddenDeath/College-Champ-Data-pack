
execute unless entity @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] run return 0

scoreboard players operation the_bouncing_cubes pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
# 把全部9999都换成循环刻数
scoreboard players set 107 pkw2_dynamic 107
scoreboard players operation the_bouncing_cubes pkw2_dynamic %= 107 pkw2_dynamic

# 把... matches 0 换成达到当前刻所使用的游戏刻数。
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 0 run place template pkw2:the_bouncing_cubes/1 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 1 run place template pkw2:the_bouncing_cubes/2 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 3 run place template pkw2:the_bouncing_cubes/3 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 5 run place template pkw2:the_bouncing_cubes/4 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 9 run place template pkw2:the_bouncing_cubes/5 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 17 run place template pkw2:the_bouncing_cubes/6 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 27 run place template pkw2:the_bouncing_cubes/7 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 39 run place template pkw2:the_bouncing_cubes/8 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 55 run place template pkw2:the_bouncing_cubes/7 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 57 run place template pkw2:the_bouncing_cubes/6 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 59 run place template pkw2:the_bouncing_cubes/5 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 63 run place template pkw2:the_bouncing_cubes/4 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 71 run place template pkw2:the_bouncing_cubes/3 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 81 run place template pkw2:the_bouncing_cubes/2 ~-25 ~-2 ~-7
execute at @e[type=marker,tag=the_bouncing_cubes,tag=pw_dynamic] if score the_bouncing_cubes pkw2_dynamic matches 93 run place template pkw2:the_bouncing_cubes/1 ~-25 ~-2 ~-7



#12248 10 12 14