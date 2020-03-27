def countingValleys(n, s):
    initial_position = 0
    change = 0
    dictChange = {}
    for i in range(len(s)):
        if initial_position == 0:
            change += 1
            dictChange[change] = []
        if s[i] == 'U':
            initial_position += 1
        if s[i] == 'D':
            initial_position -= 1

        dictChange[change].append(s[i])

    valley = 0
    for j in dictChange.values():
        if j[0] == 'D':
            valley += 1
    return valley

n = 8
s = 'DDUUDDUDUUUD'
result = countingValleys(n, s)
print(result)
