
execute as @e[type=marker,tag=railroadrush_mapgenanch] run scoreboard players add @s railroadrush_gen 1

execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 1 run function railroadrush:mapgen_haunted/structure_type/cp/start

execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 2 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 3 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 4 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 5 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 6 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 7 run function railroadrush:mapgen_haunted/structure_type/cp/checkpoint

execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 8 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 9 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 10 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 11 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 12 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 13 run function railroadrush:mapgen_haunted/structure_type/cp/checkpoint

execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 14 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 15 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 16 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 17 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 18 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 19 run function railroadrush:mapgen_haunted/structure_type/cp/checkpoint

execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 20 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 21 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 22 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 23 run function railroadrush:mapgen_haunted/structure_type/random_connector with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 24 run function railroadrush:mapgen_haunted/structure_type/random_obstacle with storage rrr:gen
execute as @e[type=marker,tag=railroadrush_mapgenanch] at @s if score @s railroadrush_gen matches 25 run function railroadrush:mapgen_haunted/structure_type/cp/finish

execute as @e[type=marker,tag=railroadrush_mapgenanch] if score @s railroadrush_gen matches 1..24 run schedule function railroadrush:mapgen_haunted/loop 1t