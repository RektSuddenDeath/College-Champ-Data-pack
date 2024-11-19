
$scoreboard objectives add gr_$(team)obj dummy

$execute at @s if block ~24 ~14 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_$(team)obj 1

$execute if score 1 gr_$(team)obj matches 8.. run function gr:rooms/$(room_no)/$(team)/complete
$scoreboard objectives remove gr_$(team)obj
