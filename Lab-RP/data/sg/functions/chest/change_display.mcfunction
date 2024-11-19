

execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=east]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '"§c空！"'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=west]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '"§c空！"'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=south]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '"§c空！"'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=north]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '"§c空！"'

execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=east]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 1f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=west]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 1f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=south]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 1f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game if block ~ ~0.5 ~ chest[facing=north]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 1f



execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=east]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '""'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=west]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '""'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=south]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '""'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=north]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '""'

execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=east]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 0f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=west]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 0f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=south]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 0f
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s if score @s sg_chestid = gameid sg_game unless block ~ ~0.5 ~ chest[facing=north]{Items:[]} run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 0f

execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s unless score @s sg_chestid = gameid sg_game at @s run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s text set value '""'
execute in sg:sjtu as @e[type=marker,tag=sgchest] at @s unless score @s sg_chestid = gameid sg_game at @s run execute positioned ~ ~1 ~ as @e[type=text_display,sort=nearest,limit=1] run data modify entity @s shadow_radius set value 0f


execute if score gameflag sg_game matches 1 run schedule function sg:chest/change_display 10t