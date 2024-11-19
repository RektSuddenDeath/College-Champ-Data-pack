

effect give @a resistance 20000 7 true
effect give @a levitation 1 255 true

execute as @a[team=!spec] at @s run fill ~3 ~2 ~2 ~1 ~ ~-2 air replace tnt
execute as @a[team=!spec] at @s run summon minecraft:fireball ~0.75 ~1 ~ {ExplosionPower:10,Motion:[0d,-0.1d,0d],power:[-1d,0d,0d],Silent:1b,NoGravity:1b,Item:{id:"minecraft:stone_button",Count:1b}}
schedule function gr:explode 1t append
schedule function gr:explode 2t append
schedule function gr:explode 3t append
schedule function gr:explode 4t append
schedule function gr:explode 5t append
schedule function gr:explode 6t append
schedule function gr:explode 7t append
schedule function gr:explode 8t append
schedule function gr:explode 9t append
schedule function gr:explode 10t append
schedule function gr:explode 11t append
schedule function gr:explode 12t append
schedule function gr:explode 13t append
schedule function gr:explode 14t append
schedule function gr:explode 15t append
schedule function gr:explode 16t append
schedule function gr:explode 17t append
schedule function gr:explode 18t append
schedule function gr:explode 19t append