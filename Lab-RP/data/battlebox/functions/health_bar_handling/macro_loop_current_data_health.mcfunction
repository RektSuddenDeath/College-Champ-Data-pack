


data modify storage bb:match_data red.own_health set from storage generic.health_bar_team_value red
data modify storage bb:match_data blue.own_health set from storage generic.health_bar_team_value blue
data modify storage bb:match_data green.own_health set from storage generic.health_bar_team_value green
data modify storage bb:match_data yellow.own_health set from storage generic.health_bar_team_value yellow
data modify storage bb:match_data cyan.own_health set from storage generic.health_bar_team_value cyan
data modify storage bb:match_data pink.own_health set from storage generic.health_bar_team_value pink
data modify storage bb:match_data orange.own_health set from storage generic.health_bar_team_value orange
data modify storage bb:match_data purple.own_health set from storage generic.health_bar_team_value purple

$data modify storage bb:match_data red.enemy_health set from storage generic.health_bar_team_value $(red)
$data modify storage bb:match_data blue.enemy_health set from storage generic.health_bar_team_value $(blue)
$data modify storage bb:match_data green.enemy_health set from storage generic.health_bar_team_value $(green)
$data modify storage bb:match_data yellow.enemy_health set from storage generic.health_bar_team_value $(yellow)
$data modify storage bb:match_data cyan.enemy_health set from storage generic.health_bar_team_value $(cyan)
$data modify storage bb:match_data pink.enemy_health set from storage generic.health_bar_team_value $(pink)
$data modify storage bb:match_data orange.enemy_health set from storage generic.health_bar_team_value $(orange)
$data modify storage bb:match_data purple.enemy_health set from storage generic.health_bar_team_value $(purple)