def compare(s1,s2,n):
    count=0
    for i in range (0,n):
        if s1[i]==s2[i]:
            count=count+1
    if count==n:
        return "true"
    else:
        return "false"
s1=input("enter the string1: ")
s2=input("enter the string2:")
n=int(input("enter the number:"))
print("the first",n,"characters of both string are the same?:",compare
(s1,s2,n))