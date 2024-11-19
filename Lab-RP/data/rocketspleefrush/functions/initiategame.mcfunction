
# Cleanup
clear @a
effect clear @a
schedule clear decisiondome:player

# scoreboard objectives clean up
scoreboard objectives remove rsr_indvscore
scoreboard objectives remove rsr_teamscore
scoreboard objectives remove rsr_rank
scoreboard objectives remove rsr_kills
# Scoreboard Objectives load

scoreboard objectives add rsr_game dummy "rocketspleefrush general comps"
scoreboard objectives add rsr_indvscore dummy "rocketspleefrush indvidual score"
scoreboard objectives add rsr_teamscore dummy "rocketspleefrush team score"
scoreboard objectives add rsr_rank dummy "rocketspleefrush game position"
scoreboard objectives add rsr_kills dummy "RSR KILLS"
scoreboard objectives add rsr_death playerKillCount "rocketspleefrush deaths"
scoreboard objectives add rsr_stats dummy "RSR SCORES"
scoreboard objectives add rsr_roundkills dummy
scoreboard objectives add rsr_round_ally_kills dummy

## The following serves the gun firing.
scoreboard objectives add rsr_reload dummy "rocketspleefrush cooldown general"
scoreboard objectives add rsr_internal_cd dummy "rocketspleefrush internal cd"
scoreboard objectives add rsr_motion_x1 dummy
scoreboard objectives add rsr_motion_x2 dummy
scoreboard objectives add rsr_motion_y1 dummy
scoreboard objectives add rsr_motion_y2 dummy
scoreboard objectives add rsr_motion_z1 dummy
scoreboard objectives add rsr_motion_z2 dummy
scoreboard objectives add carrotgun minecraft.used:carrot_on_a_stick
scoreboard objectives add updraft minecraft.used:ender_pearl
scoreboard objectives add rsr_round_updraft minecraft.used:ender_pearl
scoreboard objectives add rsr_updraft_time dummy


scoreboard objectives add FireballTime dummy
scoreboard objectives add AecClearFire dummy
scoreboard objectives add ArrowAec dummy
scoreboard objectives add rsr_playerY dummy
scoreboard objectives add rsr_explodertick dummy
scoreboard objectives add rsr_direction_x1 dummy
scoreboard objectives add rsr_direction_y1 dummy
scoreboard objectives add rsr_direction_z1 dummy
scoreboard objectives add rsr_direction_x2 dummy
scoreboard objectives add rsr_direction_y2 dummy
scoreboard objectives add rsr_direction_z2 dummy
scoreboard objectives add rsr_fireball_shooter dummy

# Recap
scoreboard objectives add rsr_recap_r1 dummy
scoreboard objectives add rsr_recap_r2 dummy
scoreboard objectives add rsr_recap_r3 dummy

scoreboard objectives add rsr_recap_total_survived dummy

scoreboard players set @a rsr_recap_r1 0
scoreboard players set @a rsr_recap_r2 0
scoreboard players set @a rsr_recap_r3 0

scoreboard players set @a rsr_recap_total_survived 0

scoreboard objectives add rsr_recap_direct_hit_landed dummy
scoreboard players set @a rsr_recap_direct_hit_landed 0
scoreboard objectives add rsr_recap_direct_hit_taken dummy
scoreboard players set @a rsr_recap_direct_hit_taken 0

scoreboard objectives add rsr_recap_played dummy
scoreboard players set @a rsr_recap_played 0



## The following serves island generation and disintegration.

scoreboard objectives add rsr_island dummy
scoreboard objectives add rsr_aec dummy
scoreboard objectives add rsr_disintegrate dummy

scoreboard objectives add rsr_disint_speed dummy

## Momentum Carrying
scoreboard objectives add fixed_rsr_motion_x dummy
scoreboard objectives add fixed_rsr_motion_y dummy
scoreboard objectives add fixed_rsr_motion_z dummy

## Explode adjust count
scoreboard objectives add rsr_explode_adjust_loop dummy
scoreboard objectives add rsr_explode_adjust_count dummy
scoreboard objectives add rsr_explode_adjust_success dummy

# Durability Mechanics (Set Enabled when durability score in rsr_game is 1.)
scoreboard objectives add rsr_player_dura dummy
scoreboard objectives add rsr_struck_invinci dummy
scoreboard objectives add rsr_player_struck_stacks dummy
scoreboard objectives add rsr_incoming_struck_loss dummy

## 有Dura时，使用另一套充能规则
scoreboard objectives add rsr_dura_clips dummy
scoreboard objectives add rsr_dura_recharges dummy
scoreboard objectives add rsr_dura_recharge_tick dummy

scoreboard objectives add rsr_dura_recharge_ttl dummy
scoreboard objectives add rsr_dura_bars dummy

scoreboard objectives add rsr_prev_dura dummy

## 动画相关
scoreboard objectives add rsr_dura_anim_frame dummy
scoreboard objectives add rsr_dura_anim_type dummy

# Height Warning
scoreboard objectives add rsr_cd_low_height dummy
scoreboard objectives add rsr_elim_height_diff dummy

