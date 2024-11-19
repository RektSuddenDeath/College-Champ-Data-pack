
execute if block -9956 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 1
execute if block -9956 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_1 elevatorjoke 101
execute if block -9956 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9956 101 -9986 oak_button[powered=true] run setblock -9956 101 -9985 lime_terracotta
execute if block -9956 101 -9986 oak_button[powered=true] run setblock -9956 101 -9986 air

execute if block -9957 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 2
execute if block -9957 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_2 elevatorjoke 101
execute if block -9957 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9957 101 -9986 oak_button[powered=true] run setblock -9957 101 -9985 lime_terracotta
execute if block -9957 101 -9986 oak_button[powered=true] run setblock -9957 101 -9986 air

execute if block -9958 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 3
execute if block -9958 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_3 elevatorjoke 101
execute if block -9958 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9958 101 -9986 oak_button[powered=true] run setblock -9958 101 -9985 lime_terracotta
execute if block -9958 101 -9986 oak_button[powered=true] run setblock -9958 101 -9986 air

execute if block -9959 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 4
execute if block -9959 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_4 elevatorjoke 101
execute if block -9959 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9959 101 -9986 oak_button[powered=true] run setblock -9959 101 -9985 lime_terracotta
execute if block -9959 101 -9986 oak_button[powered=true] run setblock -9959 101 -9986 air

execute if block -9960 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 5
execute if block -9960 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_5 elevatorjoke 101
execute if block -9960 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9960 101 -9986 oak_button[powered=true] run setblock -9960 101 -9985 lime_terracotta
execute if block -9960 101 -9986 oak_button[powered=true] run setblock -9960 101 -9986 air

execute if block -9961 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 6
execute if block -9961 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_6 elevatorjoke 101
execute if block -9961 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9961 101 -9986 oak_button[powered=true] run setblock -9961 101 -9985 lime_terracotta
execute if block -9961 101 -9986 oak_button[powered=true] run setblock -9961 101 -9986 air

execute if block -9962 101 -9986 oak_button[powered=true] run scoreboard players set remix_mode tourney_stats 7
execute if block -9962 101 -9986 oak_button[powered=true] run scoreboard players set cooldown_7 elevatorjoke 101
execute if block -9962 101 -9986 oak_button[powered=true] run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if block -9962 101 -9986 oak_button[powered=true] run setblock -9962 101 -9985 lime_terracotta
execute if block -9962 101 -9986 oak_button[powered=true] run setblock -9962 101 -9986 air


execute if score cooldown_1 elevatorjoke matches 1 run setblock -9956 101 -9986 oak_button
execute if score cooldown_2 elevatorjoke matches 1 run setblock -9957 101 -9986 oak_button
execute if score cooldown_3 elevatorjoke matches 1 run setblock -9958 101 -9986 oak_button
execute if score cooldown_4 elevatorjoke matches 1 run setblock -9959 101 -9986 oak_button
execute if score cooldown_5 elevatorjoke matches 1 run setblock -9960 101 -9986 oak_button
execute if score cooldown_6 elevatorjoke matches 1 run setblock -9961 101 -9986 oak_button
execute if score cooldown_7 elevatorjoke matches 1 run setblock -9962 101 -9986 oak_button

scoreboard players remove cooldown_1 elevatorjoke 1
scoreboard players remove cooldown_2 elevatorjoke 1
scoreboard players remove cooldown_3 elevatorjoke 1
scoreboard players remove cooldown_4 elevatorjoke 1
scoreboard players remove cooldown_5 elevatorjoke 1
scoreboard players remove cooldown_6 elevatorjoke 1
scoreboard players remove cooldown_7 elevatorjoke 1

schedule function decisiondome:elevatorjoke/11/remix_loop 1t