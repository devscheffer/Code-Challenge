def countApplesAndOranges(s, t, a, b, apples, oranges):
    countA = 0
    countO = 0
    
    for i in apples:
        if i >= s - a and i <= t - a:
            countA += 1
    for j in oranges:
        if j <= t - b and j >= s - b:
            countO += 1
    print(countA)
    print(countO)
    return countA,countO
s = 7
t = 11
a = 5
b = 15
apples = [-2, 2, 1]
oranges = [5, - 6]
result = countApplesAndOranges(s, t, a, b, apples, oranges)
print(result)
