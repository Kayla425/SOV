#python 3

numb = list(range(1,101))
count = 1
for count in numb:
	if count %3 ==0 and count %5 ==0 :
		print("CatDog")
	elif count %5 ==0:
		print("Dog")
	elif count %3 ==0:
		print("Cat")
	else:
		print(count)
	count += 1
	