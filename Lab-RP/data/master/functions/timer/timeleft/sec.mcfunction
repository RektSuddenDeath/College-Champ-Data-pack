
execute if score second master.timer matches 0.. if score minute master.timer matches 0.. if score pause master.timer matches 0 run scoreboard players remove second master.timer 1

execute if score second master.timer matches -1 if score minute master.timer matches 0 run scoreboard players set second master.timer 0
execute if score second master.timer matches -1 if score minute master.timer matches 1..19 unless score pause master.timer matches 1 run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~
execute if score second master.timer matches -1 if score minute master.timer matches 1..19 run scoreboard players remove minute master.timer 1
execute if score second master.timer matches -1 if score minute master.timer matches 0..19 run scoreboard players set second master.timer 59

#

execute if score second master.timer matches 0.. if score minute master.timer matches 19 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"19","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 18 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"18","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 17 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"17","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 16 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"16","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 15 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"15","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 14 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"14","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 13 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"13","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 12 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"12","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 11 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"11","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 10 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"10","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 9 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"9","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 8 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"8","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 7 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"7","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 6 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"6","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 5 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"5","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 4 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"4","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 3 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"3","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 2 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"2","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 1 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"1","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 0 run team modify timer prefix [{"text":"剩余时间: ","color":"red"},{"text":"0","color":"white"}]

execute if score second master.timer matches 59 run team modify timer suffix "59"
execute if score second master.timer matches 58 run team modify timer suffix "58"
execute if score second master.timer matches 57 run team modify timer suffix "57"
execute if score second master.timer matches 56 run team modify timer suffix "56"
execute if score second master.timer matches 55 run team modify timer suffix "55"
execute if score second master.timer matches 54 run team modify timer suffix "54"
execute if score second master.timer matches 53 run team modify timer suffix "53"
execute if score second master.timer matches 52 run team modify timer suffix "52"
execute if score second master.timer matches 51 run team modify timer suffix "51"
execute if score second master.timer matches 50 run team modify timer suffix "50"

execute if score second master.timer matches 49 run team modify timer suffix "49"
execute if score second master.timer matches 48 run team modify timer suffix "48"
execute if score second master.timer matches 47 run team modify timer suffix "47"
execute if score second master.timer matches 46 run team modify timer suffix "46"
execute if score second master.timer matches 45 run team modify timer suffix "45"
execute if score second master.timer matches 44 run team modify timer suffix "44"
execute if score second master.timer matches 43 run team modify timer suffix "43"
execute if score second master.timer matches 42 run team modify timer suffix "42"
execute if score second master.timer matches 41 run team modify timer suffix "41"
execute if score second master.timer matches 40 run team modify timer suffix "40"

execute if score second master.timer matches 39 run team modify timer suffix "39"
execute if score second master.timer matches 38 run team modify timer suffix "38"
execute if score second master.timer matches 37 run team modify timer suffix "37"
execute if score second master.timer matches 36 run team modify timer suffix "36"
execute if score second master.timer matches 35 run team modify timer suffix "35"
execute if score second master.timer matches 34 run team modify timer suffix "34"
execute if score second master.timer matches 33 run team modify timer suffix "33"
execute if score second master.timer matches 32 run team modify timer suffix "32"
execute if score second master.timer matches 31 run team modify timer suffix "31"
execute if score second master.timer matches 30 run team modify timer suffix "30"

execute if score second master.timer matches 29 run team modify timer suffix "29"
execute if score second master.timer matches 28 run team modify timer suffix "28"
execute if score second master.timer matches 27 run team modify timer suffix "27"
execute if score second master.timer matches 26 run team modify timer suffix "26"
execute if score second master.timer matches 25 run team modify timer suffix "25"
execute if score second master.timer matches 24 run team modify timer suffix "24"
execute if score second master.timer matches 23 run team modify timer suffix "23"
execute if score second master.timer matches 22 run team modify timer suffix "22"
execute if score second master.timer matches 21 run team modify timer suffix "21"
execute if score second master.timer matches 20 run team modify timer suffix "20"

