
scoreboard objectives add gr_ot_reduce dummy

scoreboard players set overtime gr_game 1
scoreboard players set overtimesec gr_game 0
scoreboard players set reducedScore gr_game 4
scoreboard players set reduceSec gr_game -1

schedule clear master:timer/timeleft/sec
scoreboard players set minute master.timer 4
scoreboard players set second master.timer 60
scoreboard players set pause master.timer 0
function gr:overtime/sec

tellraw @a ["","[","§c☠","] ","§c§l加时§r已开始！ 游戏将继续进行至加时§c超时§f或有§c3§f个队伍完成全部挑战。完成积分将随着时间§c§l逐渐流失§f!"]
execute as @a at @s run playsound minecraft:sound.generalshrinkwarn record @s