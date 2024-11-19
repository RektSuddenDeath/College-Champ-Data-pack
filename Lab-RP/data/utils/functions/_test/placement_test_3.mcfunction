
$tellraw @a ["$(placement_name)"]


scoreboard objectives add tmp_scb_a dummy ["OUTPUT"]
scoreboard objectives setdisplay sidebar tmp_scb_a
scoreboard objectives modify tmp_scb_a displayautoupdate true
scoreboard players set $line tmp_scb_a 0
$scoreboard players display name $line tmp_scb_a  ["§7[§a$(placement_name)§7]"," §7[§a$(placement_name)§7]"," §7[§a$(placement_name)§7]"]