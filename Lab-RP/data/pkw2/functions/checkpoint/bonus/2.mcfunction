 
execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_bonus2=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 9 pkw2_cp_coords_x run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_bonus2=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 9 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=8,pkw2_bonus2=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 9 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 9
# RETURN TO SHRINE
execute as @a[team=!spec,scores={pkw2_cp=9..11,pkw2_onGround=1}] if score @s pkw2_coordsX > 9 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=9..11,pkw2_onGround=1}] if score @s pkw2_coordsX > 9 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 8
# B1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=9,pkw2_bonus2=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 10 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/4

# B2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=10,pkw2_bonus2=1,pkw2_onGround=1}] if score @s pkw2_coordsX < 11 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/5

# B3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=11,pkw2_bonus2=2}] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/b/6