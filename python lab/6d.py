list=input("enter a list of words spearated by spaces:").split()
longest_length=0
for word in list:
    if len(word)>longest_length:
        longest_length=len(word)
        long_word=word
print("the longest word is",long_word)
print("the length of the longest word is",longest_length)
