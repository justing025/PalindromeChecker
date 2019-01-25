public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String og = noCapitals(onlyLetters(word));
  String backwards = noCapitals(onlyLetters(reverse(word)));
   if( og.equals(backwards) ){
      return true;
   } //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
  int last = str.length()-1;
  for(int i=last; i>=0; i--){
    sNew= sNew+ str.substring(i,i+1);
  }
    //your code here
    return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String onlyLetters(String sString){
  String a="";
  for(int i=0; i<sString.length(); i++){
  if(Character.isLetter(sString.charAt(i))==true){
    a= a+sString.substring(i,i+1);
    }
  }
  return a;
}


