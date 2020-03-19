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
    list_temp_middle = []
    for j in i[1:-1]:
        list_temp_middle.append(j)
    list_middle.append(list_temp_middle)