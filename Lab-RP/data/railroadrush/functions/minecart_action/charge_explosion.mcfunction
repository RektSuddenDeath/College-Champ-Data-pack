
# Damage
execute as @a[distance=0..1.2,gamemode=!spectator] run damage @s 24 explosion
execute as @a[distance=1.2..1.7,gamemode=!spectator] run damage @s 18 explosion
execute as @a[distance=1.7..2.2,gamemode=!spectator] run damage @s 12 explosion
execute as @a[distance=2.2..8,gamemode=!spectator] run damage @s 6 explosion

# Only blow up blocks if there are players nearby
execute if entity @a[distance=0..15,gamemode=!spectator] run function railroadrush:minecart_action/explode_replacement

playsound entity.generic.explode block @a ~ ~ ~ 1
particle explosion ~ ~ ~ 0 0 0 0 1