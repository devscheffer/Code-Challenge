def miniMaxSum(arr):
    arr.sort()

    def sum(list):
        total = 0
        for i in list:
            total += i
        return total

    min = sum(arr[0:-1])
    max = sum(arr[1:])

    print(f"{min} {max}")


