def diagonalDifference(arr):
    # Write your code here
    p = 0
    ld = []
    rd = []
    for i in arr:
        ld.append(i[p])
        p += 1
    p = len(arr[0])-1
    for i in arr:
        rd.append(i[p])
        p -= 1
    
    def sum(array):
        total = 0
        for i in array:
            total += i
        return total

    return abs(sum(ld)-sum(rd))