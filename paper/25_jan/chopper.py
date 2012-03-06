import sys

if __name__ == '__main__':
	if len(sys.argv) < 2:
			print sys.stderr, "Not enough parameters."
			sys.exit(0)
	f = open(sys.argv[1])
	if not f:
		print sys.stderr, "Could not open the input file."
		sys.exit(0)

	cnt = 0
	fout = None
	with f as fin:
		for line in fin:
			if not line.strip() or line.startswith('Heuri'):
					# Starts a new serie
					cnt = cnt + 1
					if fout: fout.close()
					fout = open(sys.argv[1].split('.')[0] + '.s' + str(cnt) + '.csv', 'w')
			else:
					fout.write(line)
	if fout: fout.close()
	print "Done."
