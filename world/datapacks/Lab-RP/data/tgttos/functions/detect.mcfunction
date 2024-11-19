
# Feed Mode override ## HAS SERIOUS ISSUES （所以物品发送过多到底是怎么绘事）
execute if score feed_mode_active tgttos_game matches 1 run function tgttos:feed_mode_detect

# Round Time
scoreboard players add round_time_tick tgttos_game 1

scoreboard players operation round_time_second tgttos_game = round_time_tick tgttos_game
scoreboard players operation round_time_second tgttos_game /= 20 math

scoreboard players operation round_time_minute tgttos_game = round_time_second tgttos_game
scoreboard players operation round_time_minute tgttos_game /= 60 math

scoreboard players operation round_time_second tgttos_game %= 60 math

# 1
execute as @a[scores={tgttos_finish=1..}] at @s run function tgttos:player_action/round_complete

# Clear all saturated chickens in FEED MODE
execute if score feed_mode_active tgttos_game matches 1 as @e[type=chicken,nbt={InLove:599}] at @s run data modify entity @s InLove set value 0

execute if score feed_mode_active tgttos_game matches 1 as @a[team=!spec,gamemode=!spectator,nbt=!{Inventory:[{id:"minecraft:wheat_seeds"}]}] run loot give @s loot tgttos:seed

# Player Attacks
scoreboard players add @a[advancements={utils:dealt_damage_to_player=true}] tgttos_recap_punches 1
advancement revoke @a only utils:dealt_damage_to_player

# Cleanup
execute as @a[scores={tgttos_finish=1..}] if score Finished tgttos_game = TotalPlayers tgttos_game run function tgttos:end_round
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function tgttos:end_round

# Play Recap
execute as @r[scores={tgttos_recap_played=0,tgttos_recap_r6=1..}] run function tgttos:player_action/play_recap


scoreboard players set @a tgttos_finish 0
scoreboard players set @a dropseed 0
execute if score gameflag tgttos_game matches 1 run schedule function tgttos:detect 1t