
execute as @p[scores={standings=1..}] run function utils:standings/decidegame

scoreboard players set @a standings 0
scoreboard players enable @a standings

schedule function utils:standings/request 10t