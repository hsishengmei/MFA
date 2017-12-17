from random import randint

seq = ''
for i in range(2000):
	n = randint(1,4)
	if n == 1: 
		seq += '00'
	elif n == 2: 
		seq += '10'
	elif n == 3: 
		seq += '11'
	else: 
		seq += '01'

	# if n == 1: 
	# 	seq += 'A'
	# elif n == 2: 
	# 	seq += 'T'
	# elif n == 3: 
	# 	seq += 'G'
	# else: 
	# 	seq += 'C'

with open('seq.txt', 'w') as f:
	f.write(seq)