
scoreboard objectives add bm_completions dummy

scoreboard players set red bm_completions 0
scoreboard players set blue bm_completions 0
scoreboard players set green bm_completions 0
scoreboard players set yellow bm_completions 0
scoreboard players set cyan bm_completions 0
scoreboard players set orange bm_completions 0
scoreboard players set pink bm_completions 0
scoreboard players set purple bm_completions 0

scoreboard objectives add bm_teamscore dummy

scoreboard players set red bm_teamscore 0
scoreboard players set blue bm_teamscore 0
scoreboard players set green bm_teamscore 0
scoreboard players set yellow bm_teamscore 0
scoreboard players set cyan bm_teamscore 0
scoreboard players set orange bm_teamscore 0
scoreboard players set pink bm_teamscore 0
scoreboard players set purple bm_teamscore 0

scoreboard objectives add bm_normalcomps dummy

scoreboard players set red bm_normalcomps 0
scoreboard players set blue bm_normalcomps 0
scoreboard players set green bm_normalcomps 0
scoreboard players set yellow bm_normalcomps 0
scoreboard players set cyan bm_normalcomps 0
scoreboard players set orange bm_normalcomps 0
scoreboard players set pink bm_normalcomps 0
scoreboard players set purple bm_normalcomps 0

scoreboard objectives add bm_goldencomps dummy

scoreboard players set red bm_goldencomps 0
scoreboard players set blue bm_goldencomps 0
scoreboard players set green bm_goldencomps 0
scoreboard players set yellow bm_goldencomps 0
scoreboard players set cyan bm_goldencomps 0
scoreboard players set orange bm_goldencomps 0
scoreboard players set pink bm_goldencomps 0
scoreboard players set purple bm_goldencomps 0

scoreboard objectives add bm_game dummy
scoreboard players set gameflag bm_game 0

scoreboard objectives remove bm_death 
scoreboard objectives add bm_death deathCount
scoreboard players set @a bm_death 0

scoreboard objectives add bm_leftplotNo dummy
scoreboard objectives add bm_midplotNo dummy
scoreboard objectives add bm_rightplotNo dummy

# scoreboard players set red bm_leftplotNo 1
# scoreboard players set blue bm_leftplotNo 1
# scoreboard players set green bm_leftplotNo 1
# scoreboard players set yellow bm_leftplotNo 1
# scoreboard players set cyan bm_leftplotNo 1
# scoreboard players set orange bm_leftplotNo 1
# scoreboard players set pink bm_leftplotNo 1
# scoreboard players set purple bm_leftplotNo 1

# scoreboard players set red bm_rightplotNo 1
# scoreboard players set blue bm_rightplotNo 1
# scoreboard players set green bm_rightplotNo 1
# scoreboard players set yellow bm_rightplotNo 1
# scoreboard players set cyan bm_rightplotNo 1
# scoreboard players set orange bm_rightplotNo 1
# scoreboard players set pink bm_rightplotNo 1
# scoreboard players set purple bm_rightplotNo 1

# scoreboard players set red bm_midplotNo 2
# scoreboard players set blue bm_midplotNo 2
# scoreboard players set green bm_midplotNo 2
# scoreboard players set yellow bm_midplotNo 2
# scoreboard players set cyan bm_midplotNo 2
# scoreboard players set orange bm_midplotNo 2
# scoreboard players set pink bm_midplotNo 2
# scoreboard players set purple bm_midplotNo 2

execute as @e[type=marker,tag=zone_left] run scoreboard players set @s bm_leftplotNo 1
execute as @e[type=marker,tag=zone_middle] run scoreboard players set @s bm_midplotNo 2
execute as @e[type=marker,tag=zone_right] run scoreboard players set @s bm_rightplotNo 1

scoreboard objectives add bm_plotNo dummy

scoreboard objectives add bm_checkstate dummy
scoreboard players set @e[type=marker,tag=bm_buildzone] bm_checkstate 0

scoreboard objectives add bm_totalDones_n dummy
scoreboard objectives add bm_totalDones_g dummy

scoreboard players set 1 bm_totalDones_n 0
scoreboard players set 2 bm_totalDones_n 0
scoreboard players set 3 bm_totalDones_n 0
scoreboard players set 4 bm_totalDones_n 0
scoreboard players set 5 bm_totalDones_n 0
scoreboard players set 6 bm_totalDones_n 0
scoreboard players set 7 bm_totalDones_n 0
scoreboard players set 8 bm_totalDones_n 0
scoreboard players set 9 bm_totalDones_n 0
scoreboard players set 10 bm_totalDones_n 0
scoreboard players set 11 bm_totalDones_n 0
scoreboard players set 12 bm_totalDones_n 0
scoreboard players set 13 bm_totalDones_n 0
scoreboard players set 14 bm_totalDones_n 0

scoreboard players set 1 bm_totalDones_g 0
scoreboard players set 2 bm_totalDones_g 0
scoreboard players set 3 bm_totalDones_g 0
scoreboard players set 4 bm_totalDones_g 0
scoreboard players set 5 bm_totalDones_g 0
scoreboard players set 6 bm_totalDones_g 0
scoreboard players set 7 bm_totalDones_g 0

scoreboard objectives add bm_compNo dummy
scoreboard objectives add bm_earnScore dummy

scoreboard objectives add bm_location dummy
scoreboard players set @a bm_location 0

scoreboard players set @a u.launchpad 0
scoreboard players set @a u.biglaunchpad 0
scoreboard players set @a bm_spdpad 0

scoreboard objectives add bm_needCopy dummy