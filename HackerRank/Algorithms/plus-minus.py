p = 0
n = 0
z = 0

for i in arr:
    if i > 0:
        p += 1
    elif i < 0:
        n += 1
    elif i == 0:
        z += 1

print(p/len(arr))
print(n/len(arr))
print(z/len(arr))
