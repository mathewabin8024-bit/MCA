steps=int(input("enter the number of steps for the pyramid"))
for i in range(1,steps+1):
    for j in range(1,i+1):
        print(i*j,end=" ")
    print()