
tellraw @s "Cleared ALL previous entries"

scoreboard objectives remove rsr_map_register_global
scoreboard objectives remove rsr_pos_stru_x_classic
scoreboard objectives remove rsr_pos_arrow_x_classic
scoreboard objectives remove rsr_pos_center_x_classic
scoreboard objectives remove rsr_pos_stru_y_classic
scoreboard objectives remove rsr_pos_arrow_y_classic
scoreboard objectives remove rsr_pos_center_y_classic
scoreboard objectives remove rsr_pos_stru_z_classic
scoreboard objectives remove rsr_pos_arrow_z_classic
scoreboard objectives remove rsr_pos_center_z_classic

scoreboard objectives add rsr_map_register_global dummy
scoreboard objectives setdisplay sidebar rsr_map_register_global

scoreboard objectives add rsr_pos_stru_x_classic dummy
scoreboard objectives add rsr_pos_arrow_x_classic dummy
scoreboard objectives add rsr_pos_center_x_classic dummy

scoreboard objectives add rsr_pos_stru_y_classic dummy
scoreboard objectives add rsr_pos_arrow_y_classic dummy
scoreboard objectives add rsr_pos_center_y_classic dummy

scoreboard objectives add rsr_pos_stru_z_classic dummy
scoreboard objectives add rsr_pos_arrow_z_classic dummy
scoreboard objectives add rsr_pos_center_z_classic dummy

scoreboard players set stru rsr_map_register_global 1
scoreboard players set arrow rsr_map_register_global 1
scoreboard players set center rsr_map_register_global 1