
tellraw @a " "
tellraw @a " "

scoreboard players set red announced 0
scoreboard players set blue announced 0
scoreboard players set green announced 0
scoreboard players set yellow announced 0

#Pos 1 Draw Tolerants.
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"tgttos_teamscore"},"color":"white"}]
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set red announced 1

execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"tgttos_teamscore"},"color":"white"}]
execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set blue announced 1

execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"tgttos_teamscore"},"color":"white"}]
execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set green announced 1

execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"tgttos_teamscore"},"color":"white"}]
execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red tgttos_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue tgttos_teamscore -1
execute if score green announced matches 1 run scoreboard players set green tgttos_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow tgttos_teamscore -1


#Pos 2
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"tgttos_teamscore"},"color":"white"}]
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set red announced 1

execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"tgttos_teamscore"},"color":"white"}]
execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set blue announced 1

execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"tgttos_teamscore"},"color":"white"}]
execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set green announced 1

execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"tgttos_teamscore"},"color":"white"}]
execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red tgttos_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue tgttos_teamscore -1
execute if score green announced matches 1 run scoreboard players set green tgttos_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow tgttos_teamscore -1


#Pos 3
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"tgttos_teamscore"},"color":"white"}]
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set red announced 1

execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"tgttos_teamscore"},"color":"white"}]
execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set blue announced 1

execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"tgttos_teamscore"},"color":"white"}]
execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set green announced 1

execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"tgttos_teamscore"},"color":"white"}]
execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red tgttos_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue tgttos_teamscore -1
execute if score green announced matches 1 run scoreboard players set green tgttos_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow tgttos_teamscore -1


#Pos 4
execute if score red tgttos_teamscore matches 0.. if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"tgttos_teamscore"},"color":"white"}]
execute if score red tgttos_teamscore >= blue tgttos_teamscore if score red tgttos_teamscore >= green tgttos_teamscore if score red tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set red announced 1

execute if score blue tgttos_teamscore matches 0.. if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"tgttos_teamscore"},"color":"white"}]
execute if score blue tgttos_teamscore >= red tgttos_teamscore if score blue tgttos_teamscore >= green tgttos_teamscore if score blue tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set blue announced 1

execute if score green tgttos_teamscore matches 0.. if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"tgttos_teamscore"},"color":"white"}]
execute if score green tgttos_teamscore >= blue tgttos_teamscore if score green tgttos_teamscore >= red tgttos_teamscore if score green tgttos_teamscore >= yellow tgttos_teamscore run scoreboard players set green announced 1

execute if score yellow tgttos_teamscore matches 0.. if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"tgttos_teamscore"},"color":"white"}]
execute if score yellow tgttos_teamscore >= blue tgttos_teamscore if score yellow tgttos_teamscore >= green tgttos_teamscore if score yellow tgttos_teamscore >= red tgttos_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red tgttos_teamscore 0
execute if score blue announced matches 1 run scoreboard players set blue tgttos_teamscore 0
execute if score green announced matches 1 run scoreboard players set green tgttos_teamscore 0
execute if score yellow announced matches 1 run scoreboard players set yellow tgttos_teamscore 0

tellraw @a [{"text":"\n\n"}]
#Game Multiplier
#Clears tgttos_teamscore
