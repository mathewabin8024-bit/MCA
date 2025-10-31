def check(n):
    if n%2==0:
        return "even"
    else:
        return"odd"
num=int(input("enter the number:"))
print("the given number",num,"is",check(num))
