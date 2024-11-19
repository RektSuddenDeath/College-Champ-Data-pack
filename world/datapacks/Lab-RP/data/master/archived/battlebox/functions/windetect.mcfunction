

execute if score gamecount battlebox_game matches 1 run function battlebox:winmatch/game1
execute if score gamecount battlebox_game matches 2 run function battlebox:winmatch/game2
execute if score gamecount battlebox_game matches 3 run function battlebox:winmatch/game3

#if game is not going to move on, loop this function

execute if score arena1 battlebox_game matches 1 unless score arena2 battlebox_game matches 1 run schedule function battlebox:windetect 5t
execute if score arena2 battlebox_game matches 1 unless score arena1 battlebox_game matches 1 run schedule function battlebox:windetect 5t
execute if score arena1 battlebox_game matches 1 if score arena2 battlebox_game matches 1 run schedule function battlebox:windetect 5t

#both arena complete, move onto next match or next game, and timeout exception
execute if score minute master.timer matches 0 if score second master.timer matches 0 run scoreboard players set arena1 battlebox_game 0
execute if score minute master.timer matches 0 if score second master.timer matches 0 run scoreboard players set arena2 battlebox_game 0

execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 3 run function battlebox:gameconclusion
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 3 run schedule clear master:timer/timeleft/sec

execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run function master:timer/nextround/15s
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run schedule clear battlebox:windetect
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run schedule clear battlebox:killdetect
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run schedule function battlebox:startnext 15s
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run tellraw @a [{"text":"\n\n本轮游戏结束。下一轮游戏将在15秒后开始。\n\n\n","color":"yellow"}]
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 2 run scoreboard players set gamecount battlebox_game 3


execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run function master:timer/nextround/15s
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run schedule clear battlebox:windetect
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run schedule clear battlebox:killdetect
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run schedule function battlebox:startnext 15s
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run tellraw @a [{"text":"\n\n本轮游戏结束。下一轮游戏将在15秒后开始。\n\n\n","color":"yellow"}]
execute if score arena1 battlebox_game matches 0 if score arena2 battlebox_game matches 0 if score gamecount battlebox_game matches 1 run scoreboard players set gamecount battlebox_game 2
