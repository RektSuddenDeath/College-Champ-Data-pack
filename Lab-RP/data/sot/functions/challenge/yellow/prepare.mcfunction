
place template sot:challenge/shattered_ground_2_prepare ~-11 ~-17 ~-11
tag @a[team=yellow,distance=0..20] add sotChallenger

title @a[tag=sotChallenger,team=yellow] times 20 60 20
title @a[tag=sotChallenger,team=yellow] title "§c在42秒内击败房间内全部怪物！"
title @a[tag=sotChallenger,team=yellow] subtitle "挑战将在15秒后开始……"

tellraw @a[tag=sotChallenger,team=yellow] "§6———————————————————————————————————"
tellraw @a[tag=sotChallenger,team=yellow] ["§6[§r䄶§6] 限时挑战: ",{"text": "Shattered Ground 2","color": "#E3E3E3"}]
tellraw @a[tag=sotChallenger,team=yellow] "在§642§f秒内击败房间内全部怪物。"
tellraw @a[tag=sotChallenger,team=yellow] "怪物落入熔岩会被立刻击杀。"
tellraw @a[tag=sotChallenger,team=yellow] ""
tellraw @a[tag=sotChallenger,team=yellow] ""
tellraw @a[tag=sotChallenger,team=yellow] "§6———————————————————————————————————"


summon zombie ~7 ~-1 ~4 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~8 ~-1 ~3 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~8 ~-1 ~-2 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~7 ~-1 ~-3 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~6 ~-1 ~-8 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~4 ~-1 ~-8 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-1 ~-1 ~-8 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~-3 ~-1 ~-7 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-6 ~-1 ~-3 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~-7 ~-1 ~-1 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-7 ~-1 ~3 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~-6 ~-1 ~5 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}
summon zombie ~-1 ~-1 ~7 {Tags:["sotchallengemob_yellow"],NoAI:1b}
summon pillager ~1 ~-1 ~8 {Tags:["sotchallengemob_yellow"],NoAI:1b,HandItems:[{Count:1b,id:"minecraft:crossbow"}]}

schedule function sot:challenge/yellow/start 15s

