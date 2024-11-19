
scoreboard objectives add sg_crafted_iron_sword crafted:iron_sword
scoreboard objectives add sg_crafted_iron_axe crafted:iron_axe
scoreboard objectives add sg_crafted_diamond_sword crafted:diamond_sword
scoreboard objectives add sg_crafted_diamond_axe crafted:diamond_axe

scoreboard players set @a sg_crafted_diamond_axe 0
scoreboard players set @a sg_crafted_diamond_sword 0
scoreboard players set @a sg_crafted_iron_axe 0
scoreboard players set @a sg_crafted_iron_sword 0

function sg:item_tags/loop