clear @a


scoreboard objectives remove SotNugget
scoreboard objectives remove SotIngot
scoreboard objectives remove SotBlock
scoreboard objectives remove SotDeath
scoreboard objectives remove SotSphinx
scoreboard objectives remove SotChalPlayers
scoreboard objectives remove SotChalTime
scoreboard objectives remove SotChalProgress

scoreboard objectives add SotEscaped dummy

scoreboard objectives add SotNugget minecraft.picked_up:minecraft.gold_nugget
scoreboard objectives add SotIngot minecraft.picked_up:minecraft.gold_ingot
scoreboard objectives add SotBlock minecraft.picked_up:minecraft.gold_block
scoreboard objectives add SotSphinx custom:open_enderchest
scoreboard objectives add SotDeath deathCount
scoreboard objectives add sot_gateopen dummy
scoreboard objectives add SotChalPlayers dummy
scoreboard objectives add SotChalTime dummy
scoreboard objectives add SotChalProgress dummy

scoreboard objectives add SotRedPickup dummy
scoreboard objectives add SotBluePickup dummy
scoreboard objectives add SotGreenPickup dummy
scoreboard objectives add SotYellowPickup dummy

scoreboard players set @a SotRedPickup 0
scoreboard players set @a SotBluePickup 0
scoreboard players set @a SotGreenPickup 0
scoreboard players set @a SotYellowPickup 0
# Display Only Comp
scoreboard objectives add SotTeamCoins_multi dummy
scoreboard objectives add SotTeamBanked_multi dummy
scoreboard objectives add SotPersonal_multi dummy
scoreboard objectives add SotSessionCache_multi dummy
scoreboard objectives add SotPickupCache_multi dummy

# Challenge Room Enabled
# 0 = Disabled or Completed, 1 = Enabled, -1 = Failed,
scoreboard objectives add SotChallengeState dummy
scoreboard players set red SotChallengeState 0
scoreboard players set blue SotChallengeState 0
scoreboard players set green SotChallengeState 0
scoreboard players set yellow SotChallengeState 0
scoreboard players set cyan SotChallengeState 0
scoreboard players set pink SotChallengeState 0
scoreboard players set orange SotChallengeState 0
scoreboard players set purple SotChallengeState 0

#Core Relative Coordinates
function sot:summonaec

#Tp teams to their dungeons
tp @a[team=red] 2500 83 2471 facing 2500 84 2500
tp @a[team=blue] 2000 83 2471 facing 2000 84 2500
tp @a[team=green] 2500 83 1971 facing 2500 84 2000
tp @a[team=yellow] 2500 83 2971 facing 2500 84 3000

tp @a[team=cyan] 2000 83 2971 facing 2000 84 3000
tp @a[team=pink] 3000 83 1971 facing 3000 84 2000
tp @a[team=orange] 3000 83 2471 facing 3000 84 2500
tp @a[team=purple] 3000 83 2971 facing 3000 84 3000
effect give @a saturation 3600 0 true

gamemode adventure @a[team=!spec]
tp @a[team=spec,tag=!admin_immune] 1523 103 1450 facing 1520 102 1450
effect give @a[team=spec,tag=!admin_immune] resistance 100000 5 true
effect give @a[team=spec,tag=!admin_immune] regeneration 100000 5 true
effect give @a[team=spec,tag=!admin_immune] water_breathing 100000 5 true

gamemode adventure @a[team=spec,tag=!admin_immune]
tellraw @a[team=spec,tag=!admin_immune] "§c你无法观战此游戏。"
tellraw @a[team=spec,tag=admin_immune] "§cYour gamemode should've been changed to §rADVENTURE§c but wasn't to let you spectate freely."
#Setup Sandglass


#Setup Starting Cage
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-11 86 ~-27 ~-11 82 ~-31 barrier
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-8 85 ~-26 ~8 82 ~-26 barrier
execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~11 86 ~-27 ~11 82 ~-31 barrier


#Setup team times
scoreboard players set red SotTeamTime 120
scoreboard players set blue SotTeamTime 120
scoreboard players set green SotTeamTime 120
scoreboard players set yellow SotTeamTime 120
scoreboard players set cyan SotTeamTime 120
scoreboard players set pink SotTeamTime 120
scoreboard players set orange SotTeamTime 120
scoreboard players set purple SotTeamTime 120

function sot:scoreboard
function master:timer/starting/sot
function sot:kit
function sot:glow
#Game Intro

