

$data modify storage generic.health_bar_team_value red set from storage generic.health_bar bar_char[$(red)]
$data modify storage generic.health_bar_team_value blue set from storage generic.health_bar bar_char[$(blue)]
$data modify storage generic.health_bar_team_value green set from storage generic.health_bar bar_char[$(green)]
$data modify storage generic.health_bar_team_value yellow set from storage generic.health_bar bar_char[$(yellow)]
$data modify storage generic.health_bar_team_value cyan set from storage generic.health_bar bar_char[$(cyan)]
$data modify storage generic.health_bar_team_value pink set from storage generic.health_bar bar_char[$(pink)]
$data modify storage generic.health_bar_team_value orange set from storage generic.health_bar bar_char[$(orange)]
$data modify storage generic.health_bar_team_value purple set from storage generic.health_bar bar_char[$(purple)]

# 到此，在generic.health_bar_team_value 里面就有了各队的在 long_bar_offset_(value) 字体里面的条长。