
scoreboard objectives add meltdown_temp_spot_safe dummy
scoreboard players set @s meltdown_temp_spot_safe 0
# FIND A SAFE SPOT IN A 2b Sphere
# Look for safe spots on the same Y axis first, going down if unable to find a good position
execute positioned ~ ~ ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~ ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~ ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~ ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~ ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~ ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~ ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~ ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~ ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~ ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go down -1 Y
execute positioned ~ ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-1 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-1 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1


# Go Up +1Y
execute positioned ~ ~1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~1 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~1 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~1 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Same axis but further out
execute positioned ~1 ~ ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~ ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~ ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~ ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~ ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~ ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~ ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~ ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~2 ~ ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~ ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-2 ~ ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~ ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~ ~2 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~ ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~ ~-2 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~ ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Down 2

execute positioned ~ ~-2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-2 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-2 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-2 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-2 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Up 2

execute positioned ~ ~2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~2 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~2 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~2 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~2 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~2 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Down 3
execute positioned ~ ~-3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-3 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-3 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-3 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-3 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Up 3

execute positioned ~ ~3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~3 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~3 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~3 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~3 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~3 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~3 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Down 4
execute positioned ~ ~-4 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-4 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-4 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-4 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-4 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-4 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-4 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-4 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-4 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-4 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1
# Go Down 5
execute positioned ~ ~-5 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-5 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-5 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-5 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-5 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-5 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-5 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-5 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-5 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-5 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Go Down 6
execute positioned ~ ~-6 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-6 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-6 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-6 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-6 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-6 ~
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-6 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-6 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-6 ~-1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~ ~-6 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Spread Out
execute positioned ~ ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-1 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-1 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-1 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-1 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-1 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-1 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-1 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-1 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-1 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-1 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-1 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

# Spread Out
execute positioned ~ ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-2 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-2 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~-1 ~-1 ~ store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-2 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-2 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-2 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-2 ~-2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-2 ~-2 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~-1 ~-2 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~1 ~-2 ~2
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-2 ~-1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1

execute positioned ~ ~-1 ~1 store result score @s meltdown_temp_spot_safe run function meltdown:freeze/is_safe
execute if score @s meltdown_temp_spot_safe matches 1 run tp @s ~2 ~-2 ~1
execute if score @s meltdown_temp_spot_safe matches 1 run return 1
return 0