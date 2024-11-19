
$execute if score modifiers_reduced_integrity rsr_game matches 1 run place template rocketspleefrush:skyblock/$(island_no) $(x) $(y) $(z) none none 0.75 1
$execute unless score modifiers_reduced_integrity rsr_game matches 1 run place template rocketspleefrush:skyblock/$(island_no) $(x) $(y) $(z)
$kill @e[type=item_display,tag=rsr,tag=skyblock_$(island_no)]
