str=input("enter the string:")
word={}
for char in str:
    if char in word:
        word[char]+=1
    else:
          word[char]=1
print("character frequency:")
for char,count in word.items():
    print(f"{char}:{count}")
