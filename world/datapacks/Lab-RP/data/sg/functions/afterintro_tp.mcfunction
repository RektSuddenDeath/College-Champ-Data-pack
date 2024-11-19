
# This will also setup the border.
execute in sg:sjtu run worldborder center 605.5 1377.5
execute in sg:sjtu run worldborder set 475
execute in sg:sjtu run worldborder warning time 30
execute in sg:sjtu run worldborder warning distance 0
execute in sg:sjtu run worldborder damage amount 1
execute in sg:sjtu run worldborder damage buffer 0

execute in sg:sjtu run tp @a[team=red] 600.69 9.00 1366.67 -23.69 0
execute in sg:sjtu run tp @a[team=blue] 594.64 9.00 1373.03 -68.88 0
execute in sg:sjtu run tp @a[team=green] 595.07 9.00 1382.08 -111.65 0
execute in sg:sjtu run tp @a[team=yellow] 600.88 9.00 1388.36 -157.15 0
execute in sg:sjtu run tp @a[team=cyan] 610.01 9.00 1388.07 -201.38 0
execute in sg:sjtu run tp @a[team=pink] 615.98 9.00 1381.79 -248.34 0
execute in sg:sjtu run tp @a[team=orange] 616.14 9.00 1373.04 -293.34 0
execute in sg:sjtu run tp @a[team=purple] 610.22 9.00 1366.47 -337.95 0

execute in sg:sjtu run tp @a[team=spec] 623.64 15.36 1378.70 -265.29 22.5

gamemode adventure @a[team=!spec]
give @a compass{display:{Name:'["","§r§6§l空投指针"]'}}
give @a stone_pickaxe{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-3,Slot:"mainhand",Operation:0,UUID:[I;2,2,3,4]}],CanDestroy:[purpur_pillar,tinted_glass,glass_pane,white_stained_glass_pane,light_gray_stained_glass_pane,gray_stained_glass_pane,black_stained_glass_pane,brown_stained_glass_pane,red_stained_glass_pane,orange_stained_glass_pane,yellow_stained_glass_pane,lime_stained_glass_pane,green_stained_glass_pane,cyan_stained_glass_pane,light_blue_stained_glass_pane,blue_stained_glass_pane,purple_stained_glass_pane,magenta_stained_glass_pane,pink_stained_glass_pane,glass,white_stained_glass,light_gray_stained_glass,gray_stained_glass,black_stained_glass,brown_stained_glass,red_stained_glass,orange_stained_glass,yellow_stained_glass,lime_stained_glass,green_stained_glass,cyan_stained_glass,light_blue_stained_glass,blue_stained_glass,purple_stained_glass,magenta_stained_glass,pink_stained_glass],Unbreakable:1b,HideFlags:8,display:{Name:'["","§b§l空投用镐"]'}}