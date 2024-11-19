# Debug
particle block_marker target ~ ~ ~ 0 0 0 0 1 force @a[tag=rsr_debug]
particle block_marker tripwire[disarmed=true,attached=false,east=false,north=false,south=false,west=false] ~-0.65 ~-0.65 ~-0.65 0 0 0 0 1 force @a[tag=rsr_debug]
particle block_marker tripwire[disarmed=true,attached=false,east=false,north=false,south=false,west=false] ~0.65 ~0.65 ~0.65 0 0 0 0 1 force @a[tag=rsr_debug]
execute as @a[distance=0..1] at @s run particle block_marker diamond_block ~ ~ ~ 0 0 0 0 1 force @a[tag=rsr_debug]
execute as @e[type=marker,tag=rsr_player_position_record,distance=0..1.3] at @s run particle block_marker gold_block ~ ~ ~ 0 0 0 0 1 force @a[tag=rsr_debug]
#tellraw @a[tag=rsr_debug] ["[§6Debug§f]: ","§bPlayer caught in last explosion are: ",{"selector":"@a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3]"}]

# Direct Hit FX and Count
# $execute positioned ~-0.65 ~-0.65 ~-0.65 if entity @a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3,scores={rsr_struck_invinci=0}] as @a[scores={univ_pid=$(owner_pid)}] run scoreboard players add @s rsr_recap_direct_hit_landed 1
# $execute positioned ~-0.65 ~-0.65 ~-0.65 if entity @a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3,scores={rsr_struck_invinci=0}] as @a[scores={univ_pid=$(owner_pid)}] at @s run playsound sound.hit_landed record @s ~ ~ ~ 1.6

$execute positioned ~ ~ ~ if entity @e[type=marker,tag=rsr_player_position_record,distance=..1.3] as @a[scores={univ_pid=$(owner_pid)}] run scoreboard players add @s rsr_recap_direct_hit_landed 1
$execute positioned ~ ~ ~ if entity @e[type=marker,tag=rsr_player_position_record,distance=..1.3] as @a[scores={univ_pid=$(owner_pid)}] at @s run playsound sound.hit_landed record @s ~ ~ ~ 1.6
# Direct Hit Explosion
#execute positioned ~ ~ ~ as @e[type=marker,tag=rsr_player_position_record,distance=..0.6] run tellraw @a "111"
execute positioned ~ ~ ~ as @e[type=marker,tag=rsr_player_position_record,distance=..1.3] run data modify storage rsr:temp_attack player_attached set from entity @s data.player_attached
execute positioned ~ ~ ~ as @e[type=marker,tag=rsr_player_position_record,distance=..1.3] run function test:aug10_fireballtest/durability/marker_struck_attached with storage rsr:temp_attack
# execute positioned ~-0.65 ~-0.65 ~-0.65 as @a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3] at @s run function test:aug10_fireballtest/durability/direct_hit_victim
# $execute positioned ~-0.65 ~-0.65 ~-0.65 as @a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3] at @s run scoreboard players set @s univ_attacker $(owner_pid)
# execute positioned ~-0.65 ~-0.65 ~-0.65 as @a[gamemode=!spectator,dx=1.3,dy=1.3,dz=1.3] at @s run scoreboard players set @s univ_tagtime 240

# Explosion
# fill ~1.5 ~1.2 ~1.5 ~-1.5 ~0.2 ~-1.5 air
# fill ~0.95 ~2.4 ~0.95 ~-0.95 ~1.2 ~-0.95 air
# fill ~0.95 ~0.2 ~0.95 ~-0.95 ~-1.2 ~-0.95 air

# execute if score randomtick rsr_explodertick matches 1..3 run setblock ~ ~2.2 ~ air
# execute if score randomtick rsr_explodertick matches 1..4 run setblock ~2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 2..4 run setblock ~ ~-2.2 ~ air
# execute if score randomtick rsr_explodertick matches 2..5 run setblock ~ ~ ~-2.2 air
# execute if score randomtick rsr_explodertick matches 3..6 run setblock ~2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 3..5 run setblock ~2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 4..6 run setblock ~-2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 4..5 run setblock ~-2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 5..6 run setblock ~2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 5 run setblock ~ ~ ~2.2 air
# execute if score randomtick rsr_explodertick matches 6..7 run setblock ~-2.2 ~ ~ air
# execute if score randomtick rsr_explodertick matches 6..8 run setblock ~ ~ ~-2.2 air
# execute if score randomtick rsr_explodertick matches 7 run setblock ~ ~ ~-2.2 air
# execute if score randomtick rsr_explodertick matches 7..8 run setblock ~ ~ ~-2.2 air
# execute if score randomtick rsr_explodertick matches 3..8 run setblock ~ ~ ~2.2 air
# execute if score randomtick rsr_explodertick matches 4..8 run setblock ~ ~ ~2.2 air
kill @s