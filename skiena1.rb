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
{
int i,j;
for (i=1; i<n; i++)
	{
	  j=i;
	  while ((j>0&&(s[j] < s[j-1]))	
	  	{
	  		swap(&s[j], &s[j-1]);
	  		j=j-1;
	  	}
	}

}