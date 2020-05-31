# printcols - print known columns in unknown positions

BEGIN	{ 
			FS = "|"
		  	q[1] = "G"
		  	q[2] = "B"
		  	q[3] = "F"
		  	n = 3
		}

NR == 1	{
			for (i = 1; i <= n; i++)
				for (j = 1; j <= NF; j++)
					if ($j == q[i])
						p[$j] = j
		}

		{
			for (k in p) 
				if (k != q[n])
				 	printf("%s|", $p[k])
				else
					printf("%s", $p[k])
			printf("%s", "\n")
		}
