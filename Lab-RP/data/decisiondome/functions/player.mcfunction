
# Enable the elevator
execute unless score crashed elevatorjoke matches 1 run function decisiondome:elevator
# Make player unable to attack in lobby
execute as @a[tag=!admin_immune] run attribute @s generic.attack_damage base set -1
#
scoreboard players set Online tourney_stats 0
execute as @a[team=!spec] run scoreboard players add Online tourney_stats 1
# Online Player Display
execute if score Online tourney_stats matches 0 run team modify placeholder_2 suffix "0"
execute if score Online tourney_stats matches 1 run team modify placeholder_2 suffix "1"
execute if score Online tourney_stats matches 2 run team modify placeholder_2 suffix "2"
execute if score Online tourney_stats matches 3 run team modify placeholder_2 suffix "3"
execute if score Online tourney_stats matches 4 run team modify placeholder_2 suffix "4"
execute if score Online tourney_stats matches 5 run team modify placeholder_2 suffix "5"
execute if score Online tourney_stats matches 6 run team modify placeholder_2 suffix "6"
execute if score Online tourney_stats matches 7 run team modify placeholder_2 suffix "7"
execute if score Online tourney_stats matches 8 run team modify placeholder_2 suffix "8"
execute if score Online tourney_stats matches 9 run team modify placeholder_2 suffix "9"
execute if score Online tourney_stats matches 10 run team modify placeholder_2 suffix "10"
execute if score Online tourney_stats matches 11 run team modify placeholder_2 suffix "11"
execute if score Online tourney_stats matches 12 run team modify placeholder_2 suffix "12"
execute if score Online tourney_stats matches 13 run team modify placeholder_2 suffix "13"
execute if score Online tourney_stats matches 14 run team modify placeholder_2 suffix "14"
execute if score Online tourney_stats matches 15 run team modify placeholder_2 suffix "15"
execute if score Online tourney_stats matches 16 run team modify placeholder_2 suffix "16"
execute if score Online tourney_stats matches 17 run team modify placeholder_2 suffix "17"
execute if score Online tourney_stats matches 18 run team modify placeholder_2 suffix "18"
execute if score Online tourney_stats matches 19 run team modify placeholder_2 suffix "19"
execute if score Online tourney_stats matches 20 run team modify placeholder_2 suffix "20"
execute if score Online tourney_stats matches 21 run team modify placeholder_2 suffix "21"
execute if score Online tourney_stats matches 22 run team modify placeholder_2 suffix "22"
execute if score Online tourney_stats matches 23 run team modify placeholder_2 suffix "23"
execute if score Online tourney_stats matches 24 run team modify placeholder_2 suffix "24"
execute if score Online tourney_stats matches 25 run team modify placeholder_2 suffix "25"
execute if score Online tourney_stats matches 26 run team modify placeholder_2 suffix "26"
execute if score Online tourney_stats matches 27 run team modify placeholder_2 suffix "27"
execute if score Online tourney_stats matches 28 run team modify placeholder_2 suffix "28"
execute if score Online tourney_stats matches 29 run team modify placeholder_2 suffix "29"
execute if score Online tourney_stats matches 30 run team modify placeholder_2 suffix "30"
execute if score Online tourney_stats matches 31 run team modify placeholder_2 suffix "31"
execute if score Online tourney_stats matches 32 run team modify placeholder_2 suffix "32"
execute if score Online tourney_stats matches 33 run team modify placeholder_2 suffix "33"
execute if score Online tourney_stats matches 34 run team modify placeholder_2 suffix "34"
execute if score Online tourney_stats matches 35 run team modify placeholder_2 suffix "35"
execute if score Online tourney_stats matches 36 run team modify placeholder_2 suffix "36"
execute if score Online tourney_stats matches 37 run team modify placeholder_2 suffix "37"
execute if score Online tourney_stats matches 38 run team modify placeholder_2 suffix "38"
execute if score Online tourney_stats matches 39 run team modify placeholder_2 suffix "39"
execute if score Online tourney_stats matches 40 run team modify placeholder_2 suffix "40"
execute if score Online tourney_stats matches 41.. run team modify placeholder_2 suffix "41+"
# Loop
execute if score lobby tourney_stats matches 1 run schedule function decisiondome:player 1t