

schedule clear master:timer/starting/sec
schedule clear sot:beginlistener
stopsound @a voice minecraft:music.gameintro
scoreboard players reset : Sotsb_global
scoreboard players set §4 Sotsb_global 4
scoreboard players reset : Sotsb_red
scoreboard players set §4 Sotsb_red 4
scoreboard players reset : Sotsb_blue
scoreboard players set §4 Sotsb_blue 4
scoreboard players reset : Sotsb_green
scoreboard players set §4 Sotsb_green 4
scoreboard players reset : Sotsb_yellow
scoreboard players set §4 Sotsb_yellow 4
scoreboard players reset : Sotsb_cyan
scoreboard players set §4 Sotsb_cyan 4
scoreboard players reset : Sotsb_orange
scoreboard players set §4 Sotsb_orange 4
scoreboard players reset : Sotsb_purple
scoreboard players set §4 Sotsb_purple 4
scoreboard players reset : Sotsb_pink
scoreboard players set §4 Sotsb_pink 4
team modify placeholder_4 suffix [{"text": "In Game","color":"red","bold":true}]

gamerule fallDamage true

execute as @a at @s run playsound minecraft:blocknote_block.guitar block @s ~ ~ ~ 100 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1


title @a title " "
title @a subtitle " "
title @a times 0 100 20

tellraw @a ["§b[§r䄶§b] 游戏开始！沙漏将在",{"text": "60","color": "#E3E3E3"},"§b秒后开始计时。"]
#Removes barrier
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-11 86 ~-27 ~-11 82 ~-31 air
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-8 85 ~-26 ~8 82 ~-26 air
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~11 86 ~-27 ~11 82 ~-31 air

scoreboard players set gameflag SotGame 1
scoreboard players set sandstart SotGame 60
scoreboard players set gametime SotTeamTime 0

scoreboard players set RoundActive tourney_stats 1
#Tags Players

execute as @a[team=red] run scoreboard players add RedPlayers SotGame 1
execute as @a[team=blue] run scoreboard players add BluePlayers SotGame 1
execute as @a[team=green] run scoreboard players add GreenPlayers SotGame 1
execute as @a[team=yellow] run scoreboard players add YellowPlayers SotGame 1
execute as @a[team=cyan] run scoreboard players add CyanPlayers SotGame 1
execute as @a[team=pink] run scoreboard players add PinkPlayers SotGame 1
execute as @a[team=orange] run scoreboard players add OrangePlayers SotGame 1
execute as @a[team=purple] run scoreboard players add PurplePlayers SotGame 1

effect give @a resistance 90 0 true

scoreboard players set RedPlaying SotGame 1
scoreboard players set BluePlaying SotGame 1
scoreboard players set GreenPlaying SotGame 1
scoreboard players set YellowPlaying SotGame 1
scoreboard players set CyanPlaying SotGame 1
scoreboard players set PinkPlaying SotGame 1
scoreboard players set OrangePlaying SotGame 1
scoreboard players set PurplePlaying SotGame 1



function sot:golddetermine

# function sot:drop/red
# function sot:drop/blue
# function sot:drop/green
# function sot:drop/yellow

function sot:mobfix
function sot:goldshine

function sot:spectator/init
function sot:time/startbossbar_init

function sot:sacrificer/relative
function sot:sphinx
function sot:armorstandvis
function sot:keypicknotify
spawnpoint @a[team=red] 2503 75 2533 180
spawnpoint @a[team=blue] 2003 75 2533 180
spawnpoint @a[team=green] 2503 75 2033 180
spawnpoint @a[team=yellow] 2503 75 3033 180
spawnpoint @a[team=cyan] 2003 75 3033 180
spawnpoint @a[team=pink] 3003 75 2033 180
spawnpoint @a[team=orange] 3003 75 2533 180
spawnpoint @a[team=purple] 3003 75 3033 180

execute as @e[type=area_effect_cloud,tag=SotCore] at @s run summon minecraft:armor_stand ~ 84.4 ~25 {CustomNameVisible:1b,CustomName:'{"text":"20%税率","color":"red"}',Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run summon minecraft:armor_stand ~ 84.7 ~25 {CustomNameVisible:1b,CustomName:'{"text":"使用可存入身上金币","color":"gold"}',Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run summon minecraft:armor_stand ~ 85 ~25 {CustomNameVisible:1b,CustomName:'{"text":"末影宝库","color":"dark_green"}',Invisible:1b,NoGravity:1b,Invulnerable:1b}

scoreboard players set 15 SotCache 15
scoreboard players set 45 SotCache 45




# REMOVING ALL LOADED CHUNKS WOULD CAUSE A MASSIVE LAG SPIKE!

forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

forceload add -10000 -10000

# These are fixing attempts..

scoreboard objectives add SotYellowVault minecraft.used:yellow_concrete
scoreboard objectives add SotRedVault minecraft.used:red_concrete
scoreboard objectives add SotBlueVault minecraft.used:blue_concrete
scoreboard objectives add SotGreenVault minecraft.used:green_concrete

scoreboard objectives add SotSandUse minecraft.used:sand
scoreboard objectives add SotSandUseRevive minecraft.used:sand
scoreboard objectives add SotRustyKeyUse minecraft.used:dark_oak_planks
scoreboard objectives add SotRustyKeyPick minecraft.picked_up:dark_oak_planks

scoreboard objectives remove SotDeathKit
scoreboard objectives add SotDeathKit dummy

function sot:refreshsb/init


function sot:death/valid
function sot:escape/valid
function sot:time/valid
function sot:vault/master
function sot:revive/valid
function sot:opener/master
function sot:rustydoor
function sot:room/master

function sot:music/intro

# Regeneration components
## 1.8 regen
function utils:survivalregen

## out of combat regen
scoreboard objectives add SotCombatTimer dummy
scoreboard objectives add SotDamageTaken minecraft.custom:damage_taken
scoreboard players set @a SotCombatTimer 0
function sot:outofcombatregen

## 0.5s Cooldown before filling the physical timer
scoreboard objectives add SotSandsLeft dummy
scoreboard players set @e[type=area_effect_cloud,tag=SotCore] SotSandsLeft 0
function sot:time/addsand

## Spawn Portal
fill 1517 107 1446 1527 102 1446 nether_portal

# Lock Spec
function sot:lockspec

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §fThe game has started! Sand timer will start in 30s."," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

tag @a remove sot_key_obtained_red
tag @a remove sot_key_obtained_blue
tag @a remove sot_key_obtained_green
tag @a remove sot_key_obtained_yellow

# Modifier: Sumo Warden
execute if score modifiers_sumo_warden SotGame matches 1 run function sot:modifiers/sumo_warden/init