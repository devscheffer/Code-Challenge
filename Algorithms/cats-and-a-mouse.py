def catAndMouse(x, y, z):
    distX = abs(z - x)
    distY = abs(z - y)

    if distX > distY:
        ans = 'Cat B'
    elif distX < distY:
        ans = 'Cat A'
    else:
        ans = 'Mouse C'
    return ans

x = 1
y = 2
z = 3
result = catAndMouse(x, y, z)
print(result)
