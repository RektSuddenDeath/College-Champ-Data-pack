
# Remove previous Tags
tag @a remove p.center_lock_kill
tag @a remove p.center_lock_time
tag @a remove p.game_mod_haste
tag @a remove p.score_tweak_kill
tag @a remove p.score_tweak_win
tag @a remove p.score_tweak_overtime
tag @a remove p.score_tweak_survive
tag @a remove p.win_keepinv_3
tag @a remove p.win_keepinv_2
tag @a remove p.win_keepinv_1

# Keep Inventory Stacks
scoreboard objectives add bb_keepinv_stacks dummy
scoreboard players set @a bb_keepinv_stacks 0

# Objective
scoreboard objectives add bb_shop_coins dummy
scoreboard players set @a[team=red] bb_shop_coins 500
scoreboard players set @a[team=blue] bb_shop_coins 500
scoreboard players set @a[team=green] bb_shop_coins 500
scoreboard players set @a[team=yellow] bb_shop_coins 500
scoreboard players set @a[team=cyan] bb_shop_coins 500
scoreboard players set @a[team=pink] bb_shop_coins 500
scoreboard players set @a[team=orange] bb_shop_coins 500
scoreboard players set @a[team=purple] bb_shop_coins 500
scoreboard players set @a[team=spec] bb_shop_coins -999

# Shop Value
scoreboard objectives add bb_shop_price dummy
scoreboard players set wooden_sword bb_shop_price 2
scoreboard players set stone_sword bb_shop_price 8
scoreboard players set iron_sword bb_shop_price 18
scoreboard players set wooden_axe bb_shop_price 7
scoreboard players set stone_axe bb_shop_price 18

scoreboard players set bow bb_shop_price 3
scoreboard players set crossbow bb_shop_price 6
scoreboard players set arrow_3 bb_shop_price 2
scoreboard players set arrow_poison bb_shop_price 10
scoreboard players set arrow_slowness bb_shop_price 6
scoreboard players set arrow_weakness bb_shop_price 4
scoreboard players set trident_loyalty bb_shop_price 10
scoreboard players set fishing_rod bb_shop_price 4

scoreboard players set chestplate_leather bb_shop_price 3
scoreboard players set chestplate_gold bb_shop_price 8
scoreboard players set chestplate_iron bb_shop_price 14

scoreboard players set potion_splash_heal_1 bb_shop_price 5
scoreboard players set potion_splash_heal_2 bb_shop_price 8
scoreboard players set potion_splash_harm_1 bb_shop_price 6
scoreboard players set potion_splash_harm_2 bb_shop_price 14
scoreboard players set potion_splash_levitation bb_shop_price 7
scoreboard players set potion_speed bb_shop_price 7
scoreboard players set potion_resistance bb_shop_price 20
scoreboard players set potion_regeneration bb_shop_price 12
scoreboard players set cobweb bb_shop_price 3
scoreboard players set golden_apple bb_shop_price 10

scoreboard players set modif_kill_tweak bb_shop_price 60
scoreboard players set modif_win_tweak bb_shop_price 60
scoreboard players set modif_lose_overtime bb_shop_price 60
scoreboard players set modif_lose_survive bb_shop_price 60
scoreboard players set modif_lock_time bb_shop_price 45
scoreboard players set modif_lock_kill bb_shop_price 45
scoreboard players set modif_haste bb_shop_price 75
scoreboard players set modif_keepinv_stack bb_shop_price 60

# PreGame loop
scoreboard players set timeout_warn_remix bb_game 0
function battlebox:remix/shop/pregame_loop