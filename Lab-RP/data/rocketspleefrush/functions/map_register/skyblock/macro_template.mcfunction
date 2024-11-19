

$scoreboard players set $(island_no) rsr_pos_$(type)_x_skyblock $(x)
$scoreboard players set $(island_no) rsr_pos_$(type)_y_skyblock $(y)
$scoreboard players set $(island_no) rsr_pos_$(type)_z_skyblock $(z)

$tellraw @s ["Skyblock map §e$(type)§f anchor §b#$(island_no)§f has been set to §a$(x)§f,§a$(y)§f,§a$(z)§f,"]
$scoreboard players add $(type) rsr_map_register_global 1