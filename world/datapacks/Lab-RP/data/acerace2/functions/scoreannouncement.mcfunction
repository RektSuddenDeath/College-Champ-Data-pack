
tellraw @a " "

#Pos 1 Draw Tolerants.
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"ar_results"},"color":"white"}]
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run scoreboard players set red announced 1

execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"ar_results"},"color":"white"}]
execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run scoreboard players set blue announced 1

execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"ar_results"},"color":"white"}]
execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run scoreboard players set green announced 1

execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"ar_results"},"color":"white"}]
execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red ar_results -1
execute if score blue announced matches 1 run scoreboard players set blue ar_results -1
execute if score green announced matches 1 run scoreboard players set green ar_results -1
execute if score yellow announced matches 1 run scoreboard players set yellow ar_results -1


#Pos 2
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"ar_results"},"color":"white"}]
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run scoreboard players set red announced 1

execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"ar_results"},"color":"white"}]
execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run scoreboard players set blue announced 1

execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"ar_results"},"color":"white"}]
execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run scoreboard players set green announced 1

execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"ar_results"},"color":"white"}]
execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red ar_results -1
execute if score blue announced matches 1 run scoreboard players set blue ar_results -1
execute if score green announced matches 1 run scoreboard players set green ar_results -1
execute if score yellow announced matches 1 run scoreboard players set yellow ar_results -1


#Pos 3
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"ar_results"},"color":"white"}]
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run scoreboard players set red announced 1

execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"ar_results"},"color":"white"}]
execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run scoreboard players set blue announced 1

execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"ar_results"},"color":"white"}]
execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run scoreboard players set green announced 1

execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"ar_results"},"color":"white"}]
execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red ar_results -1
execute if score blue announced matches 1 run scoreboard players set blue ar_results -1
execute if score green announced matches 1 run scoreboard players set green ar_results -1
execute if score yellow announced matches 1 run scoreboard players set yellow ar_results -1


#Pos 4
execute if score red ar_results matches 0.. if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"ar_results"},"color":"white"}]
execute if score red ar_results >= blue ar_results if score red ar_results >= green ar_results if score red ar_results >= yellow ar_results run scoreboard players set red announced 1

execute if score blue ar_results matches 0.. if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"ar_results"},"color":"white"}]
execute if score blue ar_results >= red ar_results if score blue ar_results >= green ar_results if score blue ar_results >= yellow ar_results run scoreboard players set blue announced 1

execute if score green ar_results matches 0.. if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"ar_results"},"color":"white"}]
execute if score green ar_results >= blue ar_results if score green ar_results >= red ar_results if score green ar_results >= yellow ar_results run scoreboard players set green announced 1

execute if score yellow ar_results matches 0.. if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"ar_results"},"color":"white"}]
execute if score yellow ar_results >= blue ar_results if score yellow ar_results >= green ar_results if score yellow ar_results >= red ar_results run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red ar_results 0
execute if score blue announced matches 1 run scoreboard players set blue ar_results 0
execute if score green announced matches 1 run scoreboard players set green ar_results 0
execute if score yellow announced matches 1 run scoreboard players set yellow ar_results 0

tellraw @a " "
#Game Multiplier
#Clears ar_results
#clears scoreboard
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