title @a times 10 80 10
title @a title ["",{"text": "Sands of Time","color": "yellow"}]
title @a subtitle ["请阅读聊天栏，完成游戏教程。"]

function sot:tutorial/init
schedule function sot:intro/1 1s

function sot:beginlistener
schedule function sot:clearflag 1t
# Clear Cache
scoreboard players set @a SotDeath 0
scoreboard players set @a SotPersonal 0
scoreboard players set red SotTeamCoins 0
scoreboard players set blue SotTeamCoins 0
scoreboard players set yellow SotTeamCoins 0
scoreboard players set green SotTeamCoins 0
scoreboard players set cyan SotTeamCoins 0
scoreboard players set pink SotTeamCoins 0
scoreboard players set orange SotTeamCoins 0
scoreboard players set purple SotTeamCoins 0

scoreboard players set red SotTeamBanked 0
scoreboard players set blue SotTeamBanked 0
scoreboard players set yellow SotTeamBanked 0
scoreboard players set green SotTeamBanked 0
scoreboard players set cyan SotTeamBanked 0
scoreboard players set orange SotTeamBanked 0
scoreboard players set pink SotTeamBanked 0
scoreboard players set purple SotTeamBanked 0

scoreboard players set red SotEscaped 0
scoreboard players set blue SotEscaped 0
scoreboard players set yellow SotEscaped 0
scoreboard players set green SotEscaped 0
scoreboard players set cyan SotEscaped 0
scoreboard players set orange SotEscaped 0
scoreboard players set pink SotEscaped 0
scoreboard players set purple SotEscaped 0

scoreboard players set RedDeaths SotGame 0
scoreboard players set BlueDeaths SotGame 0
scoreboard players set GreenDeaths SotGame 0
scoreboard players set YellowDeaths SotGame 0
scoreboard players set CyanDeaths SotGame 0
scoreboard players set PinkDeaths SotGame 0
scoreboard players set OrangeDeaths SotGame 0
scoreboard players set PurpleDeaths SotGame 0

scoreboard players set RedPlayers SotGame 0
scoreboard players set BluePlayers SotGame 0
scoreboard players set GreenPlayers SotGame 0
scoreboard players set YellowPlayers SotGame 0
scoreboard players set CyanPlayers SotGame 0
scoreboard players set PinkPlayers SotGame 0
scoreboard players set OrangePlayers SotGame 0
scoreboard players set PurplePlayers SotGame 0

scoreboard players set red.Y SotVault 1
scoreboard players set red.B SotVault 1
scoreboard players set red.G SotVault 1
scoreboard players set red.R SotVault 1

scoreboard players set blue.Y SotVault 1
scoreboard players set blue.B SotVault 1
scoreboard players set blue.G SotVault 1
scoreboard players set blue.R SotVault 1

scoreboard players set green.Y SotVault 1
scoreboard players set green.B SotVault 1
scoreboard players set green.G SotVault 1
scoreboard players set green.R SotVault 1

scoreboard players set yellow.Y SotVault 1
scoreboard players set yellow.B SotVault 1
scoreboard players set yellow.G SotVault 1
scoreboard players set yellow.R SotVault 1

scoreboard players set cyan.Y SotVault 1
scoreboard players set cyan.B SotVault 1
scoreboard players set cyan.G SotVault 1
scoreboard players set cyan.R SotVault 1

scoreboard players set pink.Y SotVault 1
scoreboard players set pink.B SotVault 1
scoreboard players set pink.G SotVault 1
scoreboard players set pink.R SotVault 1

scoreboard players set orange.Y SotVault 1
scoreboard players set orange.B SotVault 1
scoreboard players set orange.G SotVault 1
scoreboard players set orange.R SotVault 1

scoreboard players set purple.Y SotVault 1
scoreboard players set purple.B SotVault 1
scoreboard players set purple.G SotVault 1
scoreboard players set purple.R SotVault 1

execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-9 82 ~-32 ~9 86 ~-32 nether_portal
# fill 2491 82 2468 2509 86 2468 minecraft:nether_portal
# fill 1991 82 2468 2009 86 2468 minecraft:nether_portal
# fill 2491 82 1968 2509 86 1968 minecraft:nether_portal
# fill 2491 82 2968 2509 86 2968 minecraft:nether_portal
tag @a remove sot_key_obtained_red
tag @a remove sot_key_obtained_blue
tag @a remove sot_key_obtained_green
tag @a remove sot_key_obtained_yellow

