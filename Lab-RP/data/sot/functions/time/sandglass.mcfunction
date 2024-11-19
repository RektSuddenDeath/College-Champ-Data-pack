
# Load Chunks
forceload add 2000 2500
forceload add 2000 3000
forceload add 2500 2000
forceload add 2500 2500
forceload add 2500 3000
forceload add 3000 2000
forceload add 3000 2500
forceload add 3000 3000

# All 
scoreboard players add gametime SotTeamTime 1

execute if score red SotTeamTime matches 1.. run function sot:time/sec/red
execute if score blue SotTeamTime matches 1.. run function sot:time/sec/blue
execute if score green SotTeamTime matches 1.. run function sot:time/sec/green
execute if score yellow SotTeamTime matches 1.. run function sot:time/sec/yellow
execute if score cyan SotTeamTime matches 1.. run function sot:time/sec/cyan
execute if score pink SotTeamTime matches 1.. run function sot:time/sec/pink
execute if score orange SotTeamTime matches 1.. run function sot:time/sec/orange
execute if score purple SotTeamTime matches 1.. run function sot:time/sec/purple

#region fix sandglasses

#endregion
execute if score RedPlaying SotGame matches 0 if score BluePlaying SotGame matches 0 if score GreenPlaying SotGame matches 0 if score YellowPlaying SotGame matches 0 if score CyanPlaying SotGame matches 0 if score PinkPlaying SotGame matches 0 if score OrangePlaying SotGame matches 0 if score PurplePlaying SotGame matches 0 run function sot:end
execute if score gameflag SotGame matches 1 run schedule function sot:time/sandglass 1s
