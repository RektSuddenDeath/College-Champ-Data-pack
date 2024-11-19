
kill @e[type=armor_stand,tag=Intro]
summon armor_stand -10000 62 -10087 {Tags:["Intro"],NoGravity:1b,Invisible:1b,Rotation:[180f,0f]}

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a ["  ","§f§l随着比赛的进行，后续游戏的积分价值会§6§l更高§f§l。"]
tellraw @a ""
tellraw @a "  将自己更有自信的游戏留到最后，能够提升获胜机会！"
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

function decisiondome:team_intro/multiplier_anim/reset
schedule function decisiondome:team_intro/multiplier_anim/1 30t
schedule function decisiondome:team_intro/multiplier_anim/15 50t
schedule function decisiondome:team_intro/multiplier_anim/2 70t
schedule function decisiondome:team_intro/multiplier_anim/25 90t
schedule function decisiondome:team_intro/multiplier_anim/3 110t

schedule clear decisiondome:team_intro/phase_loop/3
function decisiondome:team_intro/phase_loop/4