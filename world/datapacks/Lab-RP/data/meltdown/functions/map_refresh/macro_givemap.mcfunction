
$execute as @a[gamemode=creative] run item replace entity @s weapon.mainhand with filled_map{map:$(mainhand_id)}
$execute as @a[gamemode=creative] run item replace entity @s weapon.offhand with filled_map{map:$(offhand_id)}

$execute as @a[gamemode=spectator] run item replace entity @s weapon.mainhand with filled_map{map:$(mainhand_id)}
$execute as @a[gamemode=spectator] run item replace entity @s weapon.offhand with filled_map{map:$(offhand_id)}