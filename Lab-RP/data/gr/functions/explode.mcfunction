
execute as @a[team=!spec] at @s run summon minecraft:fireball ~2 ~1 ~ {ExplosionPower:10,Motion:[0d,-0.1d,0d],power:[-1d,0d,0d],Silent:1b,NoGravity:1b,Item:{id:"minecraft:stone_button",Count:1b}}
execute as @e[type=fireball] at @s unless entity @p[team=!spec,distance=0..10] run kill @s