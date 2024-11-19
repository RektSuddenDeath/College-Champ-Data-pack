# Game Duration: 5:00
# 1:00 Four Corners begin melting (需要更新地图)
# 1:20 Capture Crates in Inner Corners are unlocked
# 1:50 Outer Ring begins melting, Inner Ring is accessible, Four Corners fully melted (需要更新地图)
# 2:40 Inner Corners begin Melting, Central Core is accessible, Outer Ring fully melted （需要更新地图）
# 3:10 Inner Ring Begin Melting （需要更新地图）
# 3:30 Central Core capture crates are available, Inner Corners fully melted, Central Core begin melting （需要更新地图）
# 4:00 Inner Ring fully Melted （需要更新地图）
# 4:45 Game Force Ends
# Room Meltdown Imminent alerts 20sec before fully melted, protective doors are fully closed 8sec before fully melted

# Round/1
execute if score minute master.timer matches 4 if score second master.timer matches 20 run function meltdown:map_update/round_2/1
execute if score minute master.timer matches 4 if score second master.timer matches 20 run function meltdown:room_melt/begin/outer_corner

execute if score minute master.timer matches 3 if score second master.timer matches 45 run function meltdown:poi_unlock/crates_outer_corner

execute if score minute master.timer matches 3 if score second master.timer matches 50 run function meltdown:melt_imminent/outer_corner

execute if score minute master.timer matches 3 if score second master.timer matches 30 run function meltdown:map_update/round_2/2
execute if score minute master.timer matches 3 if score second master.timer matches 30 run function meltdown:room_melt/begin/outer_ring
execute if score minute master.timer matches 3 if score second master.timer matches 30 run function meltdown:poi_unlock/rooms_inner_ring
execute if score minute master.timer matches 3 if score second master.timer matches 30 run function meltdown:eliminations/caught_in_melting_room/outer_corner

execute if score minute master.timer matches 3 if score second master.timer matches 0 run function meltdown:melt_imminent/outer_ring

execute if score minute master.timer matches 2 if score second master.timer matches 40 run function meltdown:map_update/round_2/3
execute if score minute master.timer matches 2 if score second master.timer matches 40 run function meltdown:room_melt/begin/inner_corner
execute if score minute master.timer matches 2 if score second master.timer matches 40 run function meltdown:poi_unlock/rooms_central_core
execute if score minute master.timer matches 2 if score second master.timer matches 40 run function meltdown:eliminations/caught_in_melting_room/outer_ring

execute if score minute master.timer matches 2 if score second master.timer matches 10 run function meltdown:map_update/round_2/4
execute if score minute master.timer matches 2 if score second master.timer matches 10 run function meltdown:room_melt/begin/inner_ring
execute if score minute master.timer matches 2 if score second master.timer matches 10 run function meltdown:melt_imminent/inner_corner

execute if score minute master.timer matches 1 if score second master.timer matches 50 run function meltdown:map_update/round_2/5
execute if score minute master.timer matches 1 if score second master.timer matches 50 run function meltdown:poi_unlock/crates_central_core
execute if score minute master.timer matches 1 if score second master.timer matches 50 run function meltdown:room_melt/begin/central_core
execute if score minute master.timer matches 1 if score second master.timer matches 50 run function meltdown:eliminations/caught_in_melting_room/inner_corner

execute if score minute master.timer matches 1 if score second master.timer matches 40 run function meltdown:melt_imminent/inner_ring

execute if score minute master.timer matches 1 if score second master.timer matches 20 run function meltdown:map_update/round_2/6
execute if score minute master.timer matches 1 if score second master.timer matches 20 run function meltdown:eliminations/caught_in_melting_room/inner_ring

execute if score minute master.timer matches 0 if score second master.timer matches 40 run function meltdown:melt_imminent/central_core

execute if score minute master.timer matches 0 if score second master.timer matches 20 run function meltdown:eliminations/caught_in_melting_room/central_core

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:time/round_2 1s