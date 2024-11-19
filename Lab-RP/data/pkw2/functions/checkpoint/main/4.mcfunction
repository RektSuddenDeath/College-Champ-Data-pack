

execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_onGround=1}] if score @s pkw2_coordsZ > 26 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_onGround=1}] if score @s pkw2_coordsZ > 26 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_onGround=1}] if score @s pkw2_coordsZ > 26 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 26
# M3-1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=26,pkw2_onGround=1}] if score @s pkw2_coordsZ > 27 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/10

# M3-2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=27,pkw2_onGround=1}] if score @s pkw2_coordsZ > 28 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/11

# M3-3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=28,pkw2_onGround=1}] if score @s pkw2_coordsZ > 29 pkw2_cp_coords_z run function pkw2:checkpoint/clear/m/12