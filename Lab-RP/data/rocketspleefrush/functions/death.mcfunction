

execute as @a[tag=alive] run execute store result score @s rsr_playerY run data get entity @s Pos[1]
execute as @a[tag=alive] if score @s rsr_playerY < $minY rsr_playerY run tag @s add dead
#execute as @e[type=area_effect_cloud,tag=deathanchor] at @s run tag @a[tag=alive,x=-8500,z=-8500,dx=1000,dz=1000,dy=-100] add dead


# Clears the dead player's state
clear @a[tag=dead]
kill @a[tag=dead]
tag @a[tag=dead] remove alive
gamemode spectator @a[tag=dead]
scoreboard players set @a[tag=dead] rsr_dura_recharges -1
scoreboard players set @a[tag=dead] rsr_player_dura -1

function rocketspleefrush:kill/1

# Select the player's position
execute as @a[tag=dead] run scoreboard players operation @s rsr_rank = TotalPlayers rsr_game

execute as @a[tag=dead] if score round rsr_game matches 1 run scoreboard players operation @s rsr_recap_r1 = @s rsr_rank
execute as @a[tag=dead] if score round rsr_game matches 2 run scoreboard players operation @s rsr_recap_r2 = @s rsr_rank
execute as @a[tag=dead] if score round rsr_game matches 3 run scoreboard players operation @s rsr_recap_r3 = @s rsr_rank

# Recap Message
execute as @r[scores={rsr_recap_played=0,rsr_recap_r3=1..},team=!spec] run function rocketspleefrush:player_action/play_recap


# Removes the player from the alive players' pool
scoreboard players set TotalPlayers rsr_game 0
execute as @a[tag=alive] run scoreboard players add TotalPlayers rsr_game 1

execute if score TotalPlayers rsr_game matches 0 unless score devMode rsr_game matches 1 run function rocketspleefrush:end

execute as @r[team=red,tag=alive] unless entity @p[team=!red,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=blue,tag=alive] unless entity @p[team=!blue,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=green,tag=alive] unless entity @p[team=!green,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=yellow,tag=alive] unless entity @p[team=!yellow,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=cyan,tag=alive] unless entity @p[team=!cyan,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=orange,tag=alive] unless entity @p[team=!orange,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=purple,tag=alive] unless entity @p[team=!purple,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute as @r[team=pink,tag=alive] unless entity @p[team=!pink,tag=alive] unless score devMode rsr_game matches 1 run function rocketspleefrush:end


# Announce alive player count, if applicable.
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 20 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "20","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 10 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "10","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 5 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "5","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 4 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "4","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 3 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "3","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 2 run tellraw @a ["","§b[§r牖§b] ","§b剩余",{"text": "2","color": "#E3E3E3"},"§b名玩家！"]

# Plays Overtime, if there are exactly 3 Players left.
execute as @r[tag=dead] if score TotalPlayers rsr_game matches 3 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
tag @a remove dead
# Cleanup
scoreboard players set @a rsr_kills 0

scoreboard players set @a redKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0