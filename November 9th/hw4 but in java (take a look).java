//if you wanna try it go here: https://www.tutorialspoint.com/compile_java8_online.php
//and then go to the stdin tab and add stuff in there as input

import java.util.Scanner;
public class VowelToStar {

	static String starVowel(String str){
		String out = "";
		final String VOWELS = "aeiouAEIOU";
		for(int i = 0; i < str.length(); i++){
			if(VOWELS.indexOf(str.charAt(i)) != -1){
				out += "*";
			}
			else{
				out += str.charAt(i);
			}
		}
		return out;
	}
	
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		
		String str;
		
		System.out.println("Enter string to convert vowels to \"*\"");
		str = sc.nextLine();
		
		System.out.println("Returns: " + starVowel(str));
	}
}
