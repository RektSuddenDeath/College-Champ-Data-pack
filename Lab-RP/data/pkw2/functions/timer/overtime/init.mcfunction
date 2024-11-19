
title @a[gamemode=adventure] times 10 40 10
title @a[gamemode=adventure] title "§c§l加时"
title @a[gamemode=adventure] subtitle "不要掉下去！"

tellraw @a ["","§c[§r鼱§c] ","§c§l加时§r已开始！ 所有剩余玩家有§c§l最后30秒§r和§6§l一次机会§r来完成比赛。 如果你掉出了地图，你就淘汰了！"]
execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s



# Time Adjustment
schedule clear master:timer/timeleft/sec
scoreboard players set minute master.timer 0
scoreboard players set second master.timer 31
scoreboard players set pause master.timer 0
function pkw2:timer/overtime/sec

scoreboard players set Overtime pkw2_game 1
stopsound @a voice
schedule clear pkw2:music/loop
function master:overtime/init

scoreboard players set bartick pkw2_game 0
scoreboard players set extra_bartick pkw2_game 0
worldborder warning distance 30000000