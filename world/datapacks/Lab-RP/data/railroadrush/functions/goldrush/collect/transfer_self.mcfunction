
tellraw @s ["§b[§f褿§b]"," §b你已被传送到§f采集阶段§b区域。"]
tp @s[team=red] 85000 101 84985 0 0
tp @s[team=blue] 84987 101 84987 -45 0
tp @s[team=green] 84985 101 85000 -90 0
tp @s[team=yellow] 84987 101 85013 -135 0
tp @s[team=cyan] 85000 101 85015 -180 0
tp @s[team=pink] 85013 101 85013 135 0
tp @s[team=orange] 85015 101 85000 90 0
tp @s[team=purple] 85013 101 84987 45 0
tp @s[team=cyan] 85013 101 84987 45 0
tp @s[team=spec] 85013 101 84987 45 0

execute if entity @s[team=red] run tellraw @a[team=red] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=blue] run tellraw @a[team=blue] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=green] run tellraw @a[team=green] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=pink] run tellraw @a[team=pink] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=orange] run tellraw @a[team=orange] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]
execute if entity @s[team=purple] run tellraw @a[team=purple] ["","§6[§r褿§6] ",{"selector":"@s"},"§6传送到了采集区域！"]

item replace entity @s armor.chest with elytra{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}]}
give @s snowball{CustomModelData:17002,display:{Name:'"§r§c离开"',Lore:['"§r§7右键点击使用，不可取消！"']}}
scoreboard players set @s univ_death 0
tag @s add in_gold_rush
effect clear @s resistance