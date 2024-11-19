
scoreboard players operation rsound u.biglaunchpad = rtick u.biglaunchpad
scoreboard players operation rsound u.biglaunchpad %= 3 math

execute as @a[nbt={OnGround:1b},scores={u.biglaunchpad=-2147483648..2147483647},tag=!u.intcd] at @s if block ~ ~-1 ~ minecraft:orange_glazed_terracotta[facing=north] run scoreboard players set @s u.biglaunchpad 12
tag @a[scores={u.biglaunchpad=12}] add u.intcd

execute as @a[scores={u.biglaunchpad=12}] run attribute @s minecraft:generic.movement_speed base set 0.15
effect give @a[scores={u.biglaunchpad=12}] minecraft:jump_boost infinite 250 true
effect give @a[scores={u.biglaunchpad=12}] minecraft:slow_falling infinite 255 true
# execute as @a[scores={u.biglaunchpad=6}] run effect clear @s speed

execute as @a[scores={u.biglaunchpad=11}] run attribute @s minecraft:generic.movement_speed base set 3.00

execute as @a[scores={u.biglaunchpad=8},tag=!biglaunch.used] at @s run scoreboard players set @s u.biglaunchpad.j 1
execute as @a[scores={u.biglaunchpad=8},tag=!biglaunch.used] at @s run attribute @s minecraft:generic.movement_speed base set 0.18

execute as @a[scores={u.biglaunchpad=2..9,u.biglaunchpad.j=1..}] if score rsound u.biglaunchpad matches 0 at @s run playsound sound.launch_pad_1 record @s
execute as @a[scores={u.biglaunchpad=2..9,u.biglaunchpad.j=1..}] if score rsound u.biglaunchpad matches 1 at @s run playsound sound.launch_pad_2 record @s
execute as @a[scores={u.biglaunchpad=2..9,u.biglaunchpad.j=1..}] if score rsound u.biglaunchpad matches 2.. at @s run playsound sound.launch_pad_3 record @s

# execute as @a[scores={u.biglaunchpad=2..5,u.biglaunchpad.j=1..}] run attribute @s minecraft:generic.movement_speed base set 1.00
effect give @a[scores={u.biglaunchpad=2..9,u.biglaunchpad.j=1..}] minecraft:levitation 1 109 true
#scoreboard players set @a[scores={u.biglaunchpad=2..5,u.biglaunchpad.j=1..}] u.biglaunchpad 2

tag @a[scores={u.biglaunchpad=2..9,u.biglaunchpad.j=1..}] add biglaunch.used

execute as @a[scores={u.biglaunchpad=5}] run attribute @s minecraft:generic.movement_speed base set 0.15
execute as @a[scores={u.biglaunchpad=3}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute as @a[scores={u.biglaunchpad=1}] run attribute @s minecraft:generic.movement_speed base set 0.1
effect clear @a[scores={u.biglaunchpad=1}] minecraft:levitation
effect clear @a[scores={u.biglaunchpad=1}] minecraft:jump_boost
effect clear @a[scores={u.biglaunchpad=1}] minecraft:slow_falling
tag @a[scores={u.biglaunchpad=1}] remove biglaunch.used
tag @a[scores={u.biglaunchpad=1}] remove u.intcd

scoreboard players remove @a[scores={u.biglaunchpad=1..}] u.biglaunchpad 1
scoreboard players add rtick u.biglaunchpad 1
scoreboard players set @a u.biglaunchpad.j 0

