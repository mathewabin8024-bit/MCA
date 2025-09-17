a1=input("enter first a string")
first_char=a1[0]
res=first_char+a1[1:].replace(first_char,'$')
print(res)