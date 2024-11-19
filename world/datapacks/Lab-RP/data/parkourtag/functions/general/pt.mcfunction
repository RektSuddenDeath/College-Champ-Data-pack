

scoreboard players add round_time pkt_game 1
scoreboard players operation %surv_score_mod pkt_game = round_time pkt_game
scoreboard players operation %surv_score_mod pkt_game %= 10 math

execute if score %surv_score_mod pkt_game matches 0 run function parkourtag:general/survival_score


execute if score gameflag pkt_game matches 1 run schedule function parkourtag:general/pt 1s