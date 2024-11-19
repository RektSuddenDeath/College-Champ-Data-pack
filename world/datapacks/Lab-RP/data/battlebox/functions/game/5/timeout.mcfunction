
# Arena 1
execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc > pink bb_blockscalc run function battlebox:general/lose/pink
execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc > pink bb_blockscalc run function battlebox:general/win/red

execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc < pink bb_blockscalc run function battlebox:general/lose/red
execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc < pink bb_blockscalc run function battlebox:general/win/pink

execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc = pink bb_blockscalc run function battlebox:general/lose/red
execute unless score redwin bb_cache matches 1 unless score pinkwin bb_cache matches 1 if score red bb_blockscalc = pink bb_blockscalc run function battlebox:general/lose/pink
# Arena 2
execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc > cyan bb_blockscalc run function battlebox:general/lose/cyan
execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc > cyan bb_blockscalc run function battlebox:general/win/blue

execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc < cyan bb_blockscalc run function battlebox:general/lose/blue
execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc < cyan bb_blockscalc run function battlebox:general/win/cyan

execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc = cyan bb_blockscalc run function battlebox:general/lose/blue
execute unless score bluewin bb_cache matches 1 unless score cyanwin bb_cache matches 1 if score blue bb_blockscalc = cyan bb_blockscalc run function battlebox:general/lose/cyan

# Arena 3
execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc > purple bb_blockscalc run function battlebox:general/lose/purple
execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc > purple bb_blockscalc run function battlebox:general/win/green

execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc < purple bb_blockscalc run function battlebox:general/lose/green
execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc < purple bb_blockscalc run function battlebox:general/win/purple

execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc = purple bb_blockscalc run function battlebox:general/lose/green
execute unless score greenwin bb_cache matches 1 unless score purplewin bb_cache matches 1 if score green bb_blockscalc = purple bb_blockscalc run function battlebox:general/lose/purple


# Arena 4
execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc > orange bb_blockscalc run function battlebox:general/lose/orange
execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc > orange bb_blockscalc run function battlebox:general/win/yellow

execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc < orange bb_blockscalc run function battlebox:general/lose/yellow
execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc < orange bb_blockscalc run function battlebox:general/win/orange

execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc = orange bb_blockscalc run function battlebox:general/lose/yellow
execute unless score yellowwin bb_cache matches 1 unless score orangewin bb_cache matches 1 if score yellow bb_blockscalc = orange bb_blockscalc run function battlebox:general/lose/orange
# Set all games to complete state
scoreboard players set completed bb_game 4