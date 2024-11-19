

execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_onGround=1}] if score @s pkw2_coordsZ > 19 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_onGround=1}] if score @s pkw2_coordsZ > 19 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_onGround=1}] if score @s pkw2_coordsZ > 19 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 19
# M3-1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=19,pkw2_onGround=1}] if score @s pkw2_coordsZ > 20 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/7

# M3-2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=20,pkw2_onGround=1}] if score @s pkw2_coordsZ > 21 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/8

# M3-3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=21,pkw2_onGround=1}] if score @s pkw2_coordsZ > 22 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/9