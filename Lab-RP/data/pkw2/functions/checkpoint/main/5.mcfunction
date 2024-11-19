

execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_onGround=1}] if score @s pkw2_coordsZ > 33 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_onGround=1}] if score @s pkw2_coordsZ > 33 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_onGround=1}] if score @s pkw2_coordsZ > 33 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 33
# M3-1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=33,pkw2_onGround=1}] if score @s pkw2_coordsZ > 34 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/13

# M3-2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=34,pkw2_onGround=1}] if score @s pkw2_coordsZ > 35 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/14

# M3-3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=35,pkw2_onGround=1}] if score @s pkw2_coordsZ > 36 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/15