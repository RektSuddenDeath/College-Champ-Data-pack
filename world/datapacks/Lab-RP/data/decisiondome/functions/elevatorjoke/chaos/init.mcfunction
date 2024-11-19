
scoreboard objectives add chaos_multi dummy
scoreboard objectives add chaos_control_tp_delay dummy

scoreboard players set red chaos_multi 0
scoreboard players set blue chaos_multi 0
scoreboard players set green chaos_multi 0
scoreboard players set yellow chaos_multi 0
scoreboard players set cyan chaos_multi 0
scoreboard players set pink chaos_multi 0
scoreboard players set orange chaos_multi 0
scoreboard players set purple chaos_multi 0
tellraw @a[tag=admin] ["\n","§c[§r鼱§c] Chaos Multiplier is now enabled.","\n"]
function decisiondome:elevatorjoke/chaos/loop