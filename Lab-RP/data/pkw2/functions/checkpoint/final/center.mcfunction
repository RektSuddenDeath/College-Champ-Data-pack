 
execute as @a[team=!spec,scores={pkw2_cp=37..,pkw2_onGround=1}] if score @s pkw2_coordsZ < 37 pkw2_cp_coords_z if score @s pkw2_coordsX < ending_left pkw2_cp_coords_x if score @s pkw2_coordsX > ending_right pkw2_cp_coords_x run title @s actionbar "§b已更新存档点"
execute as @a[team=!spec,scores={pkw2_cp=37..,pkw2_onGround=1}] if score @s pkw2_coordsZ < 37 pkw2_cp_coords_z if score @s pkw2_coordsX < ending_left pkw2_cp_coords_x if score @s pkw2_coordsX > ending_right pkw2_cp_coords_x run scoreboard players set @s pkw2_cp 36