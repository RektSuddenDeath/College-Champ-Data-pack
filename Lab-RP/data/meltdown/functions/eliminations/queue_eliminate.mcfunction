
execute as @r[tag=queue_eliminated] run function meltdown:eliminations/self
execute if entity @p[tag=queue_eliminated] run function meltdown:eliminations/queue_eliminate