def sockMerchant(n, ar):
    dic_sock = {}
    for i in ar:
        c = 0
        for j in ar:
            if i == j:
                c += 1
        c = int(c/2)
        dic_sock[i] = c
    res = 0
    for i in dic_sock:
        res += dic_sock[i]

    return res