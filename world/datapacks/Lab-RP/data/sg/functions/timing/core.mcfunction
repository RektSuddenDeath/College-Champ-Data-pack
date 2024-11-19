
# 0:30 Grace Period Ends
execute if score minute master.timer matches 11 if score second master.timer matches 30 run tellraw @a ["","§e[§r獍§e] ","§e保护时间结束，PVP已开启！"]
execute if score minute master.timer matches 11 if score second master.timer matches 30 run effect clear @a resistance
execute if score minute master.timer matches 11 if score second master.timer matches 30 run execute as @a run attribute @s generic.attack_damage base set 1
execute if score minute master.timer matches 11 if score second master.timer matches 30 run scoreboard players set gamephase sg_game 2
execute if score minute master.timer matches 11 if score second master.timer matches 30 run scoreboard players set minute sg_subtimer 2
execute if score minute master.timer matches 11 if score second master.timer matches 30 run scoreboard players set second sg_subtimer 45


# 3:00 Capture Objective 1
execute if score minute master.timer matches 9 if score second master.timer matches 20 run function sg:airdrop/1/fall
execute if score minute master.timer matches 9 if score second master.timer matches 0 run function sg:airdrop/1/land

# 3:15 Shrink 1
## Prelude
execute if score minute master.timer matches 8 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 8 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 8 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 8 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 8 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 9 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 8 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 8 if score second master.timer matches 45 run scoreboard players set minute sg_subtimer 1
execute if score minute master.timer matches 8 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 60

# 4:30 Capture Objective 2
execute if score minute master.timer matches 7 if score second master.timer matches 50 run function sg:airdrop/2/fall
execute if score minute master.timer matches 7 if score second master.timer matches 30 run function sg:airdrop/2/land

# 5:15 Shrink 2
## Prelude
execute if score minute master.timer matches 6 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 6 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 6 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 6 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 6 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 7 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 6 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 6 if score second master.timer matches 45 run scoreboard players set minute sg_subtimer 1
execute if score minute master.timer matches 6 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 60

# 6:00 Capture Objective 3
execute if score minute master.timer matches 6 if score second master.timer matches 20 run function sg:airdrop/3/fall
execute if score minute master.timer matches 6 if score second master.timer matches 0 run function sg:airdrop/3/land

# 6:05 Revival Start alert
execute if score minute master.timer matches 5 if score second master.timer matches 55 run function sg:respawn/begin_alert

# 6:15 Reduce Kill PTS
execute if score minute master.timer matches 5 if score second master.timer matches 45 if score killDecay1 sg_game matches 0 run function sg:killdecay/timed_1

# 6:20 Revival Begins
execute if score minute master.timer matches 5 if score second master.timer matches 40 run function sg:respawn/begin
# 7:15 Shrink 3
## Prelude
execute if score minute master.timer matches 4 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 4 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 4 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 4 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 4 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 5 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 4 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 4 if score second master.timer matches 45 run scoreboard players set minute sg_subtimer 0
execute if score minute master.timer matches 4 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 60

# 7:30 Capture Objective 4
execute if score minute master.timer matches 4 if score second master.timer matches 50 run function sg:airdrop/4/fall
execute if score minute master.timer matches 4 if score second master.timer matches 30 run function sg:airdrop/4/land

# 8:05 Revival End Alert
execute if score minute master.timer matches 3 if score second master.timer matches 55 if score revivalActive sg_game matches 1 run function sg:respawn/end_alert

# 8:15 Shrink 4
## Prelude
execute if score minute master.timer matches 3 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 3 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 3 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 3 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 3 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 4 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 3 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 3 if score second master.timer matches 45 run scoreboard players set minute sg_subtimer 0
execute if score minute master.timer matches 3 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 60

# 8:20 Revival Ends
execute if score minute master.timer matches 3 if score second master.timer matches 40 if score revivalActive sg_game matches 1 run function sg:respawn/end
# 9:00 Capture Objective 5
execute if score minute master.timer matches 3 if score second master.timer matches 20 run function sg:airdrop/5/fall
execute if score minute master.timer matches 3 if score second master.timer matches 0 run function sg:airdrop/5/land
# 9:15 Shrink 5
## Prelude
execute if score minute master.timer matches 2 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 2 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 2 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 2 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 2 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 3 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 2 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 2 if score second master.timer matches 45 run scoreboard players set minute sg_subtimer 0
execute if score minute master.timer matches 2 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 60

# 10:15 Shrink 6
## Prelude
execute if score minute master.timer matches 1 if score second master.timer matches 50 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 1 if score second master.timer matches 49 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 1 if score second master.timer matches 48 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 1 if score second master.timer matches 47 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 1 if score second master.timer matches 46 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
## Start
execute if score minute master.timer matches 2 if score second master.timer matches 15 run function sg:border/warning
execute if score minute master.timer matches 1 if score second master.timer matches 45 run function sg:border/shrink
execute if score minute master.timer matches 1 if score second master.timer matches 45 run scoreboard players set second sg_subtimer 45
execute if score minute master.timer matches 1 if score second master.timer matches 45 run scoreboard players set gamephase sg_game 3
# 10:17 Reduce Kill PTS
execute if score minute master.timer matches 1 if score second master.timer matches 43 if score killDecay2 sg_game matches 0 run function sg:killdecay/timed_2
# 11:00 Last Stand
execute if score minute master.timer matches 1 if score second master.timer matches 15 run function sg:last_stand/warning
execute if score minute master.timer matches 1 if score second master.timer matches 0 run function sg:last_stand/start
execute if score minute master.timer matches 1 if score second master.timer matches 0 run scoreboard players set gamephase sg_game 4

# 11:30 Play Overtime
execute if score minute master.timer matches 0 if score second master.timer matches 30 run scoreboard players set OvertimeActive sg_game 1

# 12:00 Game Ends
execute if score minute master.timer matches 0 if score second master.timer matches 0 unless score devMode sg_game matches 1 run function sg:timeout

execute if score gameflag sg_game matches 1 run schedule function sg:timing/core 1s