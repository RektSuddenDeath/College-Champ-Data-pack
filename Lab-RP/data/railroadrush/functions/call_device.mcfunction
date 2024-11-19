
tellraw @a[scores={rrr_call_device=1..}] ["§6[§r礸§6] 各存档点已额外发出一辆TNT矿车。"]

execute if entity @a[scores={rrr_call_device=1..},team=red] run function railroadrush:summon_dynamite/team/red
execute if entity @a[scores={rrr_call_device=1..},team=blue] run function railroadrush:summon_dynamite/team/blue
execute if entity @a[scores={rrr_call_device=1..},team=green] run function railroadrush:summon_dynamite/team/green
execute if entity @a[scores={rrr_call_device=1..},team=yellow] run function railroadrush:summon_dynamite/team/yellow
execute if entity @a[scores={rrr_call_device=1..},team=cyan] run function railroadrush:summon_dynamite/team/cyan
execute if entity @a[scores={rrr_call_device=1..},team=pink] run function railroadrush:summon_dynamite/team/pink
execute if entity @a[scores={rrr_call_device=1..},team=orange] run function railroadrush:summon_dynamite/team/orange
execute if entity @a[scores={rrr_call_device=1..},team=purple] run function railroadrush:summon_dynamite/team/purple

scoreboard players set @a rrr_call_device 0
kill @e[type=ender_pearl]
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:call_device 1t

#

give @s ender_pearl{CustomModelData:17001,display:{Name:'"§r§6TNT矿车召唤工具"',Lore:["§r§b从各个存档点额外发出一辆TNT矿车。","§r§c使用后消耗！"]}}