def hurdleRace(k, height):
    h = max(height)
    potion = h - k
    if potion < 0:
        potion = 0
    return potion



k = 7
height = [2,5,4,5,2]
result = hurdleRace(k, height)
print(result)
