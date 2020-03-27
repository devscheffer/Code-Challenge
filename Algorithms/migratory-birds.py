def migratoryBirds(arr):
    arr.sort()
    common = arr[0]
    count = 0
    dictBird = {}
    for i in range(len(arr)):
        if arr[i] == common:
            count +=1
        else:
            dictBird[arr[i-1]] = count 
            count = 1
            common = arr[i]
    dictBird[arr[i]] = count
    birdID = [i for i in dictBird.keys() if dictBird[i] == max(dictBird.values())]
    birdID = min(birdID)
    return birdID


arr = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]

result = migratoryBirds(arr)
print(result)
