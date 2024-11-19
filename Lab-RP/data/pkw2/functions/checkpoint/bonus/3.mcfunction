 
execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_bonus3=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 16 pkw2_cp_coords_x run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_bonus3=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 16 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=15,pkw2_bonus3=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 16 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 16
# RETURN TO SHRINE
execute as @a[team=!spec,scores={pkw2_cp=16..18,pkw2_onGround=1}] if score @s pkw2_coordsX > 16 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=16..18,pkw2_onGround=1}] if score @s pkw2_coordsX > 16 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 15
# B1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=16,pkw2_bonus3=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 17 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/7

# B2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=17,pkw2_bonus3=1,pkw2_onGround=1}] if score @s pkw2_coordsX < 18 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/8

# B3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=18,pkw2_bonus3=2}] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/b/9