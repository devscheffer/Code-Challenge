l = [43, 2, 70, 2]

x1 = l[0]
v1 = l[1]
x2 = l[2]
v2 = l[3]

def kangaroo(x1, v1, x2, v2):
    if v2 == v1:
        return 'NO'
    else:
        t = (x1 - x2) / (v2 - v1)
        if t >= 0 and int(t) - t == 0:
            return 'YES'
        else:
            return 'NO'


print(kangaroo(x1, v1, x2, v2))
