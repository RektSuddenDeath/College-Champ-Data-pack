

execute as @a[team=!spec] run title @s actionbar ["§e剩余购买资金：",{"score":{"name": "@s","objective": "bb_shop_coins"},"color":"gold"},"§6g"]
execute if score timeout_warn_remix bb_game matches 0 if score minute master.timer matches 0 if score second master.timer matches 30 run function battlebox:remix/shop/timeout_warn

execute if score gameflag bb_game matches 0 run schedule function battlebox:remix/shop/pregame_loop 1t