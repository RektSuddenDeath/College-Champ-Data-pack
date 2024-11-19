
tellraw @a " "

#Pos 1 Draw Tolerants.
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"pkw_teamscore"},"color":"white"}]
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run scoreboard players set red announced 1

execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"pkw_teamscore"},"color":"white"}]
execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run scoreboard players set blue announced 1

execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"pkw_teamscore"},"color":"white"}]
execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run scoreboard players set green announced 1

execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"pkw_teamscore"},"color":"white"}]
execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red pkw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue pkw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green pkw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow pkw_teamscore -1


#Pos 2
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"pkw_teamscore"},"color":"white"}]
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run scoreboard players set red announced 1

execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"pkw_teamscore"},"color":"white"}]
execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run scoreboard players set blue announced 1

execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"pkw_teamscore"},"color":"white"}]
execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run scoreboard players set green announced 1

execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"pkw_teamscore"},"color":"white"}]
execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red pkw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue pkw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green pkw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow pkw_teamscore -1


#Pos 3
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"pkw_teamscore"},"color":"white"}]
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run scoreboard players set red announced 1

execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"pkw_teamscore"},"color":"white"}]
execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run scoreboard players set blue announced 1

execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"pkw_teamscore"},"color":"white"}]
execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run scoreboard players set green announced 1

execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"pkw_teamscore"},"color":"white"}]
execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red pkw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue pkw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green pkw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow pkw_teamscore -1


#Pos 4
execute if score red pkw_teamscore matches 0.. if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"pkw_teamscore"},"color":"white"}]
execute if score red pkw_teamscore >= blue pkw_teamscore if score red pkw_teamscore >= green pkw_teamscore if score red pkw_teamscore >= yellow pkw_teamscore run scoreboard players set red announced 1

execute if score blue pkw_teamscore matches 0.. if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"pkw_teamscore"},"color":"white"}]
execute if score blue pkw_teamscore >= red pkw_teamscore if score blue pkw_teamscore >= green pkw_teamscore if score blue pkw_teamscore >= yellow pkw_teamscore run scoreboard players set blue announced 1

execute if score green pkw_teamscore matches 0.. if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"pkw_teamscore"},"color":"white"}]
execute if score green pkw_teamscore >= blue pkw_teamscore if score green pkw_teamscore >= red pkw_teamscore if score green pkw_teamscore >= yellow pkw_teamscore run scoreboard players set green announced 1

execute if score yellow pkw_teamscore matches 0.. if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"pkw_teamscore"},"color":"white"}]
execute if score yellow pkw_teamscore >= blue pkw_teamscore if score yellow pkw_teamscore >= green pkw_teamscore if score yellow pkw_teamscore >= red pkw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red pkw_teamscore 0
execute if score blue announced matches 1 run scoreboard players set blue pkw_teamscore 0
execute if score green announced matches 1 run scoreboard players set green pkw_teamscore 0
execute if score yellow announced matches 1 run scoreboard players set yellow pkw_teamscore 0

tellraw @a [{"text":"\n\n"}]
#Game Multiplier
#Clears pkw_teamscore
