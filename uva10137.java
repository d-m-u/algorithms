public class uva10137 {
	public static void main(String[] args) {

		int students = Integer.parseInt(args[0]);
		float[] costs = new float[students + 1];
		float average = 0;
		float totalRed = 0;
		float totalBlack = 0; 

		for (int k = 1; k <= students; k++) {
			costs[k] =  Float.parseFloat(args[k]);
			average += costs[k];
			System.out.println("costs[k]: " +costs[k]);
		}

		average /= students;
		System.out.println(average);

		for (int k = 1; k <= students; k++) {
			if ((average - costs[k]) < 0 ) { totalRed -= (costs[k] - average); System.out.println("redAdd: " + (costs[k] - average) + " costs[k]: " + costs[k]);}
			if ((average - costs[k]) > 0 ) {totalBlack += (average - costs[k]); System.out.println("blackAdd: " + (average - costs[k]) + " costs[k]: " + costs[k]);}
		}

		System.out.println("red: " + totalRed + " , black: " + totalBlack);


	}

}
