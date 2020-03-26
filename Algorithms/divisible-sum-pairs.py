def divisibleSumPairs(n, k, ar):
    count = 0
    ar.sort()
    for j in range(len(ar)-1):
        for i in range(len(ar[j:])-1):
            p1 = ar[j]
            p2 = ar[j+i+1]
            pair = (p1 + p2)%k
            if pair == 0:
                count += 1
    return count

k = 2
ar = [5, 9, 10, 7, 4]
n = len(ar)
result = divisibleSumPairs(n, k, ar)
print(result)
