grades = [73,67,38,33]


def gradingStudents(grades):
    def multiple(num):
        return (num//5 + 1)*5

    mult = list(map(multiple,grades))
    res = []
    for i in range(len(grades)):
        test = mult[i] - grades[i]
        if test < 3 and grades[i] > 37:
            res.append(mult[i])
        else:
            res.append(grades[i])
    return res

result = gradingStudents(grades)
print(result)
