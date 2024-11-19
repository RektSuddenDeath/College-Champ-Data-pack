
forceload add 22900 22900 23100 23100

# CLEAR OUT WATER
fill 22978 15 22957 22977 0 22956 air replace bubble_column
fill 23001 14 22949 22999 0 22951 air replace bubble_column
fill 23023 15 22956 23022 0 22957 air replace bubble_column
fill 23044 15 22977 23043 0 22978 air replace bubble_column
fill 23051 14 23001 23049 0 22999 air replace bubble_column
fill 23044 15 23023 23043 0 23022 air replace bubble_column
fill 23023 15 23044 23022 0 23043 air replace bubble_column
fill 23001 14 23049 22999 0 23051 air replace bubble_column
fill 22978 15 23043 22977 0 23044 air replace bubble_column
fill 22956 15 23023 22957 0 23022 air replace bubble_column
fill 22949 14 23001 22951 0 22999 air replace bubble_column
fill 22956 15 22977 22957 0 22978 air replace bubble_column
fill 22983 19 22983 22983 0 22983 air replace bubble_column
fill 23000 19 22977 23000 0 22977 air replace bubble_column
fill 23017 19 22983 23017 0 22983 air replace bubble_column
fill 23023 19 23000 23023 0 23000 air replace bubble_column
fill 23017 19 23017 23017 0 23017 air replace bubble_column
fill 23000 19 23023 23000 0 23023 air replace bubble_column
fill 22983 19 23017 22983 0 23017 air replace bubble_column
fill 22977 19 23000 22977 0 23000 air replace bubble_column
# QUEUE EACH ZONE
schedule function skybattle:structure/zone2/sandcastle/1 10t
schedule function skybattle:structure/zone2/sandcastle/2 30t
schedule function skybattle:structure/zone2/sandcastle/3 50t
schedule function skybattle:structure/zone2/sandcastle/4 70t
schedule function skybattle:structure/zone2/sandcastle/5 90t
schedule function skybattle:structure/zone2/sandcastle/6 110t
schedule function skybattle:structure/zone2/sandcastle/7 130t
schedule function skybattle:structure/zone2/sandcastle/8 150t
schedule function skybattle:structure/zone2/sandcastle/9 170t
schedule function skybattle:structure/zone2/sandcastle/10 190t
schedule function skybattle:structure/zone2/sandcastle/reset 195t