
execute as @e[type=marker,tag=sg_cakelighters] at @s run setblock ~ ~ ~ cake

execute as @a[scores={sg_white_candle_used=1..}] at @s if entity @e[type=chicken,tag=sg_cakelighters,distance=0..7] run tag @s add sg_cake_success
execute as @a[scores={sg_green_candle_used=1..}] at @s if entity @e[type=turtle,tag=sg_cakelighters,distance=0..7] run tag @s add sg_cake_success

execute as @a[scores={sg_white_candle_used=1..},tag=!sg_cake_success] run tellraw @s ["§d§lOOPS! ","§f白色蜡烛§7应当为§c小鸡§7身边的蜡烛插上！"]
execute as @a[scores={sg_green_candle_used=1..},tag=!sg_cake_success] run tellraw @s ["§d§lOOPS! ","§2绿色蜡烛§7应当为§c乌龟§7身边的蜡烛插上！"]
# Score Yes or not
execute as @a[tag=sg_cake_success,team=red] if score red sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=red] if score red sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=red] if score red sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=red] if score red sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=red] if score red sg_cakes_lighted matches 0..39 at @s run scoreboard players add red sg_cakes_lighted 1

## Repeat for other teams
execute as @a[tag=sg_cake_success,team=blue] if score blue sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=blue] if score blue sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=blue] if score blue sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=blue] if score blue sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=blue] if score blue sg_cakes_lighted matches 0..39 at @s run scoreboard players add blue sg_cakes_lighted 1

execute as @a[tag=sg_cake_success,team=green] if score green sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=green] if score green sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=green] if score green sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=green] if score green sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=green] if score green sg_cakes_lighted matches 0..39 at @s run scoreboard players add green sg_cakes_lighted 1

execute as @a[tag=sg_cake_success,team=yellow] if score yellow sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=yellow] if score yellow sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=yellow] if score yellow sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=yellow] if score yellow sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=yellow] if score yellow sg_cakes_lighted matches 0..39 at @s run scoreboard players add yellow sg_cakes_lighted 1

execute as @a[tag=sg_cake_success,team=cyan] if score cyan sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=cyan] if score cyan sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=cyan] if score cyan sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=cyan] if score cyan sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=cyan] if score cyan sg_cakes_lighted matches 0..39 at @s run scoreboard players add cyan sg_cakes_lighted 1

execute as @a[tag=sg_cake_success,team=pink] if score pink sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=pink] if score pink sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=pink] if score pink sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=pink] if score pink sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=pink] if score pink sg_cakes_lighted matches 0..39 at @s run scoreboard players add pink sg_cakes_lighted 1


execute as @a[tag=sg_cake_success,team=orange] if score orange sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=orange] if score orange sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=orange] if score orange sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=orange] if score orange sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=orange] if score orange sg_cakes_lighted matches 0..39 at @s run scoreboard players add orange sg_cakes_lighted 1


execute as @a[tag=sg_cake_success,team=purple] if score purple sg_cakes_lighted matches 0..39 run tellraw @s ["[§6+",{"score":{"name": "per_candle","objective": "sg_stats"},"color": "gold"},"§6分§f] 成功送上一根蜡烛！"]
execute as @a[tag=sg_cake_success,team=purple] if score purple sg_cakes_lighted matches 0..39 run scoreboard players operation @s sg_indvscore += per_candle sg_stats
execute as @a[tag=sg_cake_success,team=purple] if score purple sg_cakes_lighted matches 0..39 at @s run playsound sound.coinsminor record @s
execute as @a[tag=sg_cake_success,team=purple] if score purple sg_cakes_lighted matches 40.. run tellraw @s ["成功送上一根蜡烛！但是你的队伍已达此方式得分上限。"]
execute as @a[tag=sg_cake_success,team=purple] if score purple sg_cakes_lighted matches 0..39 at @s run scoreboard players add purple sg_cakes_lighted 1

# Cleanup
scoreboard players set @a sg_green_candle_used 0
scoreboard players set @a sg_white_candle_used 0
tag @a remove sg_cake_success
execute if score gameflag sg_game matches 1 run schedule function sg:cake_lighters/loop 1t 