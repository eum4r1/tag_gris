import java.math.BigInteger;

public class challenge2 {
    public static void main(String[] args) {
        String string1 = new String("1c0111001f010100061a024b53535009181c");
        String string2 = new String("686974207468652062756c6c277320657965");
        char [] a = string1.toCharArray();
        char [] b = string2.toCharArray();

        StringBuilder first = new StringBuilder("");
        StringBuilder second = new StringBuilder("");
        StringBuilder third = new StringBuilder("");
        for (int i = 0; i < string1.length(); i++){
            if(a[i]=='0') {
                first.append("0000");
            }else if (a[i]=='1'){
                first.append("0001");
            }else if (a[i]=='2'){
                first.append("0010");
            }else if(a[i]=='3'){
                first.append("0011");
            }else if(a[i]=='4'){
            first.append("0100");
            }else if(a[i]=='5'){
                first.append("0101");
            }else if(a[i]=='6'){
                first.append("0110");
            }else if(a[i]=='7'){
                first.append("0111");
            }else if(a[i]=='8'){
                first.append("1000");
            }else if(a[i]=='9'){
                first.append("1001");
            }else if(a[i] == 'a' || a[i]=='A'){
                first.append("1010");
            }else if(a[i] == 'b' || a[i]=='B'){
                first.append("1011");
            }else if(a[i] == 'c' || a[i]=='C'){
                first.append("1100");
            }else if(a[i] == 'd' || a[i]=='D'){
                first.append("1101");
            }else if(a[i] == 'e' || a[i]=='E'){
                first.append("1110");
            }else if(a[i] == 'f' || a[i]=='F'){
                first.append("1111");
        }

        }

        for (int i = 0; i < string1.length(); i++){
            if(b[i]=='0') {
                second.append("0000");
            }else if (b[i]=='1'){
                second.append("0001");
            }else if (b[i]=='2'){
                second.append("0010");
            }else if(b[i]=='3'){
                second.append("0011");
            }else if(b[i]=='4'){
                second.append("0100");
            }else if(b[i]=='5'){
                second.append("0101");
            }else if(b[i]=='6'){
                second.append("0110");
            }else if(b[i]=='7'){
                second.append("0111");
            }else if(b[i]=='8'){
                second.append("1000");
            }else if(b[i]=='9'){
                second.append("1001");
            }else if(b[i] == 'a' || b[i]=='A'){
                second.append("1010");
            }else if(b[i] == 'b' || b[i]=='B'){
                second.append("1011");
            }else if(b[i] == 'c' || b[i]=='C'){
                second.append("1100");
            }else if(b[i] == 'd' || b[i]=='D'){
                second.append("1101");
            }else if(b[i] == 'e' || b[i]=='E'){
                second.append("1110");
            }else if(b[i] == 'f' || b[i]=='F'){
                second.append("1111");
            }

        }

        for(int i = 0; i < first.length(); i++) {
           third.append((first.charAt(i) ^ second.charAt(i)));
        }
        System.out.println("Primeira String em binario "+first+"\n");
        System.out.println("Segunda String em binario "+second+"\n");
        System.out.println("Xor das duas strings: "+third+"\n");

        String ss = third.toString();

        BigInteger finalm = new BigInteger(ss,2);

        System.out.println("Resultado final em hexadecimal: "+finalm.toString(16));

    }
}











