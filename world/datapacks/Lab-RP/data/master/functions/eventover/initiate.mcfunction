# LightShow Components
kill @e[type=area_effect_cloud,tag=finalelight]

summon area_effect_cloud 10015 256 10019 {Duration:9999999,Tags:["finalelight","f1"]}
summon area_effect_cloud 10011 256 10019 {Duration:9999999,Tags:["finalelight","f1"]}

summon area_effect_cloud 10015 256 10018 {Duration:9999999,Tags:["finalelight","f2"]}
summon area_effect_cloud 10011 256 10018 {Duration:9999999,Tags:["finalelight","f2"]}

summon area_effect_cloud 10015 256 10017 {Duration:9999999,Tags:["finalelight","f3"]}
summon area_effect_cloud 10011 256 10017 {Duration:9999999,Tags:["finalelight","f3"]}

summon area_effect_cloud 10015 256 10016 {Duration:9999999,Tags:["finalelight","f4"]}
summon area_effect_cloud 10011 256 10016 {Duration:9999999,Tags:["finalelight","f4"]}

summon area_effect_cloud 10015 256 10015 {Duration:9999999,Tags:["finalelight","f5"]}
summon area_effect_cloud 10011 256 10015 {Duration:9999999,Tags:["finalelight","f5"]}

summon area_effect_cloud 10015 256 10014 {Duration:9999999,Tags:["finalelight","f6"]}
summon area_effect_cloud 10011 256 10014 {Duration:9999999,Tags:["finalelight","f6"]}

summon area_effect_cloud 10015 256 10013 {Duration:9999999,Tags:["finalelight","f7"]}
summon area_effect_cloud 10011 256 10013 {Duration:9999999,Tags:["finalelight","f7"]}

summon area_effect_cloud 10015 256 10012 {Duration:9999999,Tags:["finalelight","f8"]}
summon area_effect_cloud 10011 256 10012 {Duration:9999999,Tags:["finalelight","f8"]}

summon area_effect_cloud 10016 256 10011 {Duration:9999999,Tags:["finalelight","f9"]}
summon area_effect_cloud 10010 256 10011 {Duration:9999999,Tags:["finalelight","f9"]}

summon area_effect_cloud 10017 256 10010 {Duration:9999999,Tags:["finalelight","f10"]}
summon area_effect_cloud 10009 256 10010 {Duration:9999999,Tags:["finalelight","f10"]}

summon area_effect_cloud 10018 256 10009 {Duration:9999999,Tags:["finalelight","f11"]}
summon area_effect_cloud 10008 256 10009 {Duration:9999999,Tags:["finalelight","f11"]}

summon area_effect_cloud 10019 256 10008 {Duration:9999999,Tags:["finalelight","f12"]}
summon area_effect_cloud 10007 256 10008 {Duration:9999999,Tags:["finalelight","f12"]}

summon area_effect_cloud 10019 256 10007 {Duration:9999999,Tags:["finalelight","f13"]}
summon area_effect_cloud 10007 256 10007 {Duration:9999999,Tags:["finalelight","f13"]}

summon area_effect_cloud 10019 256 10006 {Duration:9999999,Tags:["finalelight","f14"]}
summon area_effect_cloud 10007 256 10006 {Duration:9999999,Tags:["finalelight","f14"]}

summon area_effect_cloud 10018 256 10005 {Duration:9999999,Tags:["finalelight","f15"]}
summon area_effect_cloud 10008 256 10005 {Duration:9999999,Tags:["finalelight","f15"]}

summon area_effect_cloud 10017 256 10004 {Duration:9999999,Tags:["finalelight","f16"]}
summon area_effect_cloud 10009 256 10004 {Duration:9999999,Tags:["finalelight","f16"]}

summon area_effect_cloud 10016 256 10003 {Duration:9999999,Tags:["finalelight","f17"]}
summon area_effect_cloud 10010 256 10003 {Duration:9999999,Tags:["finalelight","f17"]}

summon area_effect_cloud 10015 256 10003 {Duration:9999999,Tags:["finalelight","f18"]}
summon area_effect_cloud 10011 256 10003 {Duration:9999999,Tags:["finalelight","f18"]}

summon area_effect_cloud 10014 256 10003 {Duration:9999999,Tags:["finalelight","f19"]}
summon area_effect_cloud 10012 256 10003 {Duration:9999999,Tags:["finalelight","f19"]}

summon area_effect_cloud 10013 256 10003 {Duration:9999999,Tags:["finalelight","f20"]}

scoreboard objectives remove LightShow
scoreboard objectives add LightShow dummy
scoreboard players set @e[type=area_effect_cloud,tag=finalelight] LightShow -1

scoreboard players set tick LightShow 0

# Start Controling lights and fireworks
function master:eventover/lightshow/control
function master:eventover/firework/control

# Teleport

tp @a[team=red,tag=!eventwinner] 10023.34 193.00 10006.43 449.50 -11.13
tp @a[team=blue,tag=!eventwinner] 10021.79 193.00 10003.49 420.84 -11.15
tp @a[team=green,tag=!eventwinner] 10018.40 193.00 10002.57 401.96 -11.39
tp @a[team=yellow,tag=!eventwinner] 10015.52 193.00 10000.49 374.00 -11.89
tp @a[team=cyan,tag=!eventwinner] 10011.31 193.00 10000.13 344.52 -11.25
tp @a[team=pink,tag=!eventwinner] 10008.25 193.00 10002.55 322.04 -14.33
tp @a[team=orange,tag=!eventwinner] 10005.75 193.00 10005.68 291.60 -15.16
tp @a[team=purple,tag=!eventwinner] 10003.33 193.00 10007.51 275.62 -7.93
tp @a[team=spec] 10013.49 191.00 9995.30 360.70 -14.61

tp @a[tag=eventwinner] 10013.52 195.00 10019.70 179.91 -1.30

execute if entity @p[team=red,tag=eventwinner] run team modify red suffix " §r䄝"
execute if entity @p[team=blue,tag=eventwinner] run team modify blue suffix " §r䄝"
execute if entity @p[team=green,tag=eventwinner] run team modify green suffix " §r䄝"
execute if entity @p[team=yellow,tag=eventwinner] run team modify yellow suffix " §r䄝"
execute if entity @p[team=cyan,tag=eventwinner] run team modify cyan suffix " §r䄝"
execute if entity @p[team=orange,tag=eventwinner] run team modify orange suffix " §r䄝"
execute if entity @p[team=pink,tag=eventwinner] run team modify pink suffix " §r䄝"
execute if entity @p[team=purple,tag=eventwinner] run team modify purple suffix " §r䄝"

# Crowned
clear @a
item replace entity @a[tag=eventwinner] armor.head with golden_helmet{Enchantments:[{id:"minecraft:unbreaking",lvl:66}],display:{Name:'"§6The Winner\'s Crown"'}}

# Scoreboard
scoreboard players set lobby tourney_stats 1
function master:eventover/scoreboard