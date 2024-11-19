

# Team One
execute as @a[tag=db_teamone] at @s if block ~ 108 ~ purpur_block run tag @s add mb_bp_candidate
execute if entity @a[tag=mb_bp_candidate,tag=db_teamone] run tag @r[tag=mb_bp_candidate,tag=db_teamone] add megabolt_bp_picker
execute if entity @a[tag=mb_bp_candidate,tag=db_teamone] run tellraw @a[tag=db_teamone] ["§b[§r坕§b] 你们队选择了",{"selector":"@a[tag=db_teamone,tag=megabolt_bp_picker]"},"§b作为代表，请等待对方选择结束。"]
execute if entity @a[tag=mb_bp_candidate,tag=db_teamone] run effect give @a[tag=db_teamone] blindness infinite 0 true
execute if entity @a[tag=mb_bp_candidate,tag=db_teamone] run tp @a[tag=db_teamone,tag=megabolt_bp_picker] 17007 109 17000 0 0
execute if entity @a[tag=mb_bp_candidate,tag=db_teamone] run tp @a[tag=db_teamone,tag=!megabolt_bp_picker] 17024 113 17004 0 0

# Team Two
execute as @a[tag=db_teamtwo] at @s if block ~ 108 ~ purpur_block run tag @s add mb_bp_candidate
execute if entity @a[tag=mb_bp_candidate,tag=db_teamtwo] run tag @r[tag=mb_bp_candidate,tag=db_teamtwo] add megabolt_bp_picker
execute if entity @a[tag=mb_bp_candidate,tag=db_teamtwo] run tellraw @a[tag=db_teamtwo] ["§b[§r坕§b] 你们队选择了",{"selector":"@a[tag=db_teamtwo,tag=megabolt_bp_picker]"},"§b作为代表，请等待对方选择结束。"]
execute if entity @a[tag=mb_bp_candidate,tag=db_teamtwo] run effect give @a[tag=db_teamtwo] blindness infinite 0 true
execute if entity @a[tag=mb_bp_candidate,tag=db_teamtwo] run tp @a[tag=db_teamtwo,tag=megabolt_bp_picker] 16993 109 17000 0 0
execute if entity @a[tag=mb_bp_candidate,tag=db_teamtwo] run tp @a[tag=db_teamtwo,tag=!megabolt_bp_picker] 16976 113 17004 0 0

## Next phase?
execute if entity @a[tag=db_teamone,tag=megabolt_bp_picker] if entity @a[tag=db_teamtwo,tag=megabolt_bp_picker] run function dodgebolt:megabolt_bp/phases/next/1
# Cleanup
tag @a remove mb_bp_candidate
execute if score phase megabolt_bp matches 1 run schedule function dodgebolt:megabolt_bp/phases/loop/1 1t