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

# (1.4.1) modeling application in terms of well-defined structures and algorithms most important single step towards a solution

# counterexamples are best way to disprove correctness of heuristic

# induction is the formal proof rather than lack of counterexample

# using induction, prove the following recursive algorithm for incrementing natural numbers:
# if y==0 return 1 else
# Increment
#  if (y%2) ==1 then
#	return (2*Increment(y/2))
#  else return y+1

# base case of y==0 return 1
# assume general case of y=n-1
# demonstrate y=n works
# half the cases have y+1 returned when y%2 ==0
# for the others, the general case works for all y<= n-1

# two basic classes of summation formulae:
# arithmetic
# geometric

# prove that the sum of i from 1 to n where i*i! = (n+1)! -1
# base case: n=1 and 1*1! = 1 and (2-1) = 1
# assume general case of n*n! = (n+1)! -1
# prove case from i to n+1 which is (n+1)*(n+1)! + sum original 1-n
# ... = (n
# (n+1) * (n+1)! + (n+1)! -1
# (n+1)! * ((n+1) +1) -1
# (n+2)! -1

# permutation: ordering
# subset: selection
# tree: hierarchical
# graphs: relationships between arbitraty pairs
# points: locations in geometric space
# polygons: regions in some geometric space
# strings: sequences of patterns or characters

# 1.7 -- EXERCISES
# 1. show that (a+b) can be less than min(a,b)
#   a=-3, b=-1 (a+b) = -4 and min(a,b) = -3 so (a+b) < min(a,b)
# 2. show (a*b) can be less than min(a,b)
#   a=-2, b=2 (a*b) = -4 and min(a,b) = -2 so (a*b) < min(a,b)
# 3. show a road network with two points a,b such that the fastest route between a,b is not the shortest
#











