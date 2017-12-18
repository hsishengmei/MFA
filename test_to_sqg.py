import time
import random
from collections import deque

def CGR_BC(B, n, N):
    # B = ['T', 'A', 'G', ...]
    X = 2 ** (n-1)
    Y = 2 ** (n-1)
    #for i in range(N):
    #    X.append(0)
    #    Y.append(0)
    print(X)

    a = 0
    b = 0
    M = []
    for i in range(2**n):
        M.append([])
    for j in M:
        for i in range(2**n):
            j.append(0)

    for i in range(N):
        if B[i] == 'A':
            a = 0
            b = 0
        elif B[i] == 'C':
            a = 0
            b = 1
        elif B[i] == 'G':
            a = 1
            b = 1
        elif B[i] == 'T':
            a = 1
            b = 0

        X = (a << (n-1)) | (X >> 1)
        Y = (b << (n-1)) | (Y >> 1)
        M[X][Y] += 1 
        print(str(X)+" "+str(Y))
    return M

def SQG_BC(M_L, L):
    M_L_1 = []
    for i in range(2**(L-1)):
        M_L_1.append([])
        for j in range(2**(L-1)):
            M_L_1[i].append(0)

    for x in range(2**(L-1)):
        for y in range(2**(L-1)):
            x_2 = x << 1
            y_2 = y << 1
            M_L_1[x][y] = M_L[x_2][y_2] + M_L[x_2+1][y_2] + M_L[x_2][y_2+1] + M_L[x_2+1][y_2+1]
    return M_L_1

def intercal_binary(a, b, length):
    num = 0
    for i in range(length):
        x = (a >> (length-1-i)) % 2
        y = (b >> (length-1-i)) % 2
        num = (num << 2) | ((x << 1) | y) 
    return num

def M_CGR(B, n, N):
    # B = ['T', 'A', 'G', ...]
    X = [2 ** (n-1)]
    Y = [2 ** (n-1)]
    for i in range(N):
        X.append(0)
        Y.append(0)
    # print(X)

    a = 0
    b = 0

    M = [0 for x in range(4 ** n)]

    for i in range(N):
        if B[i] == 'A':
            a = 0
            b = 0
        elif B[i] == 'C':
            a = 0
            b = 1
        elif B[i] == 'G':
            a = 1
            b = 1
        elif B[i] == 'T':
            a = 1
            b = 0

        X[i+1] = (a << (n-1)) | (X[i] >> 1)
        Y[i+1] = (b << (n-1)) | (Y[i] >> 1)
        # idx = intercal_binary(X[i+1], Y[i+1], n)
        idx = (X[i+1] << n) | Y[i+1]
        M[idx] += 1 
    return M

def Hou(M_L, L):
    M = [[] for i in range(L+1)]
    M[L] = M_L
    for i in range(L):
        j = L-i-1 # decreasing from L-1 to 0
        M[j] = [0 for i in range(4 ** j)] # from 4^(L-1) to 4^0
        for k in range(4 ** j):
            M[j][k] = sum(M[j+1][k*4:(k+1)*4])

    return M


if __name__ == '__main__':
    S = []
    N = 2000
    print('N:', N)
    nlist = range(3,4)
    # for j in range(N):    
    #     rng = random.randint(0,3)
    #     if rng == 0:
    #         S.append('A')
    #     elif rng == 1:
    #         S.append('T')
    #     elif rng == 2:
    #         S.append('C')
    #     elif rng == 3:
    #         S.append('G')
    bitstr = []
    with open('seq.txt', 'r') as f:
        bitstr = f.readline()

    bitstr = bitstr[-100:]
    N = 50

    for j in range(N):   
        rng = bitstr[98-2*j:100-2*j]
        if rng == '00':
            S.append('A')
        elif rng == '01':
            S.append('T')
        elif rng == '10':
            S.append('C')
        elif rng == '11':
            S.append('G')


    print('method 1: CGR_BC + SQG-BC')
    for n in nlist:
    #    print('n =', n, 'number of boxes:', 4 ** n, end=' ')
        a = time.time()  
        M1 = [0 for i in range(n+1)]
        M1[n] = CGR_BC(S, n, N)
        for i in range(n):
            l = n-i # from n to 1
            M1[l-1] = SQG_BC(M1[l], l)
        b = time.time()
        print('time:', str(b-a)[:4])
    for i in M1:
        for j in i:
            print(j)

    # print('method 2: M_CGR + Hou')
    # for n in nlist:
    #     print('n =', n, 'number of boxes:', 4 ** n, end=' ')
    #     a = time.time()
    #     MM = M_CGR(S, n, N)
    #     M2 = Hou(MM, n)
    #     b = time.time()
    #     print('time:', str(b-a)[:4])
    # for i in M2:
    #     print(i)
    print('result:')

    res = []
    with open('result.txt') as f:
        for i in range(64):
            line = f.readline()
            num = int(line, 16)
            res.append(num)
    print (sum(res))
    res2 = []
    for i in range(8):
        print(res[i*8:i*8+8])



