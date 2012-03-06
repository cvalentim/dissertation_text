import sys

if __name__ == '__main__':
		for line in sys.stdin:
				print ','.join([x.strip() for x in line.split(',')])
		
