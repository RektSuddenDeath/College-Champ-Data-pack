
execute as @r[tag=queue_freeze] run function meltdown:freeze/self
execute if entity @p[tag=queue_freeze] run function meltdown:freeze/queue_freeze