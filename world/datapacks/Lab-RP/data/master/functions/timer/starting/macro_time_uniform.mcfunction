
$execute if score pause master.timer matches 0 if score minute master.timer matches 0 if score second master.timer matches 0..9 run data modify storage generic_timer time_uniform set value "§c0$(minute):0$(second)"

$execute if score pause master.timer matches 0 if score minute master.timer matches 1..9 if score second master.timer matches 0..9 run data modify storage generic_timer time_uniform set value "0$(minute):0$(second)"
$execute if score pause master.timer matches 0 if score minute master.timer matches 10.. if score second master.timer matches 10.. run data modify storage generic_timer time_uniform set value "$(minute):$(second)"

$execute if score pause master.timer matches 0 if score minute master.timer matches 10.. if score second master.timer matches 0..9 run data modify storage generic_timer time_uniform set value "$(minute):0$(second)"
$execute if score pause master.timer matches 0 if score minute master.timer matches 0..9 if score second master.timer matches 10.. run data modify storage generic_timer time_uniform set value "0$(minute):$(second)"

$execute if score pause master.timer matches 1 if score minute master.timer matches 0..9 if score second master.timer matches 0..9 run data modify storage generic_timer time_uniform set value "§b0$(minute):0$(second)"
$execute if score pause master.timer matches 1 if score minute master.timer matches 10.. if score second master.timer matches 10.. run data modify storage generic_timer time_uniform set value "§b$(minute):$(second)"

$execute if score pause master.timer matches 1 if score minute master.timer matches 10.. if score second master.timer matches 0..9 run data modify storage generic_timer time_uniform set value "§b$(minute):0$(second)"
$execute if score pause master.timer matches 1 if score minute master.timer matches 0..9 if score second master.timer matches 10.. run data modify storage generic_timer time_uniform set value "§b0$(minute):$(second)"