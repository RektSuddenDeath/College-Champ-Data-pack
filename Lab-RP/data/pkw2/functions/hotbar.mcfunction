
#item replace entity @a[team=!spec] hotbar.0 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
#item replace entity @a[team=!spec] hotbar.1 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
#item replace entity @a[team=!spec] hotbar.3 with iron_nugget{display:{Name:'""'},CustomModelData:20031}
#item replace entity @a[team=!spec] hotbar.4 with iron_nugget{display:{Name:'""'},CustomModelData:20031}

scoreboard players set @a stoneMedal 0
scoreboard players set @a bronzeMedal 0
scoreboard players set @a silverMedal 0
scoreboard players set @a goldMedal 0

execute as @a run scoreboard players operation @s stoneMedal = @s pkw2_main

scoreboard players add @a[scores={pkw2_bonus1=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus2=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus3=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus4=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus5=1..}] bronzeMedal 1

scoreboard players add @a[scores={pkw2_bonus1=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus2=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus3=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus4=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus5=2..}] silverMedal 1

scoreboard players add @a[scores={pkw2_bonus1=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus2=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus3=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus4=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus5=3..}] goldMedal 1

execute as @a[team=!spec] if score @s stoneMedal matches 0 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§7暂无石奖牌"'},CustomModelData:20020}
execute as @a[team=!spec] if score @s stoneMedal matches 1 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 1
execute as @a[team=!spec] if score @s stoneMedal matches 2 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 2
execute as @a[team=!spec] if score @s stoneMedal matches 3 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 3
execute as @a[team=!spec] if score @s stoneMedal matches 4 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 4
execute as @a[team=!spec] if score @s stoneMedal matches 5 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 5
execute as @a[team=!spec] if score @s stoneMedal matches 6 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 6
execute as @a[team=!spec] if score @s stoneMedal matches 7 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 7
execute as @a[team=!spec] if score @s stoneMedal matches 8 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 8
execute as @a[team=!spec] if score @s stoneMedal matches 9 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 9
execute as @a[team=!spec] if score @s stoneMedal matches 10 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 10
execute as @a[team=!spec] if score @s stoneMedal matches 11 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 11
execute as @a[team=!spec] if score @s stoneMedal matches 12 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 12
execute as @a[team=!spec] if score @s stoneMedal matches 13 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 13
execute as @a[team=!spec] if score @s stoneMedal matches 14 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 14
execute as @a[team=!spec] if score @s stoneMedal matches 15 run item replace entity @s hotbar.5 with iron_nugget{display:{Name:'"§8石奖牌"'},CustomModelData:20024} 15

execute as @a[team=!spec] if score @s bronzeMedal matches 0 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'"§7暂无铜奖牌"'},CustomModelData:20020}
execute as @a[team=!spec] if score @s bronzeMedal matches 1 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'["§r",{"text":"§r铜奖牌","color":"#986A00","italic": false}]'},CustomModelData:20023} 1
execute as @a[team=!spec] if score @s bronzeMedal matches 2 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'["§r",{"text":"§r铜奖牌","color":"#986A00","italic": false}]'},CustomModelData:20023} 2
execute as @a[team=!spec] if score @s bronzeMedal matches 3 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'["§r",{"text":"§r铜奖牌","color":"#986A00","italic": false}]'},CustomModelData:20023} 3
execute as @a[team=!spec] if score @s bronzeMedal matches 4 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'["§r",{"text":"§r铜奖牌","color":"#986A00","italic": false}]'},CustomModelData:20023} 4
execute as @a[team=!spec] if score @s bronzeMedal matches 5 run item replace entity @s hotbar.6 with iron_nugget{display:{Name:'["§r",{"text":"§r铜奖牌","color":"#986A00","italic": false}]'},CustomModelData:20023} 5

execute as @a[team=!spec] if score @s silverMedal matches 0 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'"§7暂无银奖牌"'},CustomModelData:20020}
execute as @a[team=!spec] if score @s silverMedal matches 1 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'["§r",{"text":"§r银奖牌","color":"#D2D2D2","italic": false}]'},CustomModelData:20022} 1
execute as @a[team=!spec] if score @s silverMedal matches 2 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'["§r",{"text":"§r银奖牌","color":"#D2D2D2","italic": false}]'},CustomModelData:20022} 2
execute as @a[team=!spec] if score @s silverMedal matches 3 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'["§r",{"text":"§r银奖牌","color":"#D2D2D2","italic": false}]'},CustomModelData:20022} 3
execute as @a[team=!spec] if score @s silverMedal matches 4 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'["§r",{"text":"§r银奖牌","color":"#D2D2D2","italic": false}]'},CustomModelData:20022} 4
execute as @a[team=!spec] if score @s silverMedal matches 5 run item replace entity @s hotbar.7 with iron_nugget{display:{Name:'["§r",{"text":"§r银奖牌","color":"#D2D2D2","italic": false}]'},CustomModelData:20022} 5

execute as @a[team=!spec] if score @s goldMedal matches 0 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'"§7暂无金奖牌"'},CustomModelData:20020}
execute as @a[team=!spec] if score @s goldMedal matches 1 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'["§r",{"text":"§r金奖牌","color":"#FFC600","italic": false}]'},CustomModelData:20021} 1
execute as @a[team=!spec] if score @s goldMedal matches 2 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'["§r",{"text":"§r金奖牌","color":"#FFC600","italic": false}]'},CustomModelData:20021} 2
execute as @a[team=!spec] if score @s goldMedal matches 3 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'["§r",{"text":"§r金奖牌","color":"#FFC600","italic": false}]'},CustomModelData:20021} 3
execute as @a[team=!spec] if score @s goldMedal matches 4 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'["§r",{"text":"§r金奖牌","color":"#FFC600","italic": false}]'},CustomModelData:20021} 4
execute as @a[team=!spec] if score @s goldMedal matches 5 run item replace entity @s hotbar.8 with iron_nugget{display:{Name:'["§r",{"text":"§r金奖牌","color":"#FFC600","italic": false}]'},CustomModelData:20021} 5

kill @e[type=item]
execute if score gameflag pkw2_game matches 1 run schedule function pkw2:hotbar 1t