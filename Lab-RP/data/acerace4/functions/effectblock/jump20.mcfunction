execute as @a[tag=ar.jumppad,nbt={OnGround:0b}] at @s run playsound sound.jump_pad record @s
execute as @a[nbt={OnGround:0b,active_effects:[{id:"minecraft:jump_boost"}]}] at @s run effect clear @s jump_boost
execute as @a[tag=ar.jumppad,nbt={OnGround:0b}] at @s run tag @s remove ar.jumppad
execute as @a[nbt={OnGround:0b},tag=ar.jumppad] at @s run tag @s remove ar.jumppad

execute as @a at @s if block ~ ~-1 ~ raw_gold_block run effect give @s jump_boost 1 19 true
execute as @a[nbt={OnGround:1b}] at @s if block ~ ~-1 ~ raw_gold_block run tag @s add ar.jumppad


execute if score gameflag ar_game matches 1 run schedule function acerace4:effectblock/jump20 2t