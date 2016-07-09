def insertionSort(a, n)
  for i in 1..(n-1)
    j=i
    while ((j>0) && (a[j] < a[j-1]))
      a[j], a[j-1] = a[j-1], a[j]
      j=j-1
    end
  end
  puts a.to_s
end

insertionSort([2,4,6,5,-4,0], 1)
insertionSort([2,4,6,5,-4,0], 2)
insertionSort([2,4,6,5,-4,0], 3)
insertionSort([2,4,6,5,-4,0], 4)
insertionSort([2,4,6,5,-4,0], 5)
insertionSort([2,4,6,5,-4,0], 6)


# original c:
# insertion_sort(item s[], int n)
# {
# int i,j;
# for (i=1; i<n; i++)
# 	{
# 	  j=i;
# 	  while ((j>0&&(s[j] < s[j-1]))
# 	  	{
# 	  		swap(&s[j], &s[j-1]);
# 	  		j=j-1;
# 	  	}
# 	}
# }

# correct, efficient, easy to implement
# algorithms vs heuristics
# algorithm is correct, heuristic is method of solving something which may or may not be optimal

# 1.1 robot traversal
# how, given n points, to minimize distance traveled
# TSP... but...
# random, clustering-type that does outliers first
# not nearestNeighbor nor nearestPair

# 1.2 scheduling
# start with first available, continue with next soonest after first ends
# give priority to the shortest or longest
# the exhaustive is 2^n vs the TSP exhaustive n!

# two common traps for output specification
# asking ill-defined questions
# i.e. what constitutes the "best" route
# and creating compound goals

# good counterexamples are:
# verifiable and simple

# techniques for counterexamples:
# greedy == always take the biggest
# think exhaustively
# think small
# hunt for weaknesses
# seek extremes

# counterexamples are best way to disprove correctness of heuristic

# induction is the formal proof rather than lack of counterexample














