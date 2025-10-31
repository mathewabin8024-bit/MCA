def fact(n):
    if n==1:
        return 1
    else:
        return n*fact(n-1)
n=int(input("enter the number of terms:"))
result=0
for i in range (1,n+1):
    f= fact(i)
    result=result+(pow(i,i)/f)
print("sum of series is",result)

