file=open("files2.txt","w")
file.write("hello world\nwelcome to python programming\nthank you")
file.close()
list=[]
file=open("files2.txt","r")
list=[line.strip() for line in file]
file.close()
print(list)