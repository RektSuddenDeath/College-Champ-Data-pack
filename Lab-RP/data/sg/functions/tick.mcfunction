
# Kill Component
function sg:kill/1

# Clears Invinciblity
execute as @a[scores={sg_dmg_dealt_r=1..},nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run effect clear @s resistance
scoreboard players set @a sg_dmg_dealt_r 0

# Airdrop
effect give @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] mining_fatigue infinite 1 true
effect clear @a[nbt=!{SelectedItem:{id:"minecraft:stone_pickaxe"}}] mining_fatigue
function sg:airdrop/airdrop_fall
function sg:airdrop/detect_break
# Calculates remaining players
scoreboard players set playersLeft sg_game 0
execute as @a[team=!spec,gamemode=adventure] run scoreboard players add playersLeft sg_game 1

# Reduce Kill Points if applicable
execute if score playersLeft sg_game matches ..24 if score killDecay1 sg_game matches 0 run function sg:killdecay/1
execute if score playersLeft sg_game matches ..16 if score killDecay2 sg_game matches 0 run function sg:killdecay/2
execute if score playersLeft sg_game matches ..8 if score killDecay3 sg_game matches 0 run function sg:killdecay/3 

# Counts remaining teams
scoreboard players set teamsLeft sg_game 0

execute as @p[gamemode=adventure,team=red] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=blue] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=green] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=yellow] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=cyan] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=orange] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=pink] run scoreboard players add teamsLeft sg_game 1
execute as @p[gamemode=adventure,team=purple] run scoreboard players add teamsLeft sg_game 1

# Ends game
execute if score teamsLeft sg_game matches ..1 unless score devMode sg_game matches 1 run tellraw @a ["","§b[§r浟§b] ",{"selector":"@a[gamemode=adventure]"}," §b是最后存活的玩家！"]
execute if score teamsLeft sg_game matches ..1 unless score devMode sg_game matches 1 run function sg:end

# Loop
execute if score gameflag sg_game matches 1 run schedule function sg:tick 1t