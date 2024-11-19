schedule clear battlebox:game/1/pregame
schedule clear battlebox:game/1/ready
schedule clear battlebox:game/1/start
schedule clear battlebox:game/1/detection

schedule clear battlebox:game/2/pregame
schedule clear battlebox:game/2/ready
schedule clear battlebox:game/2/start
schedule clear battlebox:game/2/detection

schedule clear battlebox:game/3/pregame
schedule clear battlebox:game/3/ready
schedule clear battlebox:game/3/start
schedule clear battlebox:game/3/detection

schedule clear battlebox:game/4/pregame
schedule clear battlebox:game/4/ready
schedule clear battlebox:game/4/start
schedule clear battlebox:game/4/detection

schedule clear battlebox:game/5/pregame
schedule clear battlebox:game/5/ready
schedule clear battlebox:game/5/start
schedule clear battlebox:game/5/detection

schedule clear battlebox:game/6/pregame
schedule clear battlebox:game/6/ready
schedule clear battlebox:game/6/start
schedule clear battlebox:game/6/detection

schedule clear battlebox:game/7/pregame
schedule clear battlebox:game/7/ready
schedule clear battlebox:game/7/start
schedule clear battlebox:game/7/detection

clear @a
kill @e[type=arrow]
kill @e[type=item]
effect give @a instant_health infinite 20 true

scoreboard players set @a bb_indvscore 0
function battlebox:game/1/pregame

tellraw @s ["[§6DEBUG§r] Reset all the game states and initiated the 1st round."]