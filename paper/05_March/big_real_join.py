
from collections import defaultdict

def is_new(line):
	return line.startswith('Heuri') or line.strip() == ""

if __name__ == '__main__':
		input_files = ['large_beg_fpair.csv', 'large_beg_rmqBucket.csv', 'large_beg_rmqSt.csv']

		fpair = {}
		rmq_bucket = {}
		rmq_st = {}

		for file_name in input_files:
				m = defaultdict(list)
				f = open(file_name, 'r')
				curr_serie = 0
				for line in f:
						if is_new(line):
								curr_serie += 1
								continue
						h, rmq, size, t, d, ans, av, min, med, max = line.split(', ')
						m[curr_serie].append((float(t), float(d), int(ans), float(med)))

				for curr in m:
						m[curr] = sorted(m[curr], key=lambda x: x[2])

				if file_name.endswith('fpair.csv'):
						fpair = m
				elif file_name.endswith('rmqBucket.csv'):
						rmq_bucket = m
				else: 
						rmq_st = m
				f.close()
		
		print r"\begin{tabular}{|c|c|c|c|c|c|c|}"
		print r"\hline"	
		print r"\textbf{serie} & \textbf{t} & \textbf{d} & \textbf{size} & \textbf{fpair} & \textbf{bucket} & \textbf{st}\\"
		print r"\hline"	
		for s in xrange(1, 8):	
				linesFpair = fpair[s]
				linesBucket = rmq_bucket[s]
				linesSt = rmq_st[s]
				m = defaultdict(list)
				for h in [linesFpair, linesBucket, linesSt]:
						for x in h:
								m[(x[0], x[1], x[2])].append(x[3])
				for x in sorted(m.keys(), key=lambda x: x[2]):
						t, d, ans = x
						times = m[x]
						print "%d & %.2f & %.2f & %d & %.2f & %.2f & %.2f\\\\"%(s, t, d, ans, times[0], times[1], times[2])			
						print "\hline"	
		print r"\end{tabular}"
