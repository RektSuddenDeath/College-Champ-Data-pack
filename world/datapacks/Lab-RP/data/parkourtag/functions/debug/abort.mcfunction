
function master:timer/pause

schedule clear parkourtag:game/1/pregame
schedule clear parkourtag:game/1/ready
schedule clear parkourtag:game/1/start
schedule clear parkourtag:game/1/detection

schedule clear parkourtag:game/2/pregame
schedule clear parkourtag:game/2/ready
schedule clear parkourtag:game/2/start
schedule clear parkourtag:game/2/detection

schedule clear parkourtag:game/3/pregame
schedule clear parkourtag:game/3/ready
schedule clear parkourtag:game/3/start
schedule clear parkourtag:game/3/detection

schedule clear parkourtag:game/4/pregame
schedule clear parkourtag:game/4/ready
schedule clear parkourtag:game/4/start
schedule clear parkourtag:game/4/detection

schedule clear parkourtag:game/5/pregame
schedule clear parkourtag:game/5/ready
schedule clear parkourtag:game/5/start
schedule clear parkourtag:game/5/detection

schedule clear parkourtag:game/6/pregame
schedule clear parkourtag:game/6/ready
schedule clear parkourtag:game/6/start
schedule clear parkourtag:game/6/detection

schedule clear parkourtag:game/7/pregame
schedule clear parkourtag:game/7/ready
schedule clear parkourtag:game/7/start
schedule clear parkourtag:game/7/detection

scoreboard players remove @a[tag=hunter] pkt_hunts 1
execute as @a run attribute @s generic.movement_speed base set 0.1
execute as @a run attribute @s generic.attack_damage base set -100

tellraw @s ["[§6DEBUG§r] Attempted to abort the round. All hunters have their hunt counts reduced by 1 automatically."]