

execute as @a[team=!spec,scores={pkw2_cp=0,pkw2_onGround=1}] if score @s pkw2_coordsZ > 1 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=0,pkw2_onGround=1}] if score @s pkw2_coordsZ > 1 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 1


execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_onGround=1}] if score @s pkw2_coordsZ > 5 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_onGround=1}] if score @s pkw2_coordsZ > 5 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_onGround=1}] if score @s pkw2_coordsZ > 5 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 5
# M1-1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=5,pkw2_onGround=1}] if score @s pkw2_coordsZ > 6 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/1

# M1-2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=6,pkw2_onGround=1}] if score @s pkw2_coordsZ > 7 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/2

# M1-3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=7,pkw2_onGround=1}] if score @s pkw2_coordsZ > 8 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/3