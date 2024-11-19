kill @e[type=arrow]
effect give @a resistance 1 4 true
effect give @a fire_resistance 1 4 true
kill @e[type=potion]
kill @e[type=spectral_arrow]

execute if score gameflag bb_game matches 0 run schedule function battlebox:nofire 1t