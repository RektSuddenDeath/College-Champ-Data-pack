
execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX > ending_left pkw2_cp_coords_x if score @s pkw2_coordsZ > 37 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX > ending_left pkw2_cp_coords_x if score @s pkw2_coordsZ > 37 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 20
execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX > ending_left pkw2_cp_coords_x if score @s pkw2_coordsZ > 37 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 37

execute as @a[team=!spec,scores={pkw2_cp=37},gamemode=!spectator] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/f/easy