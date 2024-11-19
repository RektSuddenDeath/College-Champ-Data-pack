

bossbar set sandstart players @a

data modify storage ui:timebar namespace set value "sandstart"
function sot:time/timebar_macro with storage ui:timebar

execute if score tick timebar matches 1.. run schedule function sot:time/startbossbar_loop 1t

execute if score tick timebar matches 0 run scoreboard players set gametime SotTeamTime 30
execute if score tick timebar matches 0 run scoreboard players set time_bar_active tourney_stats 0
execute if score tick timebar matches 0 run function sot:time/sandglass
execute if score tick timebar matches 0 run bossbar set sandstart visible false
execute if score tick timebar matches 0 run tellraw @a[tag=_transcript] ["  §bTranscript >> §fThe Sand Timer is now ticking!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]