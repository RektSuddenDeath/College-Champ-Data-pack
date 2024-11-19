
data modify block -30004 -2 -30030 front_text.messages[0] set value '["  ",{"selector":"@r"}]'

data modify storage test:ar_name_copy a set string block -30004 -2 -30030 front_text.messages[0]

scoreboard players set $test_l9 tourney_sb -99

function acerace4:test_macro with storage test:ar_name_copy