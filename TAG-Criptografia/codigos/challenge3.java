

import java.math.*;
public class challenge3{
    public static void main(String[] args) {

        int p = 0;
        int q = 0;

        while (true) {
            p = (int) (Math.random() * (1021 - 2) + 2);
            if (Prime(p)) {
                break;
            }
        }
        while (true) {
            q = (int) (Math.random() * (1021 - 2) + 2);
            if (Prime(q)) {

                break;
            }
        }
        int n = p * q;
        int et = ((p - 1) * (q - 1));
        int e = 3;
        int d = invmod(e,et);

        System.out.println("p is: " + p);
        System.out.println("q is: " + q);
        System.out.println("n is: " + n);
        System.out.println("et is: " + et);
        System.out.println("e is: " + e);
        System.out.println("17 and 3120 is "+invmod(17,3120));
        System.out.println("d is "+d);
        System.out.println("Public key: ["+e+","+n+"]");
        System.out.println("Private key: ["+d+","+n+"]");
        double c=42;
        double m=47;
        c=(Math.pow(m,e));
        System.out.println("Encrypt number 42 = "+c);
        m=((Math.pow(42,d))%n);
        System.out.println("Decrypt = "+m);





    }

    private static boolean Prime(int n) {
        int i;
        for (i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    static int invmod(int a, int c)
    {
        a = a % c;
        for (int b = 1; b < c; b++)
            if ((a * b) % c == 1)
                return b;
        return 1;
    }     }









