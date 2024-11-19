
execute as @a[team=!spec,gamemode=adventure] at @s if block ~ 0 ~ light_blue_terracotta run scoreboard players set @s ar_aqualauncher 11
execute as @a[team=!spec,gamemode=adventure] if score @s ar_aqualauncher matches 11 run item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}]}
execute as @a[team=!spec,gamemode=adventure] if score @s ar_aqualauncher matches 11 run effect give @s dolphins_grace infinite 0 true

scoreboard players remove @a ar_aqualauncher 1
execute as @a[team=!spec,gamemode=adventure] if score @s ar_aqualauncher matches 1 run item replace entity @s armor.feet with air
execute as @a[team=!spec,gamemode=adventure] if score @s ar_aqualauncher matches 1 run effect clear @s dolphins_grace

execute if score gameflag ar_game matches 1 run schedule function acerace3:effectblock/aqualauncher 1t