numbers=input("enter number:").split()
nums=[]
for n in numbers:
    nums.append(int(n))

result=[]
for n in nums:
    if n %2 !=0:
       result.append(n)
print("list after removing even number",result)




