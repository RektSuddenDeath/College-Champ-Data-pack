
execute store result score @s rrr_distance_this run data get entity @s Pos[0]
scoreboard players remove @s rrr_distance_this 80007

# Fix Distance
# NEEDS TESTING!!
execute if entity @s[tag=team_red,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score red rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_red,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score red rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_red,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score red rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_red,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score red rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_red,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score red rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_blue,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score blue rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_blue,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score blue rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_blue,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score blue rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_blue,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score blue rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_blue,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score blue rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_green,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score green rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_green,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score green rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_green,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score green rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_green,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score green rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_green,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score green rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_yellow,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score yellow rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_yellow,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score yellow rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_yellow,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score yellow rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_yellow,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score yellow rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_yellow,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score yellow rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_cyan,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score cyan rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_cyan,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score cyan rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_cyan,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score cyan rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_cyan,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score cyan rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_cyan,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score cyan rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_pink,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score pink rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_pink,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score pink rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_pink,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score pink rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_pink,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score pink rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_pink,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score pink rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_orange,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score orange rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_orange,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score orange rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_orange,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score orange rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_orange,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score orange rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_orange,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score orange rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425

execute if entity @s[tag=team_purple,tag=!race_in_loop] if score @s rrr_distance_this matches 26.. if score purple rrr_checkpoint_reached matches ..-1 run scoreboard players set @s rrr_distance_this 25
execute if entity @s[tag=team_purple,tag=!race_in_loop] if score @s rrr_distance_this matches 126.. if score purple rrr_checkpoint_reached matches ..0 run scoreboard players set @s rrr_distance_this 125
execute if entity @s[tag=team_purple,tag=!race_in_loop] if score @s rrr_distance_this matches 226.. if score purple rrr_checkpoint_reached matches ..1 run scoreboard players set @s rrr_distance_this 225
execute if entity @s[tag=team_purple,tag=!race_in_loop] if score @s rrr_distance_this matches 326.. if score purple rrr_checkpoint_reached matches ..2 run scoreboard players set @s rrr_distance_this 325
execute if entity @s[tag=team_purple,tag=!race_in_loop] if score @s rrr_distance_this matches 426.. if score purple rrr_checkpoint_reached matches ..3 run scoreboard players set @s rrr_distance_this 425


# 根据成环与否throw不同的反馈信息
execute if entity @s[tag=team_red,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.red"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_blue,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.blue"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_green,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.green"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_yellow,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.yellow"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_cyan,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.cyan"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_pink,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.pink"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_orange,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.orange"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]
execute if entity @s[tag=team_purple,tag=!race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.purple"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"]

execute if entity @s[tag=team_red,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.red"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_blue,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.blue"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_green,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.green"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_yellow,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.yellow"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_cyan,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.cyan"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_pink,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.pink"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_orange,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.orange"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]
execute if entity @s[tag=team_purple,tag=race_in_loop] run tellraw @a ["§b[§r褿§b] ",{"translate":"team.purple"},"§b的矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b停下了。"," §6(成环)"]

# 成绩登记
execute if entity @s[tag=team_red] run scoreboard players operation red rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_blue] run scoreboard players operation blue rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_green] run scoreboard players operation green rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_yellow] run scoreboard players operation yellow rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_cyan] run scoreboard players operation cyan rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_pink] run scoreboard players operation pink rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_orange] run scoreboard players operation orange rrr_distance_final = @s rrr_distance_this
execute if entity @s[tag=team_purple] run scoreboard players operation purple rrr_distance_final = @s rrr_distance_this

scoreboard players add race_team_finished rrr_game 1
execute if entity @s[tag=team_red] run scoreboard players operation red rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_blue] run scoreboard players operation blue rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_green] run scoreboard players operation green rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_yellow] run scoreboard players operation yellow rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_cyan] run scoreboard players operation cyan rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_pink] run scoreboard players operation pink rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_orange] run scoreboard players operation orange rrr_race_position = race_team_finished rrr_game
execute if entity @s[tag=team_purple] run scoreboard players operation purple rrr_race_position = race_team_finished rrr_game

execute if entity @s[tag=team_red] run tag @a[team=red] remove cam_locked
execute if entity @s[tag=team_blue] run tag @a[team=blue] remove cam_locked
execute if entity @s[tag=team_green] run tag @a[team=green] remove cam_locked
execute if entity @s[tag=team_yellow] run tag @a[team=yellow] remove cam_locked
execute if entity @s[tag=team_cyan] run tag @a[team=cyan] remove cam_locked
execute if entity @s[tag=team_pink] run tag @a[team=pink] remove cam_locked
execute if entity @s[tag=team_orange] run tag @a[team=orange] remove cam_locked
execute if entity @s[tag=team_purple] run tag @a[team=purple] remove cam_locked

tag @s remove rrr_minecart