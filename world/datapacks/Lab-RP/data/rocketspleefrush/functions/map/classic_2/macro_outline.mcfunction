
$place template rocketspleefrush:classic_2/outline/$(island_no) $(x) $(y) $(z)
$kill @e[type=item_display,tag=rsr,tag=classic_2_$(island_no)]

$scoreboard players set $minY rsr_playerY $(y)
scoreboard players remove $minY rsr_playerY 15
