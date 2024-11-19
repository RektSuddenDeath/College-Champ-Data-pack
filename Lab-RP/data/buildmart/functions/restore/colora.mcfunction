
fill 5012 57 5085 5018 72 5091 black_wool
fill 4982 57 5085 4988 72 5091 black_stained_glass
fill 4930 57 5056 4936 72 5062 red_wool
fill 4945 57 5071 4951 72 5077 red_stained_glass

execute as @a[team=!spec,scores={bm_location=7..8}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #wool
execute as @a[team=!spec,scores={bm_location=7..8}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #impermeable