
# Reload the default pad
setblock -10008 76 -10009 redstone_block
setblock -10008 76 -10009 air
 
# replace the wool with corresponding game color
fill -10009 77 -10009 -9991 77 -9991 blue_glazed_terracotta replace white_wool
fill -10009 77 -10009 -9991 77 -9991 orange_glazed_terracotta replace orange_wool
fill -10009 77 -10009 -9991 77 -9991 cyan_glazed_terracotta replace magenta_wool
fill -10009 77 -10009 -9991 77 -9991 pink_glazed_terracotta replace light_blue_wool
fill -10009 77 -10009 -9991 77 -9991 yellow_glazed_terracotta replace yellow_wool
fill -10009 77 -10009 -9991 77 -9991 purple_glazed_terracotta replace lime_wool
fill -10009 77 -10009 -9991 77 -9991 green_glazed_terracotta replace pink_wool
fill -10009 77 -10009 -9991 77 -9991 light_gray_glazed_terracotta replace gray_wool

# move the pad upwards
clone -9991 77 -9991 -10009 77 -10009 -10009 100 -10009 masked