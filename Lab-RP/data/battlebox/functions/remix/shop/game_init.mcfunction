
# Keep Inventory Stacks

tag @a remove bb_noclear
tag @a[scores={bb_keepinv_stacks=1..}] add bb_noclear

# Survival Point
tag @a remove bb_lost_survive
tag @a[tag=p.score_tweak_survive] add bb_lost_survive

# Notif and Effects
# Round Effect
tellraw @a[team=!spec] "  §d§l回合效果：\n"
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_kill,dx=58,dz=58,dy=60] run tellraw @a[dx=58,dz=58,dy=60] "  中心点§c锁定§f，直到有一名玩家淘汰。"
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_time,dx=58,dz=58,dy=60] run tellraw @a[dx=58,dz=58,dy=60] "  中心点§c锁定§f，直到游戏开始§c10§f秒。"
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.game_mod_haste,dx=58,dz=58,dy=60] run tellraw @a[dx=58,dz=58,dy=60] "  全部玩家具有§e急迫II§f。"
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 unless entity @a[tag=p.center_lock_kill,dx=58,dz=58,dy=60] unless entity @a[tag=p.center_lock_time,dx=58,dz=58,dy=60] unless entity @a[tag=p.game_mod_haste,dx=58,dz=58,dy=60] run tellraw @a[dx=58,dz=58,dy=60] "  §6无全局效果！"

execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_kill,dx=58,dz=58,dy=60] run tag @s add center_lock_kill
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_kill,dx=58,dz=58,dy=60] run tag @s add center_locked

execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_time,dx=58,dz=58,dy=60] run tag @s add center_lock_time
execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.center_lock_time,dx=58,dz=58,dy=60] run tag @s add center_locked

execute as @e[type=marker,tag=bb_centeranchor] at @s positioned ~-29 0 ~-29 if entity @a[tag=p.game_mod_haste,dx=58,dz=58,dy=60] run tag @s add game_mod_haste

execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_kill] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 black_concrete
execute as @e[type=marker,tag=bb_centeranchor,tag=center_lock_time] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 black_concrete
execute as @e[type=marker,tag=bb_centeranchor,tag=game_mod_haste] at @s positioned ~-29 0 ~-29 run effect give @a[dx=58,dz=58,dy=60,team=!spec] haste 65 1 true
# Team Effect
tellraw @a "\n  §9§l队伍效果：\n"

execute as @a[team=red,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§c§l红队:" 
execute as @a[team=red,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=red,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=red,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=red,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=red,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=blue,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§9§l蓝队:" 
execute as @a[team=blue,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=blue,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=blue,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=blue,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=blue,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=green,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§2§l绿队:" 
execute as @a[team=green,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=green,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=green,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=green,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=green,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=yellow,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§e§l黄队:" 
execute as @a[team=yellow,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=yellow,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=yellow,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=yellow,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=yellow,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=cyan,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§3§l青队:" 
execute as @a[team=cyan,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=cyan,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=cyan,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=cyan,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=cyan,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=pink,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§d§l粉队:" 
execute as @a[team=pink,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=pink,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=pink,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=pink,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=pink,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=orange,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§6§l橙队:" 
execute as @a[team=orange,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=orange,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=orange,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=orange,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=orange,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

execute as @a[team=purple,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "§5§l紫队:" 
execute as @a[team=purple,tag=p.score_tweak_kill,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外击杀分，但是死亡额外扣分。" 
execute as @a[team=purple,tag=p.score_tweak_win,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "获得额外回合获胜分，但是回合失败额外扣分。"
execute as @a[team=purple,tag=p.score_tweak_overtime,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时若回合剩余时间不足10秒，获得一定补偿分。" 
execute as @a[team=purple,tag=p.score_tweak_survive,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合失败时，仍然存活的玩家获得一定补偿分。" 
execute as @a[team=purple,tag=p.keepinv,sort=random,limit=1] at @s as @e[type=marker,tag=bb_centeranchor,sort=nearest,limit=1] at @s positioned ~-29 0 ~-29 run tellraw @a[dx=58,dz=58,dy=60,] "回合获胜时，仍有保留物品栏次数的玩家能够保留物品栏到下一轮。" 

tellraw @a ""

# Start Detection

