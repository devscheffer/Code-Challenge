def utopianTree(n):
    h = 1
    for i in range(n):
        cycle = i + 1
        if cycle%2 == 0:
            h += 1
        elif cycle%2 == 1:
            h *= 2
    ans = h
    return ans

n = 5
result = utopianTree(n)
print(result)
