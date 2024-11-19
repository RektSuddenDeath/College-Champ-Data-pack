
scoreboard players set gameflag mg_df_game 0

title @a title "§c§l回合结束！"
title @a subtitle ""
title @a times 0 60 20

execute as @a at @s run playsound sound.end record @s
bossbar set mg_df_timer players