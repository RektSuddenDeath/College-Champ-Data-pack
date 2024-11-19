
tellraw @s ["§b[§f褿§b]"," §b你已被传送到§f采集阶段§b区域。"]
tp @s[team=red] 89967 33 89832 -90 0
tp @s[team=blue] 89967 33 89856 -90 0
tp @s[team=green] 89967 33 89880 -90 0
tp @s[team=yellow] 89967 33 89904 -90 0
tp @s[team=cyan] 89967 33 89928 -90 0
tp @s[team=pink] 89967 33 89952 -90 0
tp @s[team=orange] 89967 33 89976 -90 0
tp @s[team=purple] 89967 33 90000 -90 0
tp @s[team=spec] 89972 50 89917 -90 0

execute if entity @s[team=red] run tellraw @a[team=red] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=blue] run tellraw @a[team=blue] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=green] run tellraw @a[team=green] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=pink] run tellraw @a[team=pink] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=orange] run tellraw @a[team=orange] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=purple] run tellraw @a[team=purple] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]


attribute @s generic.max_health base set 60
effect give @s instant_health 21 9 true
give @s snowball{CustomModelData:17002,display:{Name:'"§r§c离开"',Lore:['"§r§7右键点击使用，不可取消！"']}}
scoreboard players set @s univ_death 0
clear @s oak_leaves
tag @s add in_gold_rush
effect clear @s resistance