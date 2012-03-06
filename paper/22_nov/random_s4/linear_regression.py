



if __name__ == '__main__':
	print "Number of training elements:"
	M = input()
	sum_x = 0
	sum_y = 0
	sum_square_x = 0
	sum_xy = 0
	for x in xrange(M):
		x, y = raw_input().split(", ")
		x = float(x)
		y = float(y)
		sum_x += x
		sum_y += y
		sum_square_x += x * x
		sum_xy += x * y
	w_1 = (M * sum_xy - sum_x * sum_y)/float((M * sum_square_x - sum_x**2))
	w_0 = sum_y/M - (w_1 * sum_x)/float(M)
	print "w1 = ", w_1, " w0 = ", w_0
		

