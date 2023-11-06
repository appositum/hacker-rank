if __name__ == '__main__':
    students = []

    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name, score])

    sec_min = sorted(set(map(lambda i: i[1], students)))[1]
    sec_lowest_grades = sorted(map(lambda st: st[0], filter(lambda i: i[1] == sec_min, students)))

    print(*sec_lowest_grades, sep='\n')
