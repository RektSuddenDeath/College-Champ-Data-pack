
scoreboard objectives add sg_modifier_clear_success dummy

scoreboard objectives add univ_modifier_multi_uses_5 dummy
scoreboard objectives add univ_modifier_multi_uses_10 dummy
scoreboard objectives add univ_modifier_multi_uses_20 dummy
scoreboard objectives add univ_modifier_multi_uses_30 dummy
scoreboard objectives add univ_modifier_multi_uses_50 dummy

scoreboard players set red univ_modifier_multi_uses_5 0
scoreboard players set blue univ_modifier_multi_uses_5 0
scoreboard players set green univ_modifier_multi_uses_5 0
scoreboard players set yellow univ_modifier_multi_uses_5 0
scoreboard players set cyan univ_modifier_multi_uses_5 0
scoreboard players set pink univ_modifier_multi_uses_5 0
scoreboard players set orange univ_modifier_multi_uses_5 0
scoreboard players set purple univ_modifier_multi_uses_5 0

scoreboard players set red univ_modifier_multi_uses_10 0
scoreboard players set blue univ_modifier_multi_uses_10 0
scoreboard players set green univ_modifier_multi_uses_10 0
scoreboard players set yellow univ_modifier_multi_uses_10 0
scoreboard players set cyan univ_modifier_multi_uses_10 0
scoreboard players set pink univ_modifier_multi_uses_10 0
scoreboard players set orange univ_modifier_multi_uses_10 0
scoreboard players set purple univ_modifier_multi_uses_10 0

scoreboard players set red univ_modifier_multi_uses_20 0
scoreboard players set blue univ_modifier_multi_uses_20 0
scoreboard players set green univ_modifier_multi_uses_20 0
scoreboard players set yellow univ_modifier_multi_uses_20 0
scoreboard players set cyan univ_modifier_multi_uses_20 0
scoreboard players set pink univ_modifier_multi_uses_20 0
scoreboard players set orange univ_modifier_multi_uses_20 0
scoreboard players set purple univ_modifier_multi_uses_20 0

scoreboard players set red univ_modifier_multi_uses_30 0
scoreboard players set blue univ_modifier_multi_uses_30 0
scoreboard players set green univ_modifier_multi_uses_30 0
scoreboard players set yellow univ_modifier_multi_uses_30 0
scoreboard players set cyan univ_modifier_multi_uses_30 0
scoreboard players set pink univ_modifier_multi_uses_30 0
scoreboard players set orange univ_modifier_multi_uses_30 0
scoreboard players set purple univ_modifier_multi_uses_30 0

scoreboard players set red univ_modifier_multi_uses_50 0
scoreboard players set blue univ_modifier_multi_uses_50 0
scoreboard players set green univ_modifier_multi_uses_50 0
scoreboard players set yellow univ_modifier_multi_uses_50 0
scoreboard players set cyan univ_modifier_multi_uses_50 0
scoreboard players set pink univ_modifier_multi_uses_50 0
scoreboard players set orange univ_modifier_multi_uses_50 0
scoreboard players set purple univ_modifier_multi_uses_50 0

tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Multiplier Manipulation","color": "#E3E3E3"},"§b: ","§b玩家能够从箱子中获得变更 Decision Dome 下一个游戏倍率的道具。"]
function sg:modifiers/multiplier_manip/loop