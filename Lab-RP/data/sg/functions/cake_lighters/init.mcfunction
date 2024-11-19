
scoreboard objectives add sg_cakes_lighted dummy
scoreboard objectives add sg_green_candle_used used:green_candle
scoreboard objectives add sg_white_candle_used used:white_candle

scoreboard players set red sg_cakes_lighted 0
scoreboard players set blue sg_cakes_lighted 0
scoreboard players set green sg_cakes_lighted 0
scoreboard players set yellow sg_cakes_lighted 0
scoreboard players set cyan sg_cakes_lighted 0
scoreboard players set pink sg_cakes_lighted 0
scoreboard players set orange sg_cakes_lighted 0
scoreboard players set purple sg_cakes_lighted 0

scoreboard players set @a sg_green_candle_used 0
scoreboard players set @a sg_white_candle_used 0

# Scatter Entities
kill @e[type=chicken,tag=sg_cakelighters]
kill @e[type=turtle,tag=sg_cakelighters]

#summon marker ~ ~ ~ {Tags:["sg_cakelighters","chicken_anchor"]}
#summon marker ~ ~ ~ {Tags:["sg_cakelighters","turtle_anchor"]}

execute as @e[type=marker,tag=sg_cakelighters,tag=chicken_anchor] at @s run summon chicken ~1 ~ ~ {Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["sg_cakelighters"]}
execute as @e[type=marker,tag=sg_cakelighters,tag=turtle_anchor] at @s run summon turtle ~1 ~ ~ {Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["sg_cakelighters"]}

function sg:cake_lighters/loop