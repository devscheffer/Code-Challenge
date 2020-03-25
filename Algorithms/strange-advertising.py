def viralAdvertising(n):
    shared = 5
    totalLiked = 0
    for i in range(n):
        liked = shared//2
        shared = liked*3
        totalLiked += liked
    return totalLiked



n = 4
result = viralAdvertising(n)
print(result)
