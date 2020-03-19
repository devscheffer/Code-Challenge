def repeatedString(s, n):
    #Times it repeat 
    c1 = 0
    t1 = n//len(s) 
    for i in s:
        if i == 'a':
            c1 += 1
    
    #rest of string
    c2 = 0
    t2 = n%len(s) 
    for i in s[0:t2]:
        if i == 'a':
            c2 += 1
    res = t1 * c1 + c2
    return res 