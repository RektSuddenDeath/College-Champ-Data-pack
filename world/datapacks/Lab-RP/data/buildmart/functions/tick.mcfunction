
# Effect block
function buildmart:effectblock/launch
function buildmart:effectblock/biglaunch
function buildmart:effectblock/speed
function buildmart:effectblock/fan

# Player Position Related
function buildmart:get_location
function buildmart:settool

# Disallow players to spectate
execute as @a[gamemode=spectator] run spectate

# Perma Effects
effect give @a[gamemode=!spectator] haste infinite 1 true
effect give @a[gamemode=!spectator] night_vision infinite 0 true
effect give @a[gamemode=!spectator] resistance infinite 9 true

## Void
scoreboard objectives add temp_bm_y dummy
execute as @a at @s store result score @s temp_bm_y run data get entity @s Pos[1]


execute as @a[team=!spec,scores={health=1..}] if score @s temp_bm_y matches 16..27 run kill @s
execute as @a[team=spec,tag=!admin,tag=!admin_immune] if score @s temp_bm_y matches ..27 at @s run tellraw @s "§cYou may not go any further down!"
execute as @a[team=spec,tag=!admin,tag=!admin_immune] if score @s temp_bm_y matches ..27 at @s run tp @s ~ ~5 ~
scoreboard objectives remove temp_bm_y

### Death
function buildmart:death

# Portal
execute as @a[x=4974,y=51,z=4999,dx=0,dy=3,dz=2,team=!spec] run function buildmart:portal/tp_down
function buildmart:portal/tp_up

# Build Check Related
function buildmart:fixfloor/fix_all
scoreboard players add checktick bm_game 1
scoreboard players operation checktick bm_game %= 8 math
execute if score checktick bm_game matches 4 run function buildmart:verify/normal
execute if score checktick bm_game matches 0 run function buildmart:verify/golden

# Death Msg Loop
scoreboard players add dmsg_t bm_game 1
execute if score dmsg_t bm_game matches 21.. run scoreboard players set dmsg_t bm_game 1

# Time
execute if score minute master.timer matches 0 if score second master.timer matches 45 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init

execute if score minute master.timer matches 0 if score second master.timer matches 0 run function buildmart:end
execute if score gameflag bm_game matches 1 run schedule function buildmart:tick 1t