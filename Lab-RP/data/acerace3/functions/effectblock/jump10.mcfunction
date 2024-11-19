
execute as @a[tag=ar.jumppad,nbt={OnGround:0b}] at @s run playsound sound.jump_pad record @s
execute as @a[tag=ar.jumppad,nbt={OnGround:0b}] at @s run effect clear @s jump_boost
execute as @a[nbt={OnGround:0b,active_effects:[{id:"minecraft:jump_boost"}]}] at @s run tag @s remove ar.jumppad
execute as @a[nbt={OnGround:0b},tag=ar.jumppad] at @s run tag @s remove ar.jumppad

execute as @a at @s if block ~0.49 ~-1 ~0.49 gold_block run tag @s add jump_pad_active
execute as @a at @s if block ~-0.49 ~-1 ~0.49 gold_block run tag @s add jump_pad_active
execute as @a at @s if block ~-0.49 ~-1 ~-0.49 gold_block run tag @s add jump_pad_active
execute as @a at @s if block ~0.49 ~-1 ~-0.49 gold_block run tag @s add jump_pad_active

execute as @a[tag=jump_pad_active] at @s run effect give @s jump_boost 1 9 true
execute as @a[tag=jump_pad_active] at @s run title @s times 0 2 0
execute as @a[tag=jump_pad_active] at @s run title @s title ""
execute as @a[tag=jump_pad_active] at @s run title @s subtitle "§e⇈"
execute as @a[nbt={OnGround:1b},tag=jump_pad_active] at @s run tag @s add ar.jumppad


tag @a remove jump_pad_active
execute if score gameflag ar_game matches 1 run schedule function acerace3:effectblock/jump10 1t