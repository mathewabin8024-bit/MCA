from armstrong import armstrong_number
number=int(input("enter a number to check if it's an armstrong number:"))
if armstrong_number(number):
    print(f"{number} is an Armstrong number.")
else:
    print(f"{number} is not an armstrong number.")
