public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 1; i <= sWord.length(); i++){
    if(sWord.substring(i-1,i).equals("a") || sWord.substring(i-1,i).equals("e") || sWord.substring(i-1,i).equals("i") || sWord.substring(i-1,i).equals("o") || sWord.substring(i-1,i).equals("u")) {
      return i - 1;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	int firstVowel = findFirstVowel(sWord);
	if(firstVowel == 0) {
		return sWord + "way";
	}
	if(firstVowel == -1) {
		return sWord + "ay";
	}
	if(sWord.substring(0,2).equals("qu")) {
		return sWord.substring(firstVowel + 1) + sWord.substring(0,2) + "ay";
	}
	else {
		return sWord.substring(firstVowel) + sWord.substring(0,firstVowel) + "ay";
	}
}
