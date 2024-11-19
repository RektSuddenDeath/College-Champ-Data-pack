
execute as @a[advancements={utils:take_player_damage=true},team=!spec] run function utils:combattag/findattacker

scoreboard players remove @a[scores={univ_tagtime=1..}] univ_tagtime 1
scoreboard players set @a[scores={univ_tagtime=..0}] univ_attacker -1
scoreboard players set @a[scores={univ_tagtime=..0}] univ_tagtime 0

scoreboard players set @a[scores={univ_death=1..}] univ_tagtime 0
scoreboard players set @a[scores={univ_death=1..}] univ_attacker -1

scoreboard players set @a univ_death 0
advancement revoke @a from utils:hooked
advancement revoke @a only utils:take_player_damage
advancement revoke @a from utils:attacked_by_creeper
execute if score RoundActive tourney_stats matches 1 run schedule function utils:combattag/loop 1t