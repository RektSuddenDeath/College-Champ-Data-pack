
#rsr_disint_speed

$execute store result entity @s data.speed float $(accel) run data get entity @s data.speed 100000
execute store result score @s rsr_disint_speed run data get entity @s data.speed 100000
execute if score @s rsr_disint_speed matches 40000 run data modify entity @s data.speed set value 1.00f
execute if score @s rsr_disint_speed matches 40000 run tag @s add decay_complete