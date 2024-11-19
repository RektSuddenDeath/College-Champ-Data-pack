
fill 4936 57 4944 4930 72 4938 lime_wool
fill 4945 72 4929 4951 57 4923 lime_stained_glass
fill 4982 57 4915 4988 72 4909 white_stained_glass
fill 5012 72 4915 5018 57 4909 white_wool


execute as @a[team=!spec,scores={bm_location=2..3}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #wool
execute as @a[team=!spec,scores={bm_location=2..3}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace #impermeable