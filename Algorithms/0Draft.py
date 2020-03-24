def birthdayCakeCandles(ar):
    top = max(ar)
    ar.sort(reverse=True)
    total = 0
    for i in ar:
        if i == top:
            total +=1
        else:
            break
    return total


