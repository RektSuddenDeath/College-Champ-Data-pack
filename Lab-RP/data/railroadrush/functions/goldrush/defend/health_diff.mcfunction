

execute on passengers store result score @s rrr_gold_rush_defend_this_health run data get entity @s Health
execute on passengers run scoreboard players operation @s rrr_gold_rush_defend_this_health -= @s rrr_gold_rush_defend_last_health

execute on passengers if score @s rrr_gold_rush_defend_last_health matches -2147483648..2147483647 at @s run scoreboard players operation @e[type=minecart,tag=rrr_gold_rush_defend,sort=nearest,limit=1,scores={rrr_gold_rush_defend_power=..4700}] rrr_gold_rush_defend_power -= @s rrr_gold_rush_defend_this_health
execute on passengers store result score @s rrr_gold_rush_defend_last_health run data get entity @s Health