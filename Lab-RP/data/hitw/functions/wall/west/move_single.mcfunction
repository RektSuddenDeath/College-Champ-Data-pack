scoreboard players add @s hitw_wall_ctrl 1
# Break Anim
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~1 ~-1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~3 ~-2 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~5 ~-3 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~2 ~-4 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~4 ~-5 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~1 ~-6 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~3 ~-7 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~2 ~-8 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~4 ~-9 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~5 ~-10 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~1 ~-11 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~3 ~-12 air destroy
# Others
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run fill ~1 ~ ~ ~-1 ~5 ~-13 air
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run scoreboard players add @a[tag=hitw_alive] hitw_round_dodged 1
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run kill @s

execute if entity @s[tag=sike] if score @s hitw_wall_ctrl >= sike_steps hitw_wall_ctrl run scoreboard players add @s hitw_sike_ctrl 1
execute if entity @s[tag=sike] if score @s hitw_sike_ctrl >= sike_wait hitw_wall_ctrl run fill ~1 ~ ~ ~-1 ~5 ~-13 air destroy
execute if entity @s[tag=sike] if score @s hitw_sike_ctrl >= sike_wait hitw_wall_ctrl run kill @s
execute if entity @s[tag=sike] if score @s hitw_wall_ctrl >= sike_steps hitw_wall_ctrl run return 0

execute run clone ~-1 ~ ~ ~-1 ~5 ~-13 ~ ~ ~-13
execute run fill ~-1 ~ ~ ~-1 ~5 ~-13 warped_button[face=wall,facing=west,powered=true] replace piston
execute run tp @s ~1 ~ ~