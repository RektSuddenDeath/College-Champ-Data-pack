
tellraw @a ["","[",{"text": "☠","color":"red"},"] ",{"selector":"@s"},"§7被淘汰了。"]
tp @s ~ 105 ~ 270 0

title @s title "§c§l被淘汰！"
title @s subtitle ["","§7通过了",{"score":{"name": "platform","objective": "mg_df_game"},"color": "dark_aqua"},"§7座平台。"]
title @s times 0 40 20

gamemode spectator @s
execute at @s run playsound sound.elimination_pop record @s
