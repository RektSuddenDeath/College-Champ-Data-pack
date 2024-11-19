
scoreboard players set @a pkt_hunts 0
scoreboard players set @a pkt_indvscore 0
tag @a remove runner
tag @a remove hunter
function parkourtag:game/1/pregame

tellraw @s "[§6DEBUG§r] Attempted to restart the entire game."