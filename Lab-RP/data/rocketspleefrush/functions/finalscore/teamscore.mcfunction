
tellraw @a " "
tellraw @a " "

#Pos 1 Draw Tolerants.
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"rsr_teamscore"},"color":"white"}]
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run scoreboard players set red announced 1

execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"rsr_teamscore"},"color":"white"}]
execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run scoreboard players set blue announced 1

execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"rsr_teamscore"},"color":"white"}]
execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run scoreboard players set green announced 1

execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"rsr_teamscore"},"color":"white"}]
execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red rsr_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue rsr_teamscore -1
execute if score green announced matches 1 run scoreboard players set green rsr_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow rsr_teamscore -1


#Pos 2
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"rsr_teamscore"},"color":"white"}]
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run scoreboard players set red announced 1

execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"rsr_teamscore"},"color":"white"}]
execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run scoreboard players set blue announced 1

execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"rsr_teamscore"},"color":"white"}]
execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run scoreboard players set green announced 1

execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"rsr_teamscore"},"color":"white"}]
execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red rsr_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue rsr_teamscore -1
execute if score green announced matches 1 run scoreboard players set green rsr_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow rsr_teamscore -1


#Pos 3
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"rsr_teamscore"},"color":"white"}]
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run scoreboard players set red announced 1

execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"rsr_teamscore"},"color":"white"}]
execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run scoreboard players set blue announced 1

execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"rsr_teamscore"},"color":"white"}]
execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run scoreboard players set green announced 1

execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"rsr_teamscore"},"color":"white"}]
execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red rsr_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue rsr_teamscore -1
execute if score green announced matches 1 run scoreboard players set green rsr_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow rsr_teamscore -1


#Pos 4
execute if score red rsr_teamscore matches 0.. if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"rsr_teamscore"},"color":"white"}]
execute if score red rsr_teamscore >= blue rsr_teamscore if score red rsr_teamscore >= green rsr_teamscore if score red rsr_teamscore >= yellow rsr_teamscore run scoreboard players set red announced 1

execute if score blue rsr_teamscore matches 0.. if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"rsr_teamscore"},"color":"white"}]
execute if score blue rsr_teamscore >= red rsr_teamscore if score blue rsr_teamscore >= green rsr_teamscore if score blue rsr_teamscore >= yellow rsr_teamscore run scoreboard players set blue announced 1

execute if score green rsr_teamscore matches 0.. if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"rsr_teamscore"},"color":"white"}]
execute if score green rsr_teamscore >= blue rsr_teamscore if score green rsr_teamscore >= red rsr_teamscore if score green rsr_teamscore >= yellow rsr_teamscore run scoreboard players set green announced 1

execute if score yellow rsr_teamscore matches 0.. if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"rsr_teamscore"},"color":"white"}]
execute if score yellow rsr_teamscore >= blue rsr_teamscore if score yellow rsr_teamscore >= green rsr_teamscore if score yellow rsr_teamscore >= red rsr_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red rsr_teamscore 0
execute if score blue announced matches 1 run scoreboard players set blue rsr_teamscore 0
execute if score green announced matches 1 run scoreboard players set green rsr_teamscore 0
execute if score yellow announced matches 1 run scoreboard players set yellow rsr_teamscore 0

tellraw @a [{"text":"\n\n"}]
#Game Multiplier
#Clears rsr_teamscore
