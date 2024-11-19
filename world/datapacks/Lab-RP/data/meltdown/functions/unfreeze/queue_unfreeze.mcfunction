
execute as @r[tag=queue_unfreeze] run function meltdown:unfreeze/self
execute if entity @p[tag=queue_unfreeze] run function meltdown:unfreeze/queue_unfreeze