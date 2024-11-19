
# Damage
execute as @a[distance=0..0.8,gamemode=!spectator] run damage @s 24 explosion
execute as @a[distance=0.8..1.2,gamemode=!spectator] run damage @s 18 explosion
execute as @a[distance=1.2..1.7,gamemode=!spectator] run damage @s 12 explosion
execute as @a[distance=1.7..2.2,gamemode=!spectator] run damage @s 6 explosion

# Only blow up blocks if there are players nearby
function railroadrush:minecart_action/explode_always
execute if entity @a[distance=0..15,gamemode=!spectator] run function railroadrush:minecart_action/explode_replacement

playsound entity.generic.explode block @a ~ ~ ~ 1
particle explosion ~ ~ ~ 0 0 0 0 1

# Distance Travelled
execute store result score @s rrr_distance_this run data get entity @s Pos[0]
scoreboard players remove @s rrr_distance_this 80007

execute if entity @s[tag=test] run tellraw @a ["§b[§r褿§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_red] run tellraw @a[team=red] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_blue] run tellraw @a[team=blue] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_green] run tellraw @a[team=green] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_yellow] run tellraw @a[team=yellow] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_cyan] run tellraw @a[team=cyan] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_pink] run tellraw @a[team=pink] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_orange] run tellraw @a[team=orange] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]
execute if entity @s[tag=team_purple] run tellraw @a[team=purple] ["§b[§r礸§b] 一辆TNT矿车在",{"score":{"name": "@s","objective": "rrr_distance_this"},"color": "#E2E2E2"},{"text": "格","color": "#E2E2E2"},"§b爆炸了。"]

execute if entity @s[tag=team_red] unless score red rrr_distance_max >= @s rrr_distance_this run scoreboard players operation red rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_blue] unless score blue rrr_distance_max >= @s rrr_distance_this run scoreboard players operation blue rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_green] unless score green rrr_distance_max >= @s rrr_distance_this run scoreboard players operation green rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_yellow] unless score yellow rrr_distance_max >= @s rrr_distance_this run scoreboard players operation yellow rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_cyan] unless score cyan rrr_distance_max >= @s rrr_distance_this run scoreboard players operation cyan rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_pink] unless score pink rrr_distance_max >= @s rrr_distance_this run scoreboard players operation pink rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_orange] unless score orange rrr_distance_max >= @s rrr_distance_this run scoreboard players operation orange rrr_distance_max = @s rrr_distance_this
execute if entity @s[tag=team_purple] unless score purple rrr_distance_max >= @s rrr_distance_this run scoreboard players operation purple rrr_distance_max = @s rrr_distance_this

# Orderup Modifier
execute if score modifiers_order_up rrr_game matches 1 at @s run function railroadrush:modifiers/order_up/random_drop

#tellraw @a[tag=debug] [{"score":{"name": "@s","objective": "rrr_diff_pos_x"}}]
execute if score @s rrr_distance_this matches ..100 run tellraw @a[tag=debug] [{"nbt":"Motion","entity":"@s"},"         ",{"nbt":"OnGround","entity":"@s"}]
function railroadrush:checkpoint/distance
kill @s