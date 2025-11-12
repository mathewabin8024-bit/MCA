file=open("files3.txt","w")
file.write("this is the firstline\nthis is the3 secondline\n this is the thirtdlone\nthis is the fourthline")
file.close()

file=open("files3.txt","r")
print(file.readline())
print(file.readline())
print(file.readline())
file.close()
with open("files3.txt","r") as file1:
    with open("files4.txt","w") as file2:
        line_number=1
        for line in file1:
            if line_number % 2 !=0:
                file2.write(line)
            line_number+=1
print("odd lines written to files4.txt:")
with open("files4.txt","r") as file2:
    for line in file2:
        print(line.strip())

