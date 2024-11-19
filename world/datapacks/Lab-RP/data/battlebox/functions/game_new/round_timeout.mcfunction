
scoreboard players set gameflag bb_game 0
# 

$execute unless score redwin bb_cache matches 1 unless score $(red)win bb_cache matches 1 if score red bb_blockscalc > $(red) bb_blockscalc run function battlebox:game_new/match_result/win/red with storage bb:opponent
$execute unless score redwin bb_cache matches 1 unless score $(red)win bb_cache matches 1 if score red bb_blockscalc = $(red) bb_blockscalc run function battlebox:game_new/match_result/tie/red

$execute unless score bluewin bb_cache matches 1 unless score $(blue)win bb_cache matches 1 if score blue bb_blockscalc > $(blue) bb_blockscalc run function battlebox:game_new/match_result/win/blue with storage bb:opponent
$execute unless score bluewin bb_cache matches 1 unless score $(blue)win bb_cache matches 1 if score blue bb_blockscalc = $(blue) bb_blockscalc run function battlebox:game_new/match_result/tie/blue

$execute unless score greenwin bb_cache matches 1 unless score $(green)win bb_cache matches 1 if score green bb_blockscalc > $(green) bb_blockscalc run function battlebox:game_new/match_result/win/green with storage bb:opponent
$execute unless score greenwin bb_cache matches 1 unless score $(green)win bb_cache matches 1 if score green bb_blockscalc = $(green) bb_blockscalc run function battlebox:game_new/match_result/tie/green

$execute unless score yellowwin bb_cache matches 1 unless score $(yellow)win bb_cache matches 1 if score yellow bb_blockscalc > $(yellow) bb_blockscalc run function battlebox:game_new/match_result/win/yellow with storage bb:opponent
$execute unless score yellowwin bb_cache matches 1 unless score $(yellow)win bb_cache matches 1 if score yellow bb_blockscalc = $(yellow) bb_blockscalc run function battlebox:game_new/match_result/tie/yellow

$execute unless score cyanwin bb_cache matches 1 unless score $(cyan)win bb_cache matches 1 if score cyan bb_blockscalc > $(cyan) bb_blockscalc run function battlebox:game_new/match_result/win/cyan with storage bb:opponent
$execute unless score cyanwin bb_cache matches 1 unless score $(cyan)win bb_cache matches 1 if score cyan bb_blockscalc = $(cyan) bb_blockscalc run function battlebox:game_new/match_result/tie/cyan

$execute unless score pinkwin bb_cache matches 1 unless score $(pink)win bb_cache matches 1 if score pink bb_blockscalc > $(pink) bb_blockscalc run function battlebox:game_new/match_result/win/pink with storage bb:opponent
$execute unless score pinkwin bb_cache matches 1 unless score $(pink)win bb_cache matches 1 if score pink bb_blockscalc = $(pink) bb_blockscalc run function battlebox:game_new/match_result/tie/pink

$execute unless score purplewin bb_cache matches 1 unless score $(purple)win bb_cache matches 1 if score purple bb_blockscalc > $(purple) bb_blockscalc run function battlebox:game_new/match_result/win/purple with storage bb:opponent
$execute unless score purplewin bb_cache matches 1 unless score $(purple)win bb_cache matches 1 if score purple bb_blockscalc = $(purple) bb_blockscalc run function battlebox:game_new/match_result/tie/purple

$execute unless score orangewin bb_cache matches 1 unless score $(orange)win bb_cache matches 1 if score orange bb_blockscalc > $(orange) bb_blockscalc run function battlebox:game_new/match_result/win/orange with storage bb:opponent
$execute unless score orangewin bb_cache matches 1 unless score $(orange)win bb_cache matches 1 if score orange bb_blockscalc = $(orange) bb_blockscalc run function battlebox:game_new/match_result/tie/orange

scoreboard players set completed bb_game 4



