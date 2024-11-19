
$scoreboard objectives add gr_$(team)obj dummy

$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_$(team)obj 1
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s unless entity @e[type=spider,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_$(team)obj 1
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_$(team)obj 1

$execute if score 1 gr_$(team)obj matches 3.. run function gr:rooms/$(room_no)/$(team)/complete
$scoreboard objectives remove gr_$(team)obj
