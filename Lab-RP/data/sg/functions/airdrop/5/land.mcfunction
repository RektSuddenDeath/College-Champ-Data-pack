
kill @e[type=armor_stand,tag=sg_airdropstand]
execute as @a at @s run playsound sound.mapupdate record @s

execute as @e[type=marker,tag=airdrop_selected] at @s run function sg:airdrop/get_distance_b

execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-2 ~ lime_stained_glass
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~1 ~ ~ purpur_pillar
execute as @e[type=marker,tag=airdrop_selected] at @s run summon text_display ~1 ~1.25 ~ {alignment:"center",billboard:"vertical",text:'"§6§l破坏它！"',Tags:["airdrop_hologram"]}