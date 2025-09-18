import java.util.*;

public class brick {
    
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        // read in the number of burritos to check
        int t = in.nextInt();
        
        // loop through all n burritos
        for(int tc = 1; tc <= t; tc++) {
            int n = in.nextInt();
            int w = in.nextInt();
            
            System.out.printf("%d\n",n/w);
        }
    }
    
}

