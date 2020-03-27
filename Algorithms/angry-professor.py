def angryProfessor(k, a):
    count = 0
    ans = 'YES'
    for i in a:
        if i <= 0:
            count += 1
        if count == k:
            ans = 'NO'
            break
    return ans

k = 2
a = [0, -1, 2, 1]
result = angryProfessor(k, a)
print(result)
