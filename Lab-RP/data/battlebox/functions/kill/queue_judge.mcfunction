
execute as @r[tag=queue_kill_judge] run function battlebox:kill/indiv_kill_judge
execute if entity @p[tag=queue_kill_judge] run function battlebox:kill/queue_judge