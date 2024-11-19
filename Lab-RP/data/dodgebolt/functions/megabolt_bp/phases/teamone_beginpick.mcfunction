
clear @a
execute as @a at @s run playsound sound.mapupdate record @s

scoreboard players set teamPicking megabolt_bp 1
scoreboard players set timer megabolt_bp 900

tellraw @a[tag=db_teamone,tag=megabolt_bp_picker] ["§b[§r逌§b] 轮到你选择队伍了！将你所想要选择的队伍对应颜色放在",{"text": "石英柱","color": "#E3E3E3"},"§b上。"]
tellraw @a[tag=db_teamtwo,tag=megabolt_bp_picker] ["§6[§r逌§6] 轮到对方选择队伍。"]


execute if entity @a[team=red,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] red_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=blue,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] blue_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=green,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] green_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=yellow,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] yellow_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=cyan,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] cyan_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=pink,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] pink_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=orange,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] orange_concrete{CanPlaceOn:[quartz_pillar]}
execute if entity @a[team=purple,tag=!db_teamone,tag=!db_teamtwo] run give @a[tag=db_teamone,tag=megabolt_bp_picker] purple_concrete{CanPlaceOn:[quartz_pillar]}



execute if score teamOnePicks megabolt_bp matches 0 run setblock 17004 109 17003 quartz_pillar
execute if score teamOnePicks megabolt_bp matches 1 run setblock 17007 109 17003 quartz_pillar
execute if score teamOnePicks megabolt_bp matches 2 run setblock 17010 109 17003 quartz_pillar

execute if score teamTwoPicks megabolt_bp matches 0 run setblock 16996 109 17003 quartz_pillar
execute if score teamTwoPicks megabolt_bp matches 1 run setblock 16993 109 17003 quartz_pillar
execute if score teamTwoPicks megabolt_bp matches 2 run setblock 16990 109 17003 quartz_pillar

setblock 17006 101 17014 quartz_block
setblock 17006 101 17015 quartz_block
setblock 17006 101 17016 quartz_block
setblock 17007 101 17015 quartz_block

setblock 16994 101 17014 air
setblock 16994 101 17015 air
setblock 16994 101 17016 air
setblock 16993 101 17015 air