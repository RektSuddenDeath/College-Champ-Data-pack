
scoreboard players operation rsound u.launchpad = rtick u.launchpad
scoreboard players operation rsound u.launchpad %= 3 math

execute as @a[nbt={OnGround:1b},scores={u.launchpad=-2147483648..2147483647},tag=!u.intcd] at @s if block ~ ~-1 ~ minecraft:yellow_glazed_terracotta[facing=north] run scoreboard players set @s u.launchpad 12
tag @a[scores={u.launchpad=12}] add u.intcd

execute as @a[scores={u.launchpad=12}] run attribute @s minecraft:generic.movement_speed base set 0.15
effect give @a[scores={u.launchpad=12}] minecraft:jump_boost infinite 250 true
effect give @a[scores={u.launchpad=12}] minecraft:slow_falling infinite 255 true
# execute as @a[scores={u.launchpad=6}] run effect clear @s speed

execute as @a[scores={u.launchpad=11}] run attribute @s minecraft:generic.movement_speed base set 2.00

execute as @a[scores={u.launchpad=8},tag=!launch.used] at @s run scoreboard players set @s u.launchpad.j 1
execute as @a[scores={u.launchpad=8},tag=!launch.used] at @s run attribute @s minecraft:generic.movement_speed base set 0.18

execute as @a[scores={u.launchpad=2..9,u.launchpad.j=1..}] if score rsound u.launchpad matches 0 at @s run playsound sound.launch_pad_1 record @s
execute as @a[scores={u.launchpad=2..9,u.launchpad.j=1..}] if score rsound u.launchpad matches 1 at @s run playsound sound.launch_pad_2 record @s
execute as @a[scores={u.launchpad=2..9,u.launchpad.j=1..}] if score rsound u.launchpad matches 2.. at @s run playsound sound.launch_pad_3 record @s

# execute as @a[scores={u.launchpad=2..5,u.launchpad.j=1..}] run attribute @s minecraft:generic.movement_speed base set 1.00
effect give @a[scores={u.launchpad=2..9,u.launchpad.j=1..}] minecraft:levitation 1 54 true
#scoreboard players set @a[scores={u.launchpad=2..5,u.launchpad.j=1..}] u.launchpad 2

tag @a[scores={u.launchpad=2..9,u.launchpad.j=1..}] add launch.used

execute as @a[scores={u.launchpad=5}] run attribute @s minecraft:generic.movement_speed base set 0.15
execute as @a[scores={u.launchpad=3}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute as @a[scores={u.launchpad=1}] run attribute @s minecraft:generic.movement_speed base set 0.1
effect clear @a[scores={u.launchpad=1}] minecraft:levitation
effect clear @a[scores={u.launchpad=1}] minecraft:jump_boost
effect clear @a[scores={u.launchpad=1}] minecraft:slow_falling
tag @a[scores={u.launchpad=1}] remove launch.used
tag @a[scores={u.launchpad=1}] remove u.intcd

scoreboard players remove @a[scores={u.launchpad=1..}] u.launchpad 1
scoreboard players add rtick u.launchpad 1
scoreboard players set @a u.launchpad.j 0


