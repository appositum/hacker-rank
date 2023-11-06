if __name__ == '__main__':
    N = int(input())
    lst = []

    for _ in range(N):
        command = input()

        if command.startswith('insert'):
            [_, arg1, arg2] = command.split()
            lst.insert(int(arg1), int(arg2))
        if command.startswith('print'):
            print(lst)
        if command.startswith('remove'):
            lst.remove(int(command.split()[1]))
        if command.startswith('append'):
            lst.append(int(command.split()[1]))
        if command.startswith('sort'):
            lst.sort()
        if command.startswith('pop'):
            lst.pop()
        if command.startswith('reverse'):
            lst.reverse()
