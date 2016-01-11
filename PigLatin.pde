import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw(){
}


public int findFirstVowel(String sWord){
	  for(int i = 1; i < sWord.length() + 1; i++){
  if(sWord.substring(i-1,i).equals("a")||sWord.substring(i-1,i).equals("e")
  ||sWord.substring(i-1,i).equals("i")||sWord.substring(i-1,i).equals("o")||
  sWord.substring(i-1,i).equals("u")){
  return i - 1;
  } 
  
  
  
  
  
}


	return -1;
}

public String pigLatin(String sWord){
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord

	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	} else if(sWord.substring(0,2).equals("qu")){
		return sWord.substring(2,sWord.length()) +sWord.substring(0,2) + "ay";
	} else if(sWord.substring(0,3).equals("thr")){
		return sWord.substring(3,sWord.length()) +sWord.substring(0,2) + "ay";
	} else if(sWord.substring(0,2).equals("st")){
		return sWord.substring(2,sWord.length()) +sWord.substring(0,2) + "ay";
	} else if(findFirstVowel(sWord) == 0){
		return sWord + "ay";
	} else {
		return sWord.substring(1,sWord.length()) +sWord.substring(0,1) + "ay";
	}
}
