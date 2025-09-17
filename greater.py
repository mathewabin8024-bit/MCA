a=int(input("enter the first number:"))
b=int(input("enter the second number:"))
c=int(input("enter the third number:"))
if a>=b:
    if a>=c:
        print("the biggest number is",a)
    else:
        print("the biggest number is",c)
else:
    if b>=c:
        print("the biggest number is",b)
    else:
        print("the biggest number is",c)
