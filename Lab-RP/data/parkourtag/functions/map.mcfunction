
#Load the corresponding chunks, to ensure maps get correctly copied.
# forceload add 480 480 520 520
# forceload add 620 520 580 480

#Map 1
# execute if score map pkt_game matches 1 run function parkourtag:mapindv/1/0
# execute if score map pkt_game matches 1 run schedule function parkourtag:mapindv/1/1 5s
# execute if score map pkt_game matches 1 run schedule function parkourtag:mapindv/1/2 10s
# execute if score map pkt_game matches 1 run schedule function parkourtag:mapindv/1/3 15s

#Map 2
# execute if score map pkt_game matches 2 run function parkourtag:mapindv/2/0
# execute if score map pkt_game matches 2 run schedule function parkourtag:mapindv/2/1 5s
# execute if score map pkt_game matches 2 run schedule function parkourtag:mapindv/2/2 10s
# execute if score map pkt_game matches 2 run schedule function parkourtag:mapindv/2/3 15s

# #Map 3
# execute if score map pkt_game matches 3 run function parkourtag:mapindv/3/0
# execute if score map pkt_game matches 3 run schedule function parkourtag:mapindv/3/1 5s
# execute if score map pkt_game matches 3 run schedule function parkourtag:mapindv/3/2 10s
# execute if score map pkt_game matches 3 run schedule function parkourtag:mapindv/3/3 15s