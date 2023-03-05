#!/bin/bash -xv
#cense-Identifier: BSD-3-Clause

ng () {
	    echo "NG at line $1"
	        res=1
	}

	res=0

	# I/O TEST 1
	out=$(echo "3
	4
	5" | ./plus)
	[ "${out}" = "12この数字は偶数です" ] || ng ${LINENO}

	# I/O TEST 2
	out=$(echo "2.5
	7.5" | ./plus)
	[ "${out}" = "10.0この数字は偶数です" ] || ng ${LINENO}

	# I/O TEST 3
	out=$(echo "1
	2
	3
	4
	5" | ./plus)
	[ "${out}" = "15この数字は奇数です" ] || ng ${LINENO}

	# I/O TEST 4
	out=$(echo "-3
	3" | ./plus)
	[ "${out}" = "0この数字は偶数です" ] || ng ${LINENO}

	[ "$res" = 0 ] && echo "OK" # &&（AND記号）は左側が成功すると右側を実行
	exit $res

