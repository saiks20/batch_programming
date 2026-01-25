import java.util.*;
import java.util.regex.*;
public class Calculator {
public static void main(String[] args) {
if(args.length > 0){
String input =args[0];
System.out.println("the output string is:"+input);

List<Integer> operands = new ArrayList<>();
List<Character> operators = new ArrayList<>();
Pattern integerPattern = Pattern.compile("\\d+");
Matcher integerMatcher = integerPattern.matcher(input);
while(integerMatcher.find()){
	operands.add(Integer.parseInt(integerMatcher.group()));
    }

Pattern operatorPattern = Pattern.compile("[+\\-*/]");
Matcher operatorMatcher = operatorPattern.matcher(input);
while(operatorMatcher.find()){
	operators.add(operatorMatcher.group().charAt(0));
    }
Double Result = Double.valueOf(operands.get(0));
int i=0;
 i++;
for(Character c: operators){
	 System.out.println("The operator is "+c);
	 System.out.println("The operand is "+operands.get(i));
	 if(c=='+')
            Result = Result + operands.get(i);
        else if( c=='-')
            Result = Result - operands.get(i);
        else if( c=='*')
           Result= Result * operands.get(i);
        else if( c=='/')
          Result =  Result / operands.get(i);
	System.out.println("The intermediate result is "+Result);
	 i++;
   }
   
 System.out.println("The Result of the equation is "+Result);
}
else
System.out.println("the equation inputed is incorrect, Please try again");
}
}