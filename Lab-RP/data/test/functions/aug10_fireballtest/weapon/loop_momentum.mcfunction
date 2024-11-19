
# THIS WILL MODIFY ALL MOMENTUMS TO THE PREVIOUS TICK STATE.



execute as @e[type=fireball,sort=random,limit=1,tag=!momentum_modified,tag=tnt] run function test:aug10_fireballtest/weapon/carry_momentum

execute if entity @e[type=fireball,tag=tnt,tag=!momentum_modified] run function test:aug10_fireballtest/weapon/loop_momentum
tag @e[type=fireball] remove momentum_modified