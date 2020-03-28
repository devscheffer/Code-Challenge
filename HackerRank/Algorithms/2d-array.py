#OK Top Glass 
list_top = []
for i in (arr[0:-2]):
    for j in range(len(i[0:-2])):
        list_temp_top = []
        for k in range(3):
            p = i[j+k]
            list_temp_top.append(p)
        list_top.append(list_temp_top)

#OK Lower Glass 
list_lower = []
for i in (arr[2:]):
    for j in range(len(i[0:-2])):
        list_temp_lower = []
        for k in range(3):
            p = i[j+k]
            list_temp_lower.append(p)
        list_lower.append(list_temp_lower)

#OK Middle Glass 
list_middle = []
for i in (arr[1:-1]):
    for j in i[1:-1]:
        list_temp_middle = []
        list_temp_middle.append(j)
        list_middle.append(list_temp_middle)


#Check if Glass building is correct
print(f"""
T: {len(list_top)}
M: {len(list_middle)}
L: {len(list_lower)}
""")

def sum(list1):
    total = 0
    for i in list1:
        total += i
    return total

#build the glass and their sum
dict_Glass = {}
for i in range(len(list_top)):
    t = sum(list_top[i])
    m = sum(list_middle[i])
    l = sum(list_lower[i])
    sum_Glass = t + m + l
    dict_Glass[i] = [list_top[i],list_middle[i],list_lower[i],sum_Glass]

#get the higher value glass
max = dict_Glass[0][-1]
glass_max = []
for i in dict_Glass.values():
    if i[-1] > max:
        max = i[-1]
        glass_max = i

return max