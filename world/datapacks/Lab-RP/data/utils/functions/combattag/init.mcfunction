
advancement revoke @a from utils:attacked_by_creeper
advancement revoke @a from utils:hooked
advancement revoke @a from utils:killed
advancement revoke @a from utils:playerid
advancement revoke @a only utils:take_player_damage
scoreboard objectives remove univ_pid
scoreboard objectives remove univ_attacker
scoreboard objectives remove univ_death

scoreboard objectives add univ_pid dummy
scoreboard objectives add univ_attacker dummy
scoreboard objectives add univ_tagtime dummy
scoreboard objectives add univ_death deathCount

function utils:combattag/assignpid
scoreboard players set @a univ_attacker -1
scoreboard players set @a univ_tagtime 0

function utils:combattag/loop