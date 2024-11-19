# Times up message
tellraw @a[gamemode=!spectator,gamemode=!creative] ["§c[§r楒§c] 时间到！你没能完成本回合的挑战。"]
execute if score map tgttos_game matches 1 run function tgttos:map/basins/end
execute if score map tgttos_game matches 2 run function tgttos:map/boats/end
execute if score map tgttos_game matches 3 run function tgttos:map/caverndrive/end
execute if score map tgttos_game matches 4 run function tgttos:map/cliff/end
execute if score map tgttos_game matches 5 run function tgttos:map/doors/end
execute if score map tgttos_game matches 6 run function tgttos:map/glide/end
execute if score map tgttos_game matches 7 run function tgttos:map/industry/end
execute if score map tgttos_game matches 8 run function tgttos:map/pipes/end
execute if score map tgttos_game matches 9 run function tgttos:map/pitfall/end
execute if score map tgttos_game matches 10 run function tgttos:map/racetrack/end
execute if score map tgttos_game matches 11 run function tgttos:map/shallowlava/end
execute if score map tgttos_game matches 12 run function tgttos:map/skydive/end
execute if score map tgttos_game matches 13 run function tgttos:map/swimtrack/end

# Clean ups
execute as @a run attribute @s generic.attack_damage base set -100
execute as @e[type=chicken] run tp @s ~ -64 ~

stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
title @a times 0 40 20
execute if score round tgttos_game matches 1..5 run title @a title ["",{"text": "回合结束！","bold": true,"color":"red"}]
execute if score round tgttos_game matches 6 run title @a title ["",{"text": "游戏结束！","bold": true,"color":"red"}]

execute if score round tgttos_game matches 6 run function tgttos:endaction

execute if score round tgttos_game matches 1..5 run function master:timer/nextround/10s
execute if score round tgttos_game matches 1..5 run schedule function tgttos:start_next_round 10s

