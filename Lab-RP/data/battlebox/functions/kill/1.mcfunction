# Remix Component (first)
scoreboard objectives add bb_prevkills dummy
execute as @a run scoreboard players operation @s bb_prevkills = @s bb_roundkills

# Creeper Combat Tag
function battlebox:kill/creepertag

# Detects if the creeper is the last attack
function battlebox:kill/creeperlast

# Fishing Rod Combat Tag
function battlebox:kill/rodtag

# Detects if fishing rod is the last attack. Any attack would override rod combat tag.
function battlebox:kill/rodlast

# Friendly Kill Revoke

tag @a[scores={bb_death=1..}] add queue_kill_judge
function battlebox:kill/queue_judge

# Remix component (second) ### 至多一局获得四个击杀，那就判定四次。
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run tellraw @s "[§6+10分§f] 击杀额外得分！"
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run scoreboard players add @s bb_prevkills 1
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run tellraw @s "[§6+10分§f] 击杀额外得分！"
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run scoreboard players add @s bb_prevkills 1
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run tellraw @s "[§6+10分§f] 击杀额外得分！"
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run scoreboard players add @s bb_prevkills 1
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run tellraw @s "[§6+10分§f] 击杀额外得分！"
execute as @a[tag=p.score_tweak_kill] if score @s bb_prevkills < @s bb_roundkills run scoreboard players add @s bb_prevkills 1
scoreboard objectives remove bb_prevkills

# Remove kill firework explosion sounds
stopsound @a * entity.firework_rocket.blast
stopsound @a * entity.firework_rocket.blast_far

# Cleanup
tag @a remove temp_haskiller
tag @a remove bb_nokiller
tag @a remove suffocation
tag @a remove logout
tag @a remove void
scoreboard players set @a bb_kills 0
scoreboard players set @a bb_death 0
scoreboard players set @a bb_logout 0

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