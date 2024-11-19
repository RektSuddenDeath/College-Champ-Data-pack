 
execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_bonus5=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 30 pkw2_cp_coords_x run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_bonus5=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 30 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=29,pkw2_bonus5=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 30 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 30
# RETURN TO SHRINE
execute as @a[team=!spec,scores={pkw2_cp=30..32,pkw2_onGround=1}] if score @s pkw2_coordsX > 30 pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=30..32,pkw2_onGround=1}] if score @s pkw2_coordsX > 30 pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 29
# B1 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=30,pkw2_bonus5=0,pkw2_onGround=1}] if score @s pkw2_coordsX < 31 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/13
# B2 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=31,pkw2_bonus5=1,pkw2_onGround=1}] if score @s pkw2_coordsX < 32 pkw2_cp_coords_x run function pkw2:checkpoint/clear/b/14

# B3 CLEAR
execute as @a[team=!spec,scores={pkw2_cp=32,pkw2_bonus5=2}] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/b/15