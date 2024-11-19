 
execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_bonus1=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 2 pkw2_cp_coords_x run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_bonus1=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 2 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=1,pkw2_bonus1=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 2 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 2
# RETURN TO SHRINE
execute as @a[team=!spec,scores={pkw2_cp=2..4,pkw2_onGround=1}] if score @s pkw2_coordsX > 2 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=2..4,pkw2_onGround=1}] if score @s pkw2_coordsX > 2 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 1

# B1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=2,pkw2_bonus1=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 3 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/1

# B2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=3,pkw2_bonus1=1,pkw2_onGround=1}] if score @s pkw2_coordsX < 4 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/2

# B3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=4,pkw2_bonus1=2}] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/b/3