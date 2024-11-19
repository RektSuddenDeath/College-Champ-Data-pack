
# RBGY are automatically assigned to Aqua Side, others to Magenta Side
tag @a remove turf_aqua
tag @a remove turf_magenta
tag @a[team=red] add turf_aqua
tag @a[team=blue] add turf_aqua
tag @a[team=green] add turf_aqua
tag @a[team=yellow] add turf_aqua
tag @a[team=cyan] add turf_magenta
tag @a[team=pink] add turf_magenta
tag @a[team=orange] add turf_magenta
tag @a[team=purple] add turf_magenta

# Tag
kill @e[type=marker,tag=turf_bolt_anchor]
summon marker -11123 89 -11000 {Tags:["turf_bolt_anchor","center"]}

# Structure
place template mg:turf_bolt/arena -11147 89 -11014
fill -11099 89 10986 -11099 89 -11014 magenta_carpet

# Namespaces
scoreboard objectives add mg_tb_game dummy
scoreboard players set gameflag mg_tb_game 0
scoreboard players set aqua_land mg_tb_game 24
scoreboard players set magenta_land mg_tb_game 24

scoreboard players set per_advance mg_tb_game 1
scoreboard players set advance_kill_req mg_tb_game 3
scoreboard players set field_arrows mg_tb_game 2
scoreboard players set respawn_interval mg_tb_game 12