
execute as @e[type=item,nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] run data modify entity @s Item.tag set value ""
execute as @a[scores={univ_pid=1..5},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/1_5
execute as @a[scores={univ_pid=6..10},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/6_10
execute as @a[scores={univ_pid=11..15},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/11_15
execute as @a[scores={univ_pid=16..20},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/16_20
execute as @a[scores={univ_pid=21..25},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/21_25
execute as @a[scores={univ_pid=26..30},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/26_30
execute as @a[scores={univ_pid=31..35},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/31_35
execute as @a[scores={univ_pid=36..40},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run function skybattle:creeper/36_40