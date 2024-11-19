
scoreboard players set paused_for master.timer 0
scoreboard players set pause master.timer 1
tellraw @a [{"text":"游戏计时已暂停！","color":"red","bold":true}]

stopsound @a voice music.gameintro

schedule clear battlebox:game/1/pregame
schedule clear battlebox:game/2/pregame
schedule clear battlebox:game/3/pregame
schedule clear battlebox:game/4/pregame
schedule clear battlebox:game/5/pregame
schedule clear battlebox:game/6/pregame
schedule clear battlebox:game/7/pregame

schedule clear parkourtag:game/1/pregame
schedule clear parkourtag:game/2/pregame
schedule clear parkourtag:game/3/pregame
schedule clear parkourtag:game/4/pregame
schedule clear parkourtag:game/5/pregame
schedule clear parkourtag:game/6/pregame
schedule clear parkourtag:game/7/pregame

schedule clear battlebox:game/1/ready
schedule clear battlebox:game/2/ready
schedule clear battlebox:game/3/ready
schedule clear battlebox:game/4/ready
schedule clear battlebox:game/5/ready
schedule clear battlebox:game/6/ready
schedule clear battlebox:game/7/ready

schedule clear battlebox:game_new/next_round
schedule clear battlebox:game_new/round_ready
schedule clear battlebox:game_new/round_start

schedule clear parkourtag:game/1/ready
schedule clear parkourtag:game/2/ready
schedule clear parkourtag:game/3/ready
schedule clear parkourtag:game/4/ready
schedule clear parkourtag:game/5/ready
schedule clear parkourtag:game/6/ready
schedule clear parkourtag:game/7/ready


schedule clear battlebox:game/1/start
schedule clear battlebox:game/2/start
schedule clear battlebox:game/3/start
schedule clear battlebox:game/4/start
schedule clear battlebox:game/5/start
schedule clear battlebox:game/6/start
schedule clear battlebox:game/7/start

schedule clear parkourtag:game/1/start
schedule clear parkourtag:game/2/start
schedule clear parkourtag:game/3/start
schedule clear parkourtag:game/4/start
schedule clear parkourtag:game/5/start
schedule clear parkourtag:game/6/start
schedule clear parkourtag:game/7/start

schedule clear hitw:betweenrounds

schedule clear skybattle:round/1/init
schedule clear skybattle:round/2/init
schedule clear skybattle:round/3/init

schedule clear rocketspleefrush:nextround