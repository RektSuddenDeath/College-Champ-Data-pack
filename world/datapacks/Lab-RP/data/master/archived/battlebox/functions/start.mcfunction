
schedule clear master:timer/selkit/sec
schedule clear master:timer/starting/sec
schedule clear battlebox:timeannounce/5
schedule clear battlebox:timeannounce/4
schedule clear battlebox:timeannounce/3
schedule clear battlebox:timeannounce/2
schedule clear battlebox:timeannounce/1
function master:timer/timeleft/1min30


title @a times 5 20 5
title @a title " "
fill 16 10 32 24 6 32 air
fill 16 10 -7 24 6 -7 air
fill 70 6 32 62 10 32 air
fill 62 6 -7 70 10 -7 air

kill @e[type=item]

#summons instaharm bottles
summon item 34 5 13 {Glowing:1,Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0}],CustomPotionColor:0}}}
summon item 5 5 13 {Glowing:1,Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0}],CustomPotionColor:0}}}
summon item 80 5 13 {Glowing:1,Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0}],CustomPotionColor:0}}}
summon item 51 5 13 {Glowing:1,Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Duration:0}],CustomPotionColor:0}}}

function battlebox:killdetect
function battlebox:windetect

#this detects death
setblock -18 4 5 redstone_block

execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 2

# tellraw @a [{"text":"————————————————————————","color":"green"},{"text":"\n\n"},{"text":"Battle Box\n\n","color":"white","bold":"true"},{"text":"使用你的职业物品和剪刀羊毛，\n击败敌人，夺取中心！\n\n","color":"yellow"},{"text":"积分标准:  ","bold":true,"color":"yellow"},{"text":"击杀: ","color":"red"},{"text":"7 ","color":"green"},{"text":"获胜: ","color":"red"},{"text":"30","color":"green"},{"text":"\n————————————————————————","color":"green"}]
title @a subtitle " "
kill @e[type=arrow]