
#Load the corresponding chunks, to ensure maps get correctly copied.
forceload add 480 480 520 520
forceload add 620 520 580 480
forceload add 521 592 479 550

forceload add -23 50 23 100
forceload add -23 127 23 173
forceload add -23 202 23 248
forceload add -23 277 23 323
# CLEAR PREV MAP
function battlebox:mapindv/0/structure
#Map 0
execute if score map bb_game matches 0 run schedule function battlebox:mapindv/0/all 2t
#Map 1
execute if score map bb_game matches 1 run schedule function battlebox:mapindv/1/all 2t
#Map 2
execute if score map bb_game matches 2 run schedule function battlebox:mapindv/2/all 2t
#Map 3
execute if score map bb_game matches 3 run schedule function battlebox:mapindv/3/all 2t
#Map 4
execute if score map bb_game matches 4 run schedule function battlebox:mapindv/4/all 2t
#Map 5
execute if score map bb_game matches 5 run schedule function battlebox:mapindv/5/all 2t
#Map 6
execute if score map bb_game matches 6 run schedule function battlebox:mapindv/6/all 2t
#Map 7
execute if score map bb_game matches 7 run schedule function battlebox:mapindv/7/all 2t
#Map 8
execute if score map bb_game matches 8 run schedule function battlebox:mapindv/8/all 2t
#Map 9
execute if score map bb_game matches 9 run schedule function battlebox:mapindv/9/all 2t
#Map 10
execute if score map bb_game matches 10 run schedule function battlebox:mapindv/10/all 2t