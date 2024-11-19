

$scoreboard players set $(island_no) rsr_pos_$(type)_x_classic $(x)
$scoreboard players set $(island_no) rsr_pos_$(type)_y_classic $(y)
$scoreboard players set $(island_no) rsr_pos_$(type)_z_classic $(z)

$tellraw @s ["Classic map §e$(type)§f anchor §b#$(island_no)§f has been set to §a$(x)§f,§a$(y)§f,§a$(z)§f,"]
$scoreboard players add $(type) rsr_map_register_global 1