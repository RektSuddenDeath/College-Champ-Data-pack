
execute on attacker run scoreboard players operation $tempid univ_attacker = @s univ_pid
execute on attacker run tag @s add temp_attack_tag

# BUG: 自残清除战斗标记（加一层判定修）

# Do Not Register a new attacker if they are on the same team.
execute if entity @s[team=red] unless entity @a[tag=temp_attack_tag,team=red] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=blue] unless entity @a[tag=temp_attack_tag,team=blue] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=green] unless entity @a[tag=temp_attack_tag,team=green] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=yellow] unless entity @a[tag=temp_attack_tag,team=yellow] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=cyan] unless entity @a[tag=temp_attack_tag,team=cyan] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=pink] unless entity @a[tag=temp_attack_tag,team=pink] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=orange] unless entity @a[tag=temp_attack_tag,team=orange] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
execute if entity @s[team=purple] unless entity @a[tag=temp_attack_tag,team=purple] run scoreboard players operation @s univ_attacker = $tempid univ_attacker
# Force a tag if it is rocket spleef rush
execute if score ActiveGame tourney_stats matches 9 run scoreboard players operation @s univ_attacker = $tempid univ_attacker



# Combat Tag
execute if score ActiveGame tourney_stats matches 9 as @e[type=fireball,tag=tnt,scores={FireballTime=2..5}] at @s run scoreboard players operation @a[tag=alive,distance=0..2] univ_attacker = @s rsr_fireball_shooter
execute if score ActiveGame tourney_stats matches 9 as @e[type=fireball,tag=tnt,scores={FireballTime=2..5}] at @s run scoreboard players set @a[tag=alive,distance=0..2] univ_tagtime 240
execute if score ActiveGame tourney_stats matches 9 as @e[type=fireball,tag=tnt,scores={FireballTime=6..}] at @s run scoreboard players operation @a[tag=alive,distance=0..2.8] univ_attacker = @s rsr_fireball_shooter
execute if score ActiveGame tourney_stats matches 9 as @e[type=fireball,tag=tnt,scores={FireballTime=6..}] at @s run scoreboard players set @a[tag=alive,distance=0..2.8] univ_tagtime 240

scoreboard players reset $tempid univ_attacker
scoreboard players operation @s univ_tagtime = tagtime tourney_stats

execute on attacker run tag @s remove temp_attack_tag