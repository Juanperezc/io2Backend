from sys import argv

command = 'mylist = {0}'.format(argv[1])

exec(command)

print(len(mylist))
print(mylist[1])
for item in mylist:
    print(item)