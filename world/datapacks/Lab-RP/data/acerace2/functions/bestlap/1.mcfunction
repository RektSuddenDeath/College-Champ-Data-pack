
scoreboard players operation 5 ar_bestlaptime = 4 ar_bestlaptime
scoreboard players operation 4 ar_bestlaptime = 3 ar_bestlaptime
scoreboard players operation 3 ar_bestlaptime = 2 ar_bestlaptime
scoreboard players operation 2 ar_bestlaptime = 1 ar_bestlaptime
scoreboard players operation 1 ar_bestlaptime = @s ar_laptime

tag @a[tag=ar_pos5] remove ar_pos5
tag @a[tag=ar_pos4] add ar_pos5
tag @a[tag=ar_pos4] remove ar_pos4
tag @a[tag=ar_pos3] add ar_pos4
tag @a[tag=ar_pos3] remove ar_pos3
tag @a[tag=ar_pos2] add ar_pos3
tag @a[tag=ar_pos2] remove ar_pos2
tag @a[tag=ar_pos1] add ar_pos2
tag @a[tag=ar_pos1] remove ar_pos1

tag @s add ar_pos1