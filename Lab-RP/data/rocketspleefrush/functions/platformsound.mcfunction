
#
execute as @e[type=item_display,tag=nextplatform] run scoreboard players remove @s rsr_platform_sound_cd 1

execute as @e[type=item_display,tag=nextplatform,tag=alert_begin,scores={rsr_platform_sound_cd=0}] run execute as @a at @s run playsound sound.platform_alert_continue record @s ~ ~ ~ 1.2 1 1
execute as @e[type=item_display,tag=nextplatform,tag=alert_begin,scores={rsr_platform_sound_cd=0}] run scoreboard players set @s rsr_platform_sound_cd 15
execute as @e[type=item_display,tag=nextplatform,tag=!alert_begin] run execute as @a at @s run playsound sound.platform_alert_begin record @s ~ ~ ~ 1.2 1 1
execute as @e[type=item_display,tag=nextplatform,tag=!alert_begin] run scoreboard players set @s rsr_platform_sound_cd 15

execute as @e[type=item_display,tag=nextplatform] run tag @s add alert_begin
execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:platformsound 1t
# 