execute if score second master.timer matches 19 run team modify timer suffix "19"
execute if score second master.timer matches 18 run team modify timer suffix "18"
execute if score second master.timer matches 17 run team modify timer suffix "17"
execute if score second master.timer matches 16 run team modify timer suffix "16"
execute if score second master.timer matches 15 run team modify timer suffix "15"
execute if score second master.timer matches 14 run team modify timer suffix "14"
execute if score second master.timer matches 13 run team modify timer suffix "13"
execute if score second master.timer matches 12 run team modify timer suffix "12"
execute if score second master.timer matches 11 run team modify timer suffix "11"
execute if score second master.timer matches 10 run team modify timer suffix "10"

execute if score second master.timer matches 9 run team modify timer suffix "09"
execute if score second master.timer matches 8 run team modify timer suffix "08"
execute if score second master.timer matches 7 run team modify timer suffix "07"
execute if score second master.timer matches 6 run team modify timer suffix "06"
execute if score second master.timer matches 5 run team modify timer suffix "05"
execute if score second master.timer matches 4 run team modify timer suffix "04"
execute if score second master.timer matches 3 run team modify timer suffix "03"
execute if score second master.timer matches 2 run team modify timer suffix "02"
execute if score second master.timer matches 1 run team modify timer suffix "01"
execute if score second master.timer matches 0 run team modify timer suffix "00"

# Bossbar Ref
scoreboard players reset sec_pad master.timer
scoreboard players reset min_pad master.timer

execute if score second master.timer matches 0..9 run scoreboard players set sec_pad master.timer 0
execute if score minute master.timer matches 0..9 run scoreboard players set min_pad master.timer 0

data modify storage generic.timer sec_pad set value ""
data modify storage generic.timer min_pad set value ""

execute if score second master.timer matches 0..9 run data modify storage generic.timer sec_pad set value "0"
execute if score minute master.timer matches 0..9 run data modify storage generic.timer min_pad set value "0"

execute store result storage generic.timer second int 1 run scoreboard players get second master.timer
execute store result storage generic.timer minute int 1 run scoreboard players get minute master.timer

function master:timer/timeleft/macro_time_uniform with storage generic.timer

# OverTime SFX.
# Battle Box
execute if score second master.timer matches 12 if score minute master.timer matches 0 if score gameflag bb_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Parkour Tag
execute if score second master.timer matches 12 if score minute master.timer matches 0 if score gameflag pkt_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Ace Race SFX is independent.
execute if score second master.timer matches 15 if score minute master.timer matches 1 if score gameflag ar_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Build Mart
execute if score second master.timer matches 45 if score minute master.timer matches 0 if score gameflag bm_time matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Hole in the Wall
execute if score second master.timer matches 30 if score minute master.timer matches 0 if score gameflag hitw_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Parkour Warrior
# TBD
# To Get To The Other Side TGTTOS
execute if score second master.timer matches 15 if score minute master.timer matches 0 if score gameflag tgttos_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Rocket Spleef Rush
execute if score second master.timer matches 30 if score minute master.timer matches 0 if score gameflag rsr_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Sky Battle
execute if score second master.timer matches 45 if score minute master.timer matches 0 if score gameflag sba_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Grid Runners
execute if score second master.timer matches 45 if score minute master.timer matches 0 if score gameflag gr_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# RRR
#execute if score second master.timer matches 45 if score minute master.timer matches 0 if score gameflag rrr_game matches 1 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init

execute if score minute master.timer matches 0 if score second master.timer > highwarn master.timer if score second master.timer <= warn master.timer run execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~ 2
execute if score minute master.timer matches 0 if score second master.timer matches 0..30 if score second master.timer <= highwarn master.timer run execute as @a at @s run playsound sound.timer_tick_high record @s ~ ~ ~ 2

execute if score second master.timer matches 0 if score minute master.timer matches 0 run scoreboard players set pause master.timer 1
execute if score second master.timer matches 0.. if score minute master.timer matches 0.. run schedule function master:timer/timeleft/sec 1s


