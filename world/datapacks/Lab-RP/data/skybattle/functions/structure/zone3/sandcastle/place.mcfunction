
forceload add 23900 23900 24100 24100

# CLEAR OUT WATER
fill 23978 15 23957 23977 0 23956 air replace bubble_column
fill 24001 14 23949 23999 0 23951 air replace bubble_column
fill 24023 15 23956 24022 0 23957 air replace bubble_column
fill 24044 15 23977 24043 0 23978 air replace bubble_column
fill 24051 14 24001 24049 0 23999 air replace bubble_column
fill 24044 15 24023 24043 0 24022 air replace bubble_column
fill 24023 15 24044 24022 0 24043 air replace bubble_column
fill 24001 14 24049 23999 0 24051 air replace bubble_column
fill 23978 15 24043 23977 0 24044 air replace bubble_column
fill 23956 15 24023 23957 0 24022 air replace bubble_column
fill 23949 14 24001 23951 0 23999 air replace bubble_column
fill 23956 15 23977 23957 0 23978 air replace bubble_column
fill 23983 19 23983 23983 0 23983 air replace bubble_column
fill 24000 19 23977 24000 0 23977 air replace bubble_column
fill 24017 19 23983 24017 0 23983 air replace bubble_column
fill 24023 19 24000 24023 0 24000 air replace bubble_column
fill 24017 19 24017 24017 0 24017 air replace bubble_column
fill 24000 19 24023 24000 0 24023 air replace bubble_column
fill 23983 19 24017 23983 0 24017 air replace bubble_column
fill 23977 19 24000 23977 0 24000 air replace bubble_column
# QUEUE EACH ZONE
schedule function skybattle:structure/zone3/sandcastle/1 10t
schedule function skybattle:structure/zone3/sandcastle/2 30t
schedule function skybattle:structure/zone3/sandcastle/3 50t
schedule function skybattle:structure/zone3/sandcastle/4 70t
schedule function skybattle:structure/zone3/sandcastle/5 90t
schedule function skybattle:structure/zone3/sandcastle/6 110t
schedule function skybattle:structure/zone3/sandcastle/7 130t
schedule function skybattle:structure/zone3/sandcastle/8 150t
schedule function skybattle:structure/zone3/sandcastle/9 170t
schedule function skybattle:structure/zone3/sandcastle/10 190t
schedule function skybattle:structure/zone3/sandcastle/reset 195t