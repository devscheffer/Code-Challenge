def breakingRecords(scores):
    best = scores[0]
    worst = scores[0]
    cBest = 0
    cWorst = 0
    for i in scores:
        if i > best:
            cBest += 1
            best = i
        if i < worst:
            cWorst += 1
            worst = i
    return cBest,cWorst


scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
result = breakingRecords(scores)
print(result)