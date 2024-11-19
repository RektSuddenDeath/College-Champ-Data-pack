

scoreboard objectives add meltdown_modifiers_chill_meter dummy
scoreboard players set @a meltdown_modifiers_chill_meter 0

tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Spreading Chill","color": "#E3E3E3"},"§b: Being too close to a frozen player accumulates chill meter. When chill meter reaches 100, the player is frozen."]
function meltdown:modifiers/spreading_chill/loop