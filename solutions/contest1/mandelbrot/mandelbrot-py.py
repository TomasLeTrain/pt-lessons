for _ in range(int(input())):
    z,c,r = map(int, input().split())
    for i in range(r):
        z = z * z + c
    print(z)
