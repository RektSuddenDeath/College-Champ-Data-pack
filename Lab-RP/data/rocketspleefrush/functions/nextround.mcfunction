
# Clear Previous arena
clear @a
effect clear @a
scoreboard players set @a rsr_roundscore 0
kill @e[type=ender_pearl]
# Round flag
scoreboard players add round rsr_game 1

scoreboard players set @a rsr_roundkills 0
scoreboard players set @a rsr_round_ally_kills 0

execute if score round rsr_game matches 2 run scoreboard players operation map rsr_game = map2 rsr_game
execute if score round rsr_game matches 3 run scoreboard players operation map rsr_game = map3 rsr_game
## Selects map according to round, allowing easier map addition

scoreboard players set island_to_siren rsr_game 1
scoreboard players set island_to_generate rsr_game 0
scoreboard players set island_to_disintegrate rsr_game 0

# Timer
schedule clear master:timer/nextround/sec
function master:timer/starting/15s


# Map generation
function rocketspleefrush:disintegrate/instant
kill @e[type=area_effect_cloud,tag=rsr]
kill @e[type=armor_stand,tag=rsr]
kill @e[type=item_frame,tag=rsr]
schedule function rocketspleefrush:structure/lobby 10t
schedule function rocketspleefrush:structure/lobby 20t append

execute if score round rsr_game matches 2 if score map2 rsr_game matches 1 run schedule function rocketspleefrush:structure/classic/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 2 run schedule function rocketspleefrush:structure/park/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 3 run schedule function rocketspleefrush:structure/palace/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 4 run schedule function rocketspleefrush:structure/journey/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 5 run schedule function rocketspleefrush:structure/temple/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 6 run schedule function rocketspleefrush:structure/checkmate/1 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 7 run schedule function rocketspleefrush:map/skyblock/generate_next_island 40t
execute if score round rsr_game matches 2 if score map2 rsr_game matches 8 run schedule function rocketspleefrush:map/classic_2/generate_next_island 40t

execute if score round rsr_game matches 3 if score map3 rsr_game matches 1 run schedule function rocketspleefrush:structure/classic/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 2 run schedule function rocketspleefrush:structure/park/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 3 run schedule function rocketspleefrush:structure/palace/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 4 run schedule function rocketspleefrush:structure/journey/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 5 run schedule function rocketspleefrush:structure/temple/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 6 run schedule function rocketspleefrush:structure/checkmate/1 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 7 run schedule function rocketspleefrush:map/skyblock/generate_next_island 40t
execute if score round rsr_game matches 3 if score map3 rsr_game matches 8 run schedule function rocketspleefrush:map/classic_2/generate_next_island 40t

# Teleportation
tp @a[team=red] -7999.39 202 -8007.63 -360 0
tp @a[team=blue] -8007.57 202 -7999.39 -450 0
tp @a[team=green] -7999.49 202 -7991.51 -540 0
tp @a[team=yellow] -7991.61 202 -7999.70 -630 0
tp @a[team=cyan] -8007.78 202.00 -8007.97 -44.22 0.82
tp @a[team=orange] -8007.52 202.00 -7991.12 -135.14 -0.19
tp @a[team=pink] -7991.56 202.00 -7991.19 -223.53 0.55
tp @a[team=purple] -7991.52 202.00 -8007.56 -314.36 0.13
tp @a[team=spec] -7990.30 206.50 -7990.30 -584.70 15.88

effect give @a minecraft:levitation 1 255 true

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]


# Rocket Launcher Given
give @a[team=!spec] carrot_on_a_stick{Unbreakable:1b,HideFlags:25,Enchantments:[{id:"knockback",lvl:2}],CustomModelData:1,display:{Name:'"§r§6火箭发射器"'}}
# give @a[team=!spec] ender_pearl{display:{Name:'"§r§5抬升道具"'}}
item replace entity @a[team=!spec] armor.chest with elytra{Unbreakable:1b}
effect give @a jump_boost infinite 1 true
effect give @a speed infinite 0 true
function utils:nodropping

# Start Game
function rocketspleefrush:beginlistener

# Scoreboard Tweak

execute if score round rsr_game matches 1 run team modify placeholder_3 suffix "1/3"
execute if score round rsr_game matches 2 run team modify placeholder_3 suffix "2/3"
execute if score round rsr_game matches 3 run team modify placeholder_3 suffix "3/3"

execute if score map rsr_game matches 1 run team modify placeholder_4 suffix "Classic"
execute if score map rsr_game matches 2 run team modify placeholder_4 suffix "Park"
execute if score map rsr_game matches 3 run team modify placeholder_4 suffix "Palace"
execute if score map rsr_game matches 4 run team modify placeholder_4 suffix "Journey"
execute if score map rsr_game matches 5 run team modify placeholder_4 suffix "Temple"
execute if score map rsr_game matches 6 run team modify placeholder_4 suffix "Checkmate"
execute if score map rsr_game matches 7 run team modify placeholder_4 suffix "Airventure §7(by GrassBl0ck)"
execute if score map rsr_game matches 8 run team modify placeholder_4 suffix "Classic"

# Disable Punching
execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set -2