import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Example {

   public static void main(String[] args) {
      String str = "var x = 100";
      Pattern pattern = Pattern.compile("var");
      Matcher matcher = pattern.matcher(str);
      if (matcher.find()) {
          System.out.println("Matches found:  " + matcher.group());
      }
      else {
          System.out.println( " No matches found " );
      }
   }
}
