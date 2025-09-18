import java.util.*;

public class mandelbrot {
    
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        // read in the number of burritos to check
        int t = in.nextInt();
        
        // loop through all n burritos
        for(int tc = 1; tc <= t; tc++) {
            long z = in.nextInt();
            long c = in.nextInt();
			long r = in.nextInt();

			for(int i = 0;i < r;i++){
				z = z * z + c;
			}
            
            System.out.printf("%d\n",z);
        }
    }
    
}
