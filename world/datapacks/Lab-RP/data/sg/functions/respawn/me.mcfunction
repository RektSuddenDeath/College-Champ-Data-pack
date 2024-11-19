

effect give @s resistance 25 4
scoreboard players remove total sg_respawns_left 1
give @s compass{display:{Name:'["","§r§6§l空投指针"]'}}
give @s stone_pickaxe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-3}],CanDestroy:[purpur_pillar],Unbreakable:1b,HideFlags:8,display:{Name:'["","§b§l空投用镐"]'}}
give @s chainmail_helmet{Unbreakable:1b}
give @s chainmail_chestplate{Unbreakable:1b}
give @s chainmail_leggings{Unbreakable:1b}
give @s chainmail_boots{Unbreakable:1b}
give @s stone_sword{Unbreakable:1b,HideFlags:8,CanDestroy:["#sg:weapon_breakables"]}

execute if entity @s[team=red] run tp @p[team=red,scores={sg_star_used=1..}]
execute if entity @s[team=blue] run tp @p[team=blue,scores={sg_star_used=1..}]
execute if entity @s[team=green] run tp @p[team=green,scores={sg_star_used=1..}]
execute if entity @s[team=yellow] run tp @p[team=yellow,scores={sg_star_used=1..}]
execute if entity @s[team=cyan] run tp @p[team=cyan,scores={sg_star_used=1..}]
execute if entity @s[team=pink] run tp @p[team=pink,scores={sg_star_used=1..}]
execute if entity @s[team=orange] run tp @p[team=orange,scores={sg_star_used=1..}]
execute if entity @s[team=purple] run tp @p[team=purple,scores={sg_star_used=1..}]

execute if entity @s[team=red] run scoreboard players remove red sg_respawns_left 1
execute if entity @s[team=blue] run scoreboard players remove blue sg_respawns_left 1
execute if entity @s[team=green] run scoreboard players remove green sg_respawns_left 1
execute if entity @s[team=yellow] run scoreboard players remove yellow sg_respawns_left 1
execute if entity @s[team=cyan] run scoreboard players remove cyan sg_respawns_left 1
execute if entity @s[team=pink] run scoreboard players remove pink sg_respawns_left 1
execute if entity @s[team=orange] run scoreboard players remove orange sg_respawns_left 1
execute if entity @s[team=purple] run scoreboard players remove purple sg_respawns_left 1

tellraw @s ["§a§l你已重生！你将有25秒的重生保护，进行攻击将解除保护！"]
tellraw @a ["","[§a✚§f] ",{"selector":"@s"}," §a重生了！"]
gamemode adventure

execute if score total sg_respawns_left matches 0 run tellraw @a ["","[","§6▶","] ","§c§l复活名额已满！复活任务将立刻结束。"]
execute if score total sg_respawns_left matches 0 run function sg:respawn/end