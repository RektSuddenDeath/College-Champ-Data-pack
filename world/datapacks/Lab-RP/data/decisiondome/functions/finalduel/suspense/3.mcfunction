
execute if score TeamOne db_teams matches 1 run title @a subtitle ["",{"translate":"team.red"}," vs."]
execute if score TeamOne db_teams matches 2 run title @a subtitle ["",{"translate":"team.blue"}," vs."]
execute if score TeamOne db_teams matches 3 run title @a subtitle ["",{"translate":"team.green"}," vs."]
execute if score TeamOne db_teams matches 4 run title @a subtitle ["",{"translate":"team.yellow"}," vs."]
execute if score TeamOne db_teams matches 5 run title @a subtitle ["",{"translate":"team.cyan"}," vs."]
execute if score TeamOne db_teams matches 8 run title @a subtitle ["",{"translate":"team.pink"}," vs."]
execute if score TeamOne db_teams matches 6 run title @a subtitle ["",{"translate":"team.orange"}," vs."]
execute if score TeamOne db_teams matches 7 run title @a subtitle ["",{"translate":"team.purple"}," vs."]

execute as @a at @s run playsound entity.item.pickup record @s ~ ~ ~ 2 1.2