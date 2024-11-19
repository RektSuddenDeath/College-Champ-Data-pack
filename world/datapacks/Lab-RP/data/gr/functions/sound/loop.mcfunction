
execute unless score OvertimeActive OvertimeMusic matches 1 as @a[tag=!gr_stopmusic,tag=!mutemusic] at @s run playsound gr.loop voice @s
execute unless score OvertimeActive OvertimeMusic matches 1 run schedule function gr:sound/loop 2613t
