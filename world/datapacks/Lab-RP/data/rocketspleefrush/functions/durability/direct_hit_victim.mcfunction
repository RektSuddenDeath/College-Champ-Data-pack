
execute if score @s rsr_struck_invinci matches 1.. run return 0

tellraw @s ["§c(§r鼱§c) ","§c你受到冲击！",{"text": " （被火球直击命中）","color": "#FFB23E"}]
scoreboard players add @s rsr_recap_direct_hit_taken 1
execute if score durability rsr_game matches 1 run playsound sound.got_struck record @s ~ ~ ~ 1.3

$scoreboard players set @s univ_attacker $(owner_pid)
scoreboard players set @s univ_tagtime 240

scoreboard players set @s rsr_struck_invinci 2
# Change struck amount
execute if score @s rsr_onground matches 0 run scoreboard players add @s rsr_player_struck_stacks 1

execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 1.. run scoreboard players set @s rsr_dura_anim_frame 0

execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 1 run scoreboard players set @s rsr_dura_anim_type 21
execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 2 run scoreboard players set @s rsr_dura_anim_type 22
execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 3 run scoreboard players set @s rsr_dura_anim_type 23
execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 4 run scoreboard players set @s rsr_dura_anim_type 24
execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 5 run scoreboard players set @s rsr_dura_anim_type 25
execute if score @s rsr_onground matches 0 if score @s rsr_player_struck_stacks matches 6.. run scoreboard players set @s rsr_dura_anim_type 26

execute if score durability rsr_game matches 1 run function rocketspleefrush:durability/abar/self

fill ~2.2 ~1.8 ~2.2 ~-2.2 ~-1.3 ~-2.2 air
fill ~2.2 ~2.2 ~2.2 ~-2.2 ~-1.7 ~-2.2 air
fill ~3.0 ~1.4 ~3.0 ~-3.0 ~-0.9 ~-3.0 air