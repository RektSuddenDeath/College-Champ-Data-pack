
place template sot:challenge/shattered_ground_2_prepare ~-11 ~-17 ~-11
tag @a[team=red,distance=0..20] add sotChallenger

title @a[tag=sotChallenger,team=red] times 20 60 20
title @a[tag=sotChallenger,team=red] title "§c在42秒内击败房间内全部怪物！"
title @a[tag=sotChallenger,team=red] subtitle "挑战将在15秒后开始……"

tellraw @a[tag=sotChallenger,team=red] "§6———————————————————————————————————"
tellraw @a[tag=sotChallenger,team=red] ["§6[§r䄶§6] 限时挑战: ",{"text": "Shattered Ground 2","color": "#E3E3E3"}]
tellraw @a[tag=sotChallenger,team=red] "在§642§f秒内击败房间内全部怪物。"
tellraw @a[tag=sotChallenger,team=red] "怪物落入熔岩会被立刻击杀。"
tellraw @a[tag=sotChallenger,team=red] ""
tellraw @a[tag=sotChallenger,team=red] ""
tellraw @a[tag=sotChallenger,team=red] "§6———————————————————————————————————"


summon zombie ~7 ~-1 ~4 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~8 ~-1 ~3 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~8 ~-1 ~-2 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~7 ~-1 ~-3 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~6 ~-1 ~-8 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~4 ~-1 ~-8 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-1 ~-1 ~-8 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~-3 ~-1 ~-7 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-6 ~-1 ~-3 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~-7 ~-1 ~-1 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-7 ~-1 ~3 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~-6 ~-1 ~5 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-1 ~-1 ~7 {Tags:["sotchallengemob_red"],NoAI:1b}
summon pillager ~1 ~-1 ~8 {Tags:["sotchallengemob_red"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}

schedule function sot:challenge/red/start 15s

