
tellraw @a " "

#Pos 1 Draw Tolerants.
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"SotTeamBanked"},"color":"white"}]
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run scoreboard players set red announced 1

execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"SotTeamBanked"},"color":"white"}]
execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run scoreboard players set blue announced 1

execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"SotTeamBanked"},"color":"white"}]
execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run scoreboard players set green announced 1

execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"SotTeamBanked"},"color":"white"}]
execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red SotTeamBanked -1
execute if score blue announced matches 1 run scoreboard players set blue SotTeamBanked -1
execute if score green announced matches 1 run scoreboard players set green SotTeamBanked -1
execute if score yellow announced matches 1 run scoreboard players set yellow SotTeamBanked -1


#Pos 2
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"SotTeamBanked"},"color":"white"}]
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run scoreboard players set red announced 1

execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"SotTeamBanked"},"color":"white"}]
execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run scoreboard players set blue announced 1

execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"SotTeamBanked"},"color":"white"}]
execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run scoreboard players set green announced 1

execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"SotTeamBanked"},"color":"white"}]
execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red SotTeamBanked -1
execute if score blue announced matches 1 run scoreboard players set blue SotTeamBanked -1
execute if score green announced matches 1 run scoreboard players set green SotTeamBanked -1
execute if score yellow announced matches 1 run scoreboard players set yellow SotTeamBanked -1


#Pos 3
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"SotTeamBanked"},"color":"white"}]
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run scoreboard players set red announced 1

execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"SotTeamBanked"},"color":"white"}]
execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run scoreboard players set blue announced 1

execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"SotTeamBanked"},"color":"white"}]
execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run scoreboard players set green announced 1

execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"SotTeamBanked"},"color":"white"}]
execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red SotTeamBanked -1
execute if score blue announced matches 1 run scoreboard players set blue SotTeamBanked -1
execute if score green announced matches 1 run scoreboard players set green SotTeamBanked -1
execute if score yellow announced matches 1 run scoreboard players set yellow SotTeamBanked -1


#Pos 4
execute if score red SotTeamBanked matches 0.. if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"SotTeamBanked"},"color":"white"}]
execute if score red SotTeamBanked >= blue SotTeamBanked if score red SotTeamBanked >= green SotTeamBanked if score red SotTeamBanked >= yellow SotTeamBanked run scoreboard players set red announced 1

execute if score blue SotTeamBanked matches 0.. if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"SotTeamBanked"},"color":"white"}]
execute if score blue SotTeamBanked >= red SotTeamBanked if score blue SotTeamBanked >= green SotTeamBanked if score blue SotTeamBanked >= yellow SotTeamBanked run scoreboard players set blue announced 1

execute if score green SotTeamBanked matches 0.. if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"SotTeamBanked"},"color":"white"}]
execute if score green SotTeamBanked >= blue SotTeamBanked if score green SotTeamBanked >= red SotTeamBanked if score green SotTeamBanked >= yellow SotTeamBanked run scoreboard players set green announced 1

execute if score yellow SotTeamBanked matches 0.. if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"SotTeamBanked"},"color":"white"}]
execute if score yellow SotTeamBanked >= blue SotTeamBanked if score yellow SotTeamBanked >= green SotTeamBanked if score yellow SotTeamBanked >= red SotTeamBanked run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red SotTeamBanked 0
execute if score blue announced matches 1 run scoreboard players set blue SotTeamBanked 0
execute if score green announced matches 1 run scoreboard players set green SotTeamBanked 0
execute if score yellow announced matches 1 run scoreboard players set yellow SotTeamBanked 0
#Game Multiplier
#Clears SotTeamBanked
#clears scoreboard
# scoreboard objectives setdisplay sidebar.team.red
# scoreboard objectives setdisplay sidebar.team.blue
# scoreboard objectives setdisplay sidebar.team.green
# scoreboard objectives setdisplay sidebar.team.yellow
