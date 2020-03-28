def birthday(s, d, m):
    portion = 0
    for i in range(len(s)-m+1):
        sum = 0
        for j in range(m):
            sum += s[i + j]
        if sum == d:
            portion += 1
    return portion


s = [1, 2, 1, 3, 2]
d = 3
m = 2
result = birthday(s, d, m)
print(result)
