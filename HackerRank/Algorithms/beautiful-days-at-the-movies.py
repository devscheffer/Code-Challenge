i = 20
j = 23
k = 6
def beautifulDays(i, j, k):
    c = 0
    for i in range(i,j+1):
        i_str = str(i)
        i_rev = int(i_str[::-1])
        if (i - i_rev)%k == 0:
            c += 1
    return c


beautifulDays(i, j, k)
