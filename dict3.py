students={ "anu":[80,90,70],"hari":[88,99,77],"dev":[98,89,79]}

for name,marks in students.items():
    total=sum(marks)
    average=sum(marks)/len(marks)
    print(f"student:(name)")
    print(f"marks:{marks}")
    print(f"total marks:{total}")
    print(f"average marks:{average:.2f}")
    print("."*20)
