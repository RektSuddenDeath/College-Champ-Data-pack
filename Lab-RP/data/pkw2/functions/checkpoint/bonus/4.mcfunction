 
execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_bonus4=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 23 pkw2_cp_coords_x run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_bonus4=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 23 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=22,pkw2_bonus4=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 23 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 23
# RETURN TO SHRINE
execute as @a[team=!spec,scores={pkw2_cp=23..25,pkw2_onGround=1}] if score @s pkw2_coordsX > 23 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=23..25,pkw2_onGround=1}] if score @s pkw2_coordsX > 23 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 22
# B1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=23,pkw2_bonus4=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 24 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/10

# B2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=24,pkw2_bonus4=1,pkw2_onGround=1}] if score @s pkw2_coordsX < 25 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/11

# B3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=25,pkw2_bonus4=2}] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/b/12