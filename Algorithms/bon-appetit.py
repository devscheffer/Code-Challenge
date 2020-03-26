def bonAppetit(bill, k, b):
    total = 0
    for i in bill:
        total += i

    total -= bill[k]
    ba = total/2
    split = b - ba
    if split == 0:
        ans = 'Bon Appetit'
    else:
        ans = int(split)
    print(ans)

bill = [3,10,2,9]
k = 1
b = 12
result = bonAppetit(bill, k, b)
print(result)
