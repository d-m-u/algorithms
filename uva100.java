import java.util.Arrays;

public class uva100 {
	public static void main(String[] args) {

		int i = Integer.parseInt(args[0]);
		int j = Integer.parseInt(args[1]);

		int max = Math.max(i, j);
		int min = Math.min(i, j);

		int[] a = new int[(max - min)];

		for (int k = 1; k < (max - min); k++) {
			if ((k + min) % 2 != 0) {
				a[k] = cycleLength(1, (k + min));
			}
		}

		Arrays.sort(a);
		System.out.println(i + " " + j + " " + a[a.length - 1] );
	}

	private static int cycleLength(int count, int i) {
		if (i > 1) {
			if (i % 2 == 0) {
				i = (i / 2);
			} else {
				i = (3 * i + 1);
			}
			count++;
			return cycleLength(count, i);
		} else {
			return count;
		}
	}
}
