
# Clears previous randomisers, to avoid messing up

kill @e[type=area_effect_cloud,tag=W]

# This Generates a Number from (1-45), to serve for wall BEHAVIOUR type
# The Current Range serving for wall generation may be
# First Minute: 1-14 31-38 (22 walls)
# Second Minute: 1-22 31-45 (37 walls)
# Third Minute: 15-30 39-45 (23 walls)

# 39-45 B
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5000 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5001 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
# 31-38 A
summon area_effect_cloud -5000 5 -5002 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5003 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5004 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5005 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5006 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5007 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5008 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5009 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
# 23-30 C
summon area_effect_cloud -5000 5 -5010 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5011 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5012 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5013 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5014 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5015 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5016 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5017 {Duration:999999999,Tags:["W","C"]}
scoreboard players add @e[tag=W] random 1
# 15-22 B
summon area_effect_cloud -5000 5 -5018 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5019 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5020 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5021 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5022 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5023 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5024 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5025 {Duration:999999999,Tags:["W","B","C"]}
scoreboard players add @e[tag=W] random 1
# 1-14 A
summon area_effect_cloud -5000 5 -5026 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5027 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5028 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5029 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5030 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5031 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5032 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5033 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5034 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5035 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5036 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5037 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5038 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
summon area_effect_cloud -5000 5 -5039 {Duration:999999999,Tags:["W","A","B"]}
scoreboard players add @e[tag=W] random 1
