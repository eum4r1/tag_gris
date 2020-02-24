import java.util.Base64;

public class challenge1 {
 public static void main (String [] args) {
	 String hex="49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d";
	 
		    StringBuilder saida = new StringBuilder("");
		     
		    for (int i = 0; i < hex.length(); i += 2) {
		        String sstring = hex.substring(i, i + 2);
		        saida.append((char) Integer.parseInt(sstring, 16));
		    }
		     String base = saida.toString();
		    System.out.println(base);
		    
		    String inbase64 = Base64.getEncoder().encodeToString(base.getBytes());
		    System.out.println(inbase64);
		}		
			 
		
	 }
	


	 
	
 


		
			
	 
        		
 
       
 

        
		 
	 
	
	 
	 

		
		 
		
	 
 
    



