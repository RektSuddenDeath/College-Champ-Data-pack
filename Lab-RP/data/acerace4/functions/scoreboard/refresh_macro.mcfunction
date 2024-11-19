
forceload add -30001 -30030 -30004 -30030

$data modify block -30004 -2 -30030 front_text.messages[0] set value '["  §e$(l3).§f ",{"selector":"@a[scores={ar_prevpos=$(l3)},limit=1]"}]'
$data modify block -30003 -2 -30030 front_text.messages[0] set value '["  §e$(l2).§f ",{"selector":"@a[scores={ar_prevpos=$(l2)},limit=1]"}]'
$data modify block -30002 -2 -30030 front_text.messages[0] set value '["  §e$(l1).§f ",{"selector":"@a[scores={ar_prevpos=$(l1)},limit=1]"}]'
$data modify block -30001 -2 -30030 front_text.messages[0] set value '["  §e$(l0).§f ",{"selector":"@a[scores={ar_prevpos=$(l0)},limit=1]"}]'


data modify storage ar:scb_names 3 set string block -30004 -2 -30030 front_text.messages[0]
data modify storage ar:scb_names 2 set string block -30003 -2 -30030 front_text.messages[0]
data modify storage ar:scb_names 1 set string block -30002 -2 -30030 front_text.messages[0]
data modify storage ar:scb_names 0 set string block -30001 -2 -30030 front_text.messages[0]

function acerace4:scoreboard/refresh_macro_2 with storage ar:scb_names

scoreboard players set $ar_sb_l3 ar_sb 3
scoreboard players set $ar_sb_l2 ar_sb 2
scoreboard players set $ar_sb_l1 ar_sb 1
scoreboard players set $ar_sb_l0 ar_sb 0