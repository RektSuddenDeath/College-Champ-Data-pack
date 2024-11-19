tag @a[scores={hunger=0..19}] add regen
effect give @a[tag=regen] minecraft:saturation 1 0 true
effect give @a[tag=regen] hunger 1 79 true
tag @a remove regen
schedule function utils:survivalregen 2t