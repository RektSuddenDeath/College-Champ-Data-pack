
fill 4902 57 5012 4908 72 5018 orange_wool
fill 4917 57 5027 4923 72 5033 orange_stained_glass
fill 4908 57 4988 4902 72 4982 yellow_wool
fill 4917 72 4973 4923 57 4967 yellow_stained_glass

execute as @a[team=!spec,scores={bm_location=1}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #wool
execute as @a[team=!spec,scores={bm_location=1}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #impermeable