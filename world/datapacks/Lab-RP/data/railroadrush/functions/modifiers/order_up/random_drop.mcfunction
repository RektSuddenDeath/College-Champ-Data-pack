
scoreboard objectives add rrr_temp_oudrop dummy
execute store result score @s rrr_temp_oudrop run random value 1..10

execute if score @s rrr_temp_oudrop matches 1 run summon item ~ ~ ~ {Item:{id:"rail",Count:1},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 2 run summon item ~ ~ ~ {Item:{id:"rail",Count:2},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 3 run summon item ~ ~ ~ {Item:{id:"rail",Count:3},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 4 run summon item ~ ~ ~ {Item:{id:"rail",Count:4},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 5 run summon item ~ ~ ~ {Item:{id:"powered_rail",Count:1},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 6 run summon item ~ ~ ~ {Item:{id:"powered_rail",Count:2},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 7 run summon item ~ ~ ~ {Item:{id:"raw_gold",Count:1},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 8 run summon item ~ ~ ~ {Item:{id:"raw_gold",Count:2},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 9 run summon item ~ ~ ~ {Item:{id:"raw_gold",Count:3},PickupDelay:20}
execute if score @s rrr_temp_oudrop matches 10 run summon item ~ ~ ~ {Item:{id:"raw_gold_block",Count:1},PickupDelay:20}

scoreboard objectives remove rrr_temp_oudrop


