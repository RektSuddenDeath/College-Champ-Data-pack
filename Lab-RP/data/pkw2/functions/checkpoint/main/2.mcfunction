

execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_onGround=1}] if score @s pkw2_coordsZ > 12 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_onGround=1}] if score @s pkw2_coordsZ > 12 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_onGround=1}] if score @s pkw2_coordsZ > 12 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 12
# M2-1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=12,pkw2_onGround=1}] if score @s pkw2_coordsZ > 13 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/4

# M2-2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=13,pkw2_onGround=1}] if score @s pkw2_coordsZ > 14 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/5

# M2-3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=14,pkw2_onGround=1}] if score @s pkw2_coordsZ > 15 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/6