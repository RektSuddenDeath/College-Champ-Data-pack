
scoreboard players add tick elevjoke5 1

execute if score tick elevjoke5 matches 1 run setblock -9955 101 -9996 sea_lantern
execute if score tick elevjoke5 matches 1 run setblock -9955 101 -10004 sea_lantern

execute if score tick elevjoke5 matches 41 run setblock -9955 102 -9996 sea_lantern
execute if score tick elevjoke5 matches 41 run setblock -9955 102 -10004 sea_lantern

execute if score tick elevjoke5 matches 101 run setblock -9955 103 -9996 sea_lantern
execute if score tick elevjoke5 matches 101 run setblock -9955 103 -10004 sea_lantern

execute if score tick elevjoke5 matches 181 run setblock -9955 104 -9996 sea_lantern
execute if score tick elevjoke5 matches 181 run setblock -9955 104 -10004 sea_lantern

execute if score tick elevjoke5 matches 240..280 run summon experience_orb -9955 104 -10000 {Tags:["elevatorjoke"]}

execute if score tick elevjoke5 matches 300 run kill @e[type=experience_orb,tag=elevatorjoke]
execute if score tick elevjoke5 matches 300 run kill @e[type=turtle,tag=elevatorjoke]
execute if score tick elevjoke5 matches 300 run summon lightning_bolt -9955 0 -10000
execute if score tick elevjoke5 matches 300 run summon chicken -9955 102 -10000 {Invulnerable:1b,Tags:["elevatorjoke"]}
execute if score tick elevjoke5 matches 300 run summon item -9955 102 -10000 {Tags:["elevatorjoke"],Item:{id:"golden_helmet",Count:1b},PickupDelay:666666}

execute if score tick elevjoke5 matches ..300 run schedule function decisiondome:elevatorjoke/5/strikeloop 1t