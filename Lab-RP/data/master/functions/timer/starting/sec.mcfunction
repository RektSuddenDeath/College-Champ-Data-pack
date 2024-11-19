schedule clear master:timer/decisiondome/sec

# PAUSE TIMER AND AUTO RESUME
execute if score pause master.timer matches 0 run scoreboard players set paused_for master.timer 0
execute if score pause master.timer matches 1 run scoreboard players add paused_for master.timer 1

execute if score pause master.timer matches 1 if score paused_for master.timer matches 240.. run function master:timer/resume_timeout


execute if score second master.timer matches 0.. if score minute master.timer matches 0.. if score pause master.timer matches 0 run scoreboard players remove second master.timer 1

execute if score second master.timer matches -1 if score minute master.timer matches 0 run scoreboard players set second master.timer 0
execute if score second master.timer matches -1 if score minute master.timer matches 1.. run scoreboard players remove minute master.timer 1
execute if score second master.timer matches -1 if score minute master.timer matches 0..4 run scoreboard players set second master.timer 59


#
execute if score second master.timer matches 0.. if score minute master.timer matches 3 run team modify timer prefix [{"text":"游戏开始: ","color":"red"},{"text":"3","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 2 run team modify timer prefix [{"text":"游戏开始: ","color":"red"},{"text":"2","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 1 run team modify timer prefix [{"text":"游戏开始: ","color":"red"},{"text":"1","color":"white"}]
execute if score second master.timer matches 0.. if score minute master.timer matches 0 run team modify timer prefix [{"text":"游戏开始: ","color":"red"},{"text":"0","color":"white"}]

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

function master:timer/starting/macro_time_uniform with storage generic.timer

execute if score pause master.timer matches 1 run title @a actionbar ["§c§l游戏已暂停","§7 - ",{"score":{"name": "paused_for","objective": "master.timer"},"color":"gold"},"§7/240s"]
execute if score second master.timer matches 0 if score minute master.timer matches 0 run scoreboard players set pause master.timer 1
execute if score second master.timer matches 0.. if score minute master.timer matches 0.. run schedule function master:timer/starting/sec 1s

