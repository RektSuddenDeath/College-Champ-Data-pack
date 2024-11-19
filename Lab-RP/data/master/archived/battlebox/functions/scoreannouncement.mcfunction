
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"\n\n"},{"text":"游戏积分情况: ","color":"yellow","bold":true},{"text":"\n\n"}]]

#Pos 1 Draw Tolerants.
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"bb_teamscore"},"color":"white"}]
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set red announced 1

execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"bb_teamscore"},"color":"white"}]
execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set blue announced 1

execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"bb_teamscore"},"color":"white"}]
execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set green announced 1

execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"bb_teamscore"},"color":"white"}]
execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red bb_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue bb_teamscore -1
execute if score green announced matches 1 run scoreboard players set green bb_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow bb_teamscore -1


#Pos 2
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"bb_teamscore"},"color":"white"}]
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set red announced 1

execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"bb_teamscore"},"color":"white"}]
execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set blue announced 1

execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"bb_teamscore"},"color":"white"}]
execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set green announced 1

execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"bb_teamscore"},"color":"white"}]
execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red bb_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue bb_teamscore -1
execute if score green announced matches 1 run scoreboard players set green bb_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow bb_teamscore -1


#Pos 3
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"bb_teamscore"},"color":"white"}]
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set red announced 1

execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"bb_teamscore"},"color":"white"}]
execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set blue announced 1

execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"bb_teamscore"},"color":"white"}]
execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set green announced 1

execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"bb_teamscore"},"color":"white"}]
execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red bb_teamscore -1
execute if score blue announced matches 1 run scoreboard players set blue bb_teamscore -1
execute if score green announced matches 1 run scoreboard players set green bb_teamscore -1
execute if score yellow announced matches 1 run scoreboard players set yellow bb_teamscore -1


#Pos 4
execute if score red bb_teamscore matches 0.. if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"bb_teamscore"},"color":"white"}]
execute if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set red announced 1

execute if score blue bb_teamscore matches 0.. if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"bb_teamscore"},"color":"white"}]
execute if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set blue announced 1

execute if score green bb_teamscore matches 0.. if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"bb_teamscore"},"color":"white"}]
execute if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set green announced 1

execute if score yellow bb_teamscore matches 0.. if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"bb_teamscore"},"color":"white"}]
execute if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red bb_teamscore 0
execute if score blue announced matches 1 run scoreboard players set blue bb_teamscore 0
execute if score green announced matches 1 run scoreboard players set green bb_teamscore 0
execute if score yellow announced matches 1 run scoreboard players set yellow bb_teamscore 0

tellraw @a [{"text":"\n\n"}]
#Game Multiplier
#Clears bb_teamscore
