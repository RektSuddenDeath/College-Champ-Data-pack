

$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=red] run data modify storage meltdown_temp killer_team set value "red"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=blue] run data modify storage meltdown_temp killer_team set value "blue"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=green] run data modify storage meltdown_temp killer_team set value "green"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=yellow] run data modify storage meltdown_temp killer_team set value "yellow"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=cyan] run data modify storage meltdown_temp killer_team set value "cyan"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=pink] run data modify storage meltdown_temp killer_team set value "pink"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=orange] run data modify storage meltdown_temp killer_team set value "orange"
$execute if entity @p[scores={univ_pid=$(attacker_pid)},team=purple] run data modify storage meltdown_temp killer_team set value "purple"