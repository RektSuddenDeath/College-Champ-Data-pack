scoreboard players add @s hitw_wall_ctrl 1
# Break anim
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~1 ~1 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~2 ~3 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~3 ~5 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~4 ~2 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~5 ~4 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~6 ~3 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~7 ~5 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~8 ~1 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~9 ~2 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~10 ~4 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~11 ~3 ~1 air destroy
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run setblock ~12 ~1 ~1 air destroy
# Continue
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run fill ~13 ~ ~1 ~ ~5 ~-1 air
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run scoreboard players add @a[tag=hitw_alive] hitw_round_dodged 1
execute if score @s hitw_wall_ctrl >= total_steps hitw_wall_ctrl run kill @s

execute if entity @s[tag=sike] if score @s hitw_wall_ctrl >= sike_steps hitw_wall_ctrl run scoreboard players add @s hitw_sike_ctrl 1
execute if entity @s[tag=sike] if score @s hitw_sike_ctrl >= sike_wait hitw_wall_ctrl run fill ~13 ~ ~1 ~ ~5 ~-1 air destroy
execute if entity @s[tag=sike] if score @s hitw_sike_ctrl >= sike_wait hitw_wall_ctrl run kill @s
execute if entity @s[tag=sike] if score @s hitw_wall_ctrl >= sike_steps hitw_wall_ctrl run return 0

execute run clone ~13 ~ ~-1 ~ ~5 ~-1 ~ ~ ~
execute run fill ~13 ~ ~-1 ~ ~5 ~-1 warped_button[face=wall,facing=north,powered=true] replace piston
execute run tp @s ~ ~ ~1