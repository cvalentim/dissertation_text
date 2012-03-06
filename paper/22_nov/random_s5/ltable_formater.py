# -*- coding: utf-8 -*-
import sys


if __name__ == '__main__':
	m = {}
	for line in sys.stdin:
		"""	
		Each line is the follow format:
		Heuristic,RMQ,Serie,t,d,ans,av_time,min,med,max
		"""
		sline = line.split(',')
		t = float(sline[3])
		d = float(sline[4])
		size = int(sline[5])
		time = float(sline[8])
		
		if m.has_key((t, d, size)):	
				m[(t, d, size)].append(time)
		else:
				m[(t, d, size)] = [time]
	print r"\begin{tabular}{|c|c|c|c|c|c|}"	
	print r"\hline"
	print r"\textbf{t} & \textbf{d} & \textbf{saída} & \textbf{fpair} & \textbf{rmqBucket} & \textbf{rmqSt}\\"
	print r"\hline"
	for key in sorted(m.keys(), key=lambda e: e[2]):
		while len(m[key]) < 3:
			m[key].append('-')
		t_fpair = m[key][0]
		t_rmqN = m[key][1]
		t_rmqSt = m[key][2]
		print r'%.0f & %.0f & %d'%key + ' & ' + str(t_fpair) + ' & ' + str(t_rmqN) + ' & ' + str(t_rmqSt) + r'\\'
		print r'\hline'
	print r'\end{tabular}'
