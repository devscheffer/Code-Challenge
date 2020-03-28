p = 0
step = 0
while p < len(c)-1:
    step += 1
    if p < len(c)-2:
        if c[p+2] == 0:
            p += 2    
        else:
            p += 1
    else:
        p += 1
return step