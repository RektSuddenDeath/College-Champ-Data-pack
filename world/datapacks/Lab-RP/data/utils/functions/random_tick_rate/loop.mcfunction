
execute unless score min rand_tick_rate matches -2147483648..2147483647 run scoreboard players set min rand_tick_rate 100
execute unless score max rand_tick_rate matches -2147483648..2147483647 run scoreboard players set max rand_tick_rate 300


execute store result storage utils:rand_tick_rate min int 1 run scoreboard players get min rand_tick_rate
execute store result storage utils:rand_tick_rate max int 3 run scoreboard players get max rand_tick_rate

function utils:random_tick_rate/macro_rand with storage utils:rand_tick_rate

function utils:random_tick_rate/macro with storage utils:rand_tick_rate

schedule function utils:random_tick_rate/loop 3t