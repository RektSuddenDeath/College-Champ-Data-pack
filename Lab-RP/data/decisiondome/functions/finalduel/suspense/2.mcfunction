
execute if score TeamOne db_teams matches 1 run title @a subtitle ["",{"translate":"team.red"}]
execute if score TeamOne db_teams matches 2 run title @a subtitle ["",{"translate":"team.blue"}]
execute if score TeamOne db_teams matches 3 run title @a subtitle ["",{"translate":"team.green"}]
execute if score TeamOne db_teams matches 4 run title @a subtitle ["",{"translate":"team.yellow"}]
execute if score TeamOne db_teams matches 5 run title @a subtitle ["",{"translate":"team.cyan"}]
execute if score TeamOne db_teams matches 8 run title @a subtitle ["",{"translate":"team.pink"}]
execute if score TeamOne db_teams matches 6 run title @a subtitle ["",{"translate":"team.orange"}]
execute if score TeamOne db_teams matches 7 run title @a subtitle ["",{"translate":"team.purple"}]

execute as @a at @s run playsound block.note_block.pling record @s ~ ~ ~ 2 1