
execute as @e[type=minecart,tag=rrr_minecart,scores={rrr_minecart_power=..18}] at @s if block ~ ~ ~ powered_rail run playsound minecraft:block.brewing_stand.brew record @a ~ ~ ~ 1.2
execute as @e[type=minecart,tag=rrr_minecart,scores={rrr_minecart_power=..18}] at @s if block ~ ~ ~ powered_rail if score modifiers_explode_on_charge rrr_game matches 1 run function railroadrush:minecart_action/charge_explosion
execute as @e[type=minecart,tag=rrr_minecart] at @s if block ~ ~ ~ powered_rail run scoreboard players set @s rrr_minecart_power 20

execute if score gameflag rrr_game matches 1 run schedule function railroadrush:minecart_action/charge 1t