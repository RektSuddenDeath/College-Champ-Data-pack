
tellraw @a " "
tellraw @a " "

#Pos 1 Draw Tolerants.
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"hitw_teamscore"},"color":"white"}]
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run scoreboard players set red announced 1

execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"hitw_teamscore"},"color":"white"}]
execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run scoreboard players set blue announced 1

execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"hitw_teamscore"},"color":"white"}]
execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run scoreboard players set green announced 1

execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"hitw_teamscore"},"color":"white"}]
execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red hitw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue hitw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green hitw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow hitw_teamscore -1


#Pos 2
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"hitw_teamscore"},"color":"white"}]
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run scoreboard players set red announced 1

execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"hitw_teamscore"},"color":"white"}]
execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run scoreboard players set blue announced 1

execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"hitw_teamscore"},"color":"white"}]
execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run scoreboard players set green announced 1

execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"hitw_teamscore"},"color":"white"}]
execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red hitw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue hitw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green hitw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow hitw_teamscore -1


#Pos 3
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"hitw_teamscore"},"color":"white"}]
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run scoreboard players set red announced 1

execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"hitw_teamscore"},"color":"white"}]
execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run scoreboard players set blue announced 1

execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"hitw_teamscore"},"color":"white"}]
execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run scoreboard players set green announced 1

execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"hitw_teamscore"},"color":"white"}]
execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red hitw_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue hitw_teamscore -1
execute if score green announced matches 1 run scoreboard players set green hitw_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow hitw_teamscore -1


#Pos 4
execute if score red hitw_teamscore matches 0.. if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"hitw_teamscore"},"color":"white"}]
execute if score red hitw_teamscore >= blue hitw_teamscore if score red hitw_teamscore >= green hitw_teamscore if score red hitw_teamscore >= yellow hitw_teamscore run scoreboard players set red announced 1

execute if score blue hitw_teamscore matches 0.. if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"hitw_teamscore"},"color":"white"}]
execute if score blue hitw_teamscore >= red hitw_teamscore if score blue hitw_teamscore >= green hitw_teamscore if score blue hitw_teamscore >= yellow hitw_teamscore run scoreboard players set blue announced 1

execute if score green hitw_teamscore matches 0.. if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"hitw_teamscore"},"color":"white"}]
execute if score green hitw_teamscore >= blue hitw_teamscore if score green hitw_teamscore >= red hitw_teamscore if score green hitw_teamscore >= yellow hitw_teamscore run scoreboard players set green announced 1

execute if score yellow hitw_teamscore matches 0.. if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"hitw_teamscore"},"color":"white"}]
execute if score yellow hitw_teamscore >= blue hitw_teamscore if score yellow hitw_teamscore >= green hitw_teamscore if score yellow hitw_teamscore >= red hitw_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red hitw_teamscore 0
execute if score blue announced matches 1 run scoreboard players set blue hitw_teamscore 0
execute if score green announced matches 1 run scoreboard players set green hitw_teamscore 0
execute if score yellow announced matches 1 run scoreboard players set yellow hitw_teamscore 0

tellraw @a [{"text":"\n\n"}]
#Game Multiplier
#Clears hitw_teamscore
