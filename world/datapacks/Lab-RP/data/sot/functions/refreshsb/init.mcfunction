execute if score gameflag SotGame matches 1 run schedule function sot:refreshsb/init 10t

scoreboard players set red SotTeamCoins 0
scoreboard players set blue SotTeamCoins 0
scoreboard players set green SotTeamCoins 0
scoreboard players set yellow SotTeamCoins 0
scoreboard players set cyan SotTeamCoins 0
scoreboard players set pink SotTeamCoins 0
scoreboard players set orange SotTeamCoins 0
scoreboard players set purple SotTeamCoins 0

scoreboard players set red SotTeamCoins_multi 0
scoreboard players set blue SotTeamCoins_multi 0
scoreboard players set green SotTeamCoins_multi 0
scoreboard players set yellow SotTeamCoins_multi 0
scoreboard players set cyan SotTeamCoins_multi 0
scoreboard players set pink SotTeamCoins_multi 0
scoreboard players set orange SotTeamCoins_multi 0
scoreboard players set purple SotTeamCoins_multi 0

execute as @a[team=red] run scoreboard players operation red SotTeamCoins += @s SotPersonal
execute as @a[team=blue] run scoreboard players operation blue SotTeamCoins += @s SotPersonal
execute as @a[team=green] run scoreboard players operation green SotTeamCoins += @s SotPersonal
execute as @a[team=yellow] run scoreboard players operation yellow SotTeamCoins += @s SotPersonal
execute as @a[team=cyan] run scoreboard players operation cyan SotTeamCoins += @s SotPersonal
execute as @a[team=pink] run scoreboard players operation pink SotTeamCoins += @s SotPersonal
execute as @a[team=orange] run scoreboard players operation orange SotTeamCoins += @s SotPersonal
execute as @a[team=purple] run scoreboard players operation purple SotTeamCoins += @s SotPersonal

scoreboard players operation red SotTeamCoins_multi = red SotTeamCoins
scoreboard players operation blue SotTeamCoins_multi = blue SotTeamCoins
scoreboard players operation green SotTeamCoins_multi = green SotTeamCoins
scoreboard players operation yellow SotTeamCoins_multi = yellow SotTeamCoins
scoreboard players operation cyan SotTeamCoins_multi = cyan SotTeamCoins
scoreboard players operation pink SotTeamCoins_multi = pink SotTeamCoins
scoreboard players operation orange SotTeamCoins_multi = orange SotTeamCoins
scoreboard players operation purple SotTeamCoins_multi = purple SotTeamCoins

scoreboard players operation red SotTeamBanked_multi = red SotTeamBanked
scoreboard players operation blue SotTeamBanked_multi = blue SotTeamBanked
scoreboard players operation green SotTeamBanked_multi = green SotTeamBanked
scoreboard players operation yellow SotTeamBanked_multi = yellow SotTeamBanked
scoreboard players operation cyan SotTeamBanked_multi = cyan SotTeamBanked
scoreboard players operation pink SotTeamBanked_multi = pink SotTeamBanked
scoreboard players operation orange SotTeamBanked_multi = orange SotTeamBanked
scoreboard players operation purple SotTeamBanked_multi = purple SotTeamBanked

scoreboard players operation red SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation blue SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation green SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation yellow SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation cyan SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation pink SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation orange SotTeamCoins_multi *= multiplier1 tourney_stats
scoreboard players operation purple SotTeamCoins_multi *= multiplier1 tourney_stats

scoreboard players operation red SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation blue SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation green SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation yellow SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation cyan SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation pink SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation orange SotTeamBanked_multi *= multiplier1 tourney_stats
scoreboard players operation purple SotTeamBanked_multi *= multiplier1 tourney_stats

execute store result storage sot_team_coins red int 1 run scoreboard players operation red SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins blue int 1 run scoreboard players operation blue SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins green int 1 run scoreboard players operation green SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins yellow int 1 run scoreboard players operation yellow SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins cyan int 1 run scoreboard players operation cyan SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins pink int 1 run scoreboard players operation pink SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins orange int 1 run scoreboard players operation orange SotTeamCoins_multi /= multiplier2 tourney_stats
execute store result storage sot_team_coins purple int 1 run scoreboard players operation purple SotTeamCoins_multi /= multiplier2 tourney_stats

execute store result storage sot_team_banked red int 1 run scoreboard players operation red SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked blue int 1 run scoreboard players operation blue SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked green int 1 run scoreboard players operation green SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked yellow int 1 run scoreboard players operation yellow SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked cyan int 1 run scoreboard players operation cyan SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked pink int 1 run scoreboard players operation pink SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked orange int 1 run scoreboard players operation orange SotTeamBanked_multi /= multiplier2 tourney_stats
execute store result storage sot_team_banked purple int 1 run scoreboard players operation purple SotTeamBanked_multi /= multiplier2 tourney_stats

function sot:refreshsb/carried with storage sot_team_coins
function sot:refreshsb/banked with storage sot_team_banked