# Arrow glowing
team add rsrarrows
team modify rsrarrows color gold
## Clean up
scoreboard players set @a rsr_reload 21
scoreboard players set @a rsr_internal_cd 0
scoreboard players set @a updraft 0
scoreboard players set @a carrotgun 0
scoreboard players set @a rsr_indvscore 0
scoreboard players set @a rsr_rank 0
scoreboard players set @a rsr_death 0
scoreboard players set gameflag rsr_game 0
scoreboard players operation map rsr_game = map1 rsr_game
scoreboard players set round rsr_game 1
scoreboard players set killbonus rsr_game 15
scoreboard players set @a rsr_roundkills 0
scoreboard players set @a rsr_round_ally_kills 0
scoreboard players set @a rsr_kills 0

scoreboard objectives add rsr_gamekills dummy
scoreboard players set @a rsr_gamekills 0

scoreboard players set kill rsr_stats 15
scoreboard players set survival rsr_stats 4

scoreboard players set island_to_siren rsr_game 1
scoreboard players set island_to_generate rsr_game 0
scoreboard players set island_to_disintegrate rsr_game 0

scoreboard objectives add rsr_platform_sound_cd dummy

############# DURA SETTINGS
## 总共23格，耐久度量应为23的整数倍
scoreboard players set max_dura rsr_game 9200
scoreboard players set dura_per_bar rsr_game 400

scoreboard players set dura_warning_1 rsr_game 3200
scoreboard players set dura_warning_2 rsr_game 1600

scoreboard players set dura_loss_per_tick rsr_game 32
scoreboard players set dura_gain_per_tick rsr_game 500

scoreboard players set dura_loss_1 rsr_game 24
scoreboard players set dura_loss_2 rsr_game 30
scoreboard players set dura_loss_3 rsr_game 36

# 每分钟STRUCK的效果提升一次，在这里规定每一层struck的每tick额外流失量

scoreboard players set struck_per_stack_1 rsr_game 24
scoreboard players set struck_per_stack_2 rsr_game 36
scoreboard players set struck_per_stack_3 rsr_game 48

# Updraft的Struck清除量和获取Dura量
scoreboard players set updraft_cleanse_stacks rsr_game 99
scoreboard players set updraft_dura_gain rsr_game 3100

############# DURA SETTINGS 
function rocketspleefrush:nofallpregame
function rocketspleefrush:scoreboard/pregame
# Forceload center chunk and load lobby, cleanup any possible items that were left last game
forceload add -7988 -7988 -8012 -8012
function rocketspleefrush:disintegrate/instant
kill @e[type=area_effect_cloud,tag=rsr]
kill @e[type=armor_stand,tag=rsr]
kill @e[type=item_frame,tag=rsr]
function rocketspleefrush:structure/lobby
schedule function rocketspleefrush:structure/lobby 20t append
execute if score map1 rsr_game matches 1 run schedule function rocketspleefrush:structure/classic/1 40t
execute if score map1 rsr_game matches 2 run schedule function rocketspleefrush:structure/park/1 40t
execute if score map1 rsr_game matches 3 run schedule function rocketspleefrush:structure/palace/1 40t
execute if score map1 rsr_game matches 4 run schedule function rocketspleefrush:structure/journey/1 40t
execute if score map1 rsr_game matches 5 run schedule function rocketspleefrush:structure/temple/1 40t
execute if score map1 rsr_game matches 6 run schedule function rocketspleefrush:structure/checkmate/1 40t
execute if score map1 rsr_game matches 7 run schedule function rocketspleefrush:map/skyblock/generate_next_island 40t
execute if score map1 rsr_game matches 8 run schedule function rocketspleefrush:map/classic_2/generate_next_island 40t
spawnpoint @a -8000 202 -8000

# Load the first map's first island
####

# Teleportation

tp @a[team=red] -7999.39 202.00 -8007.63 -360 0
tp @a[team=blue] -8007.57 202.00 -7999.39 -450 0
tp @a[team=green] -7999.49 202.00 -7991.51 -540 0
tp @a[team=yellow] -7991.61 202.00 -7999.70 -630 0
tp @a[team=cyan] -8007.78 202.00 -8007.97 -44.22 0.82
tp @a[team=orange] -8007.52 202.00 -7991.12 -135.14 -0.19
tp @a[team=pink] -7991.56 202.00 -7991.19 -223.53 0.55
tp @a[team=purple] -7991.52 202.00 -8007.56 -314.36 0.13
tp @a[team=spec] -7990.30 206.50 -7990.30 -584.70 15.88

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

# Rocket Launcher Given
give @a[team=!spec] carrot_on_a_stick{Unbreakable:1b,HideFlags:25,Enchantments:[{id:"knockback",lvl:2}],CustomModelData:1,display:{Name:'"§r§6火箭发射器"'}}
# give @a[team=!spec] ender_pearl{display:{Name:'"§r§5抬升道具"'}}
item replace entity @a[team=!spec] armor.chest with elytra{Unbreakable:1b}
effect give @a jump_boost infinite 1 true
effect give @a speed infinite 0 true
effect give @a minecraft:levitation 2 255 true
function utils:nodropping
function rocketspleefrush:novoid
# Play intro
schedule function rocketspleefrush:intro/1 2s
schedule function rocketspleefrush:intro/2 4s
schedule function rocketspleefrush:intro/3 6s
schedule function rocketspleefrush:intro/4 14s
schedule function rocketspleefrush:intro/5 22s
schedule function rocketspleefrush:intro/6 30s
schedule function rocketspleefrush:intro/7 38s
schedule function rocketspleefrush:intro/8 46s
schedule function rocketspleefrush:intro/9 54s
function rocketspleefrush:beginlistener
#

