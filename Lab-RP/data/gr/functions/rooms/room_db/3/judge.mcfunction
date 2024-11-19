
$scoreboard objectives add gr_$(team)obj dummy

$scoreboard players operation timedif gr_$(team)obj = $(team) gr_currenttime
$scoreboard players operation timedif gr_$(team)obj %= 2 math
$execute if score timedif gr_$(team)obj matches 1 as @a[team=$(team),nbt=!{SelectedItem:{tag:{modified:1b}}}] run item modify entity @s weapon.mainhand gr:art_gallery

$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~9 100 ~5 ~11 102 ~5 air destroy
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~9 100 ~9 ~11 102 ~9 air destroy
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~23 100 ~21 ~25 102 ~21 air destroy
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s run fill ~23 100 ~25 ~25 102 ~25 air destroy

$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s if blocks ~9 100 ~6 ~11 102 ~6 ~23 100 ~6 all run scoreboard players add 1 gr_$(team)obj 1
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s if blocks ~9 100 ~8 ~11 102 ~8 ~23 100 ~8 all run scoreboard players add 1 gr_$(team)obj 1
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s if blocks ~9 100 ~22 ~11 102 ~22 ~23 100 ~22 all run scoreboard players add 1 gr_$(team)obj 1
$execute as @e[type=area_effect_cloud,tag=gr_$(team)anchor] at @s if blocks ~9 100 ~24 ~11 102 ~24 ~23 100 ~24 all run scoreboard players add 1 gr_$(team)obj 1


$execute if score 1 gr_$(team)obj matches 4.. run function gr:rooms/$(room_no)/$(team)/complete
$scoreboard objectives remove gr_$(team)obj
