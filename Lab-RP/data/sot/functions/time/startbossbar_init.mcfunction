
bossbar add sandstart ""
bossbar set sandstart color pink
bossbar set sandstart visible true
bossbar set sandstart players @a

scoreboard players set time_bar_active tourney_stats 1
scoreboard players set tick timebar 1200
scoreboard players set max timebar 1200

function master:timer/bar/tick
function sot:time/startbossbar_loop
#execute store result bossbar sandstart value run scoreboard players remove sandstart SotGame 1
# execute if score sandstart SotGame matches 1..31 run bossbar set sandstart name [{"text": "沙漏将在","color":"aqua"},{"score":{"objective":"SotGame","name":"sandstart"},"color":"white"},{"text": "秒","color":"white"},{"text":"后开始计时","color":"aqua"}]
# execute if score sandstart SotGame matches 1..31 run schedule function sot:time/startbossbar 1s
# execute if score sandstart SotGame matches 0 run scoreboard players set gametime SotTeamTime 30
# execute if score sandstart SotGame matches 0 run function sot:time/sandglass
# execute if score sandstart SotGame matches 0 run bossbar set sandstart visible false
# execute if score sandstart SotGame matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> §fThe Sand Timer is now ticking!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]