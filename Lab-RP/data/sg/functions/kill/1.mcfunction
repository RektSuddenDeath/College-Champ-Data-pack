
# Creeper Combat Tag
function sg:kill/creepertag

# Detects if the creeper is the last attack
function sg:kill/creeperlast

# Fishing Rod Combat Tag
function sg:kill/rodtag

# Detects if fishing rod is the last attack. Any attack would override rod combat tag.
function sg:kill/rodlast

# Friendly Kill
function sg:kill/friendlykill

# Set the dead player to spec mode
gamemode spectator @a[scores={sg_death=1..}]

# Summon tomb like thingy to store dead people's items
execute as @a[scores={sg_death=1..}] at @s run function sg:tomb

# Set the position of the dead player
execute as @a[scores={sg_death=1..}] run scoreboard players operation @s sg_indvpos = playerCount sg_game
execute as @a[scores={sg_death=1..}] run scoreboard players remove playerCount sg_game 1

# Decides if there is a valid killer
tag @a[scores={sg_death=1..}] add queue_kill_judge

function sg:kill/queue_judge

# Team Elimination
function sg:kill/team_eliminated

# Cleanup
tag @a remove temp_haskiller
tag @a remove sg_nokiller
tag @a remove suffocation
tag @a remove logout
tag @a remove void
scoreboard players set @a sg_kills 0
scoreboard players set @a sg_death 0
scoreboard players set @a sg_logout 0

scoreboard players set @a redKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0
advancement revoke @a from utils:killed
