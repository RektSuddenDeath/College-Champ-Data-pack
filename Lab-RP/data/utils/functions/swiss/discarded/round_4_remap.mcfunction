
# 逻辑解释
# 在第4局重映射队伍。3W的队伍为编号1，2W的队伍为编号345，1W的队伍为编号278，0W的队伍为编号6
# 在第5局，需要把各个队伍之间拆成  1746 2385 || 1836 2547 || 16327458  的环形对战关系。
# 在第5局结算时，只结算以下3个对战组合的优先级，并选其一：18 27 36 45 || 17 58 23 46 || 17 25 38 46 || 并做组别标记。
# 在第6局时，如果为双环，则从两个环分别选择2个解之一的优解，如果为单环，选则两个方向之一的优解。
# 第7轮则完成固定。

# 同胜场数的编码条件为：这两个队伍在第5轮能够对战。