execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX < ending_left pkw2_cp_coords_x if score @s pkw2_coordsX > ending_right pkw2_cp_coords_x if score @s pkw2_coordsZ > 38 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX < ending_left pkw2_cp_coords_x if score @s pkw2_coordsX > ending_right pkw2_cp_coords_x if score @s pkw2_coordsZ > 38 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 20
execute as @a[team=!spec,scores={pkw2_cp=36,pkw2_onGround=1}] if score @s pkw2_coordsX < ending_left pkw2_cp_coords_x if score @s pkw2_coordsX > ending_right pkw2_cp_coords_x if score @s pkw2_coordsZ > 38 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 38

execute as @a[team=!spec,scores={pkw2_cp=38,pkw2_onGround=1}] if score @s pkw2_coordsZ > 39 pkw2_cp_coords_z run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=38,pkw2_onGround=1}] if score @s pkw2_coordsZ > 39 pkw2_cp_coords_z run tellraw @s ["","§a[§r彀§a] §f你完成了 ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=32}]"},"§f!"]
execute as @a[team=!spec,scores={pkw2_cp=38,pkw2_onGround=1}] if score @s pkw2_coordsZ > 39 pkw2_cp_coords_z run scoreboard players set @s pkw2_titledelay 30
execute as @a[team=!spec,scores={pkw2_cp=38,pkw2_onGround=1}] if score @s pkw2_coordsZ > 39 pkw2_cp_coords_z run scoreboard players set @s pkw2_cp 39

execute as @a[team=!spec,scores={pkw2_cp=39},gamemode=!spectator] at @s if block ~ ~ ~ nether_portal run function pkw2:checkpoint/clear/f/medium