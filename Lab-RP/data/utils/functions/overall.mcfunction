

tellraw @a " "

scoreboard players set red announced 0
scoreboard players set blue announced 0
scoreboard players set green announced 0
scoreboard players set yellow announced 0

scoreboard objectives add overallcalculate dummy
scoreboard players operation red overallcalculate = 红队 overallscore
scoreboard players operation blue overallcalculate = 蓝队 overallscore
scoreboard players operation green overallcalculate = 绿队 overallscore
scoreboard players operation yellow overallcalculate = 黄队 overallscore
#Pos 1 Draw Tolerants.
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"1.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"overallcalculate"},"color":"white"}]
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run scoreboard players set red announced 1

execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"1.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"overallcalculate"},"color":"white"}]
execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run scoreboard players set blue announced 1

execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"1.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"overallcalculate"},"color":"white"}]
execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run scoreboard players set green announced 1

execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run tellraw @a [{"text":"1.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"overallcalculate"},"color":"white"}]
execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red overallcalculate -1
execute if score blue announced matches 1 run scoreboard players set blue overallcalculate -1
execute if score green announced matches 1 run scoreboard players set green overallcalculate -1
execute if score yellow announced matches 1 run scoreboard players set yellow overallcalculate -1


#Pos 2
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"2.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"overallcalculate"},"color":"white"}]
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run scoreboard players set red announced 1

execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"2.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"overallcalculate"},"color":"white"}]
execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run scoreboard players set blue announced 1

execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"2.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"overallcalculate"},"color":"white"}]
execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run scoreboard players set green announced 1

execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run tellraw @a [{"text":"2.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"overallcalculate"},"color":"white"}]
execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red overallcalculate -1
execute if score blue announced matches 1 run scoreboard players set blue overallcalculate -1
execute if score green announced matches 1 run scoreboard players set green overallcalculate -1
execute if score yellow announced matches 1 run scoreboard players set yellow overallcalculate -1


#Pos 3
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"3.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"overallcalculate"},"color":"white"}]
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run scoreboard players set red announced 1

execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"3.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"overallcalculate"},"color":"white"}]
execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run scoreboard players set blue announced 1

execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"3.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"overallcalculate"},"color":"white"}]
execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run scoreboard players set green announced 1

execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run tellraw @a [{"text":"3.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"overallcalculate"},"color":"white"}]
execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red overallcalculate -1
execute if score blue announced matches 1 run scoreboard players set blue overallcalculate -1
execute if score green announced matches 1 run scoreboard players set green overallcalculate -1
execute if score yellow announced matches 1 run scoreboard players set yellow overallcalculate -1


#Pos 4
execute if score red overallcalculate matches 0.. if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"4.","color":"white"},{"text":"红队: ","color":"red"},{"score":{"name":"red","objective":"overallcalculate"},"color":"white"}]
execute if score red overallcalculate >= blue overallcalculate if score red overallcalculate >= green overallcalculate if score red overallcalculate >= yellow overallcalculate run scoreboard players set red announced 1

execute if score blue overallcalculate matches 0.. if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"4.","color":"white"},{"text":"蓝队: ","color":"blue"},{"score":{"name":"blue","objective":"overallcalculate"},"color":"white"}]
execute if score blue overallcalculate >= red overallcalculate if score blue overallcalculate >= green overallcalculate if score blue overallcalculate >= yellow overallcalculate run scoreboard players set blue announced 1

execute if score green overallcalculate matches 0.. if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run tellraw @a [{"text":"4.","color":"white"},{"text":"绿队: ","color":"green"},{"score":{"name":"green","objective":"overallcalculate"},"color":"white"}]
execute if score green overallcalculate >= blue overallcalculate if score green overallcalculate >= red overallcalculate if score green overallcalculate >= yellow overallcalculate run scoreboard players set green announced 1

execute if score yellow overallcalculate matches 0.. if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run tellraw @a [{"text":"4.","color":"white"},{"text":"黄队: ","color":"yellow"},{"score":{"name":"yellow","objective":"overallcalculate"},"color":"white"}]
execute if score yellow overallcalculate >= blue overallcalculate if score yellow overallcalculate >= green overallcalculate if score yellow overallcalculate >= red overallcalculate run scoreboard players set yellow announced 1

execute if score red announced matches 1 run scoreboard players set red overallcalculate 0
execute if score blue announced matches 1 run scoreboard players set blue overallcalculate 0
execute if score green announced matches 1 run scoreboard players set green overallcalculate 0
execute if score yellow announced matches 1 run scoreboard players set yellow overallcalculate 0

scoreboard objectives remove overallcalculate