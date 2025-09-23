import 'dart:io';
void main(){
  
  try{
    int num1 = 4;
    int num2 = 0;
    int result = num1~/num2;
    print("Result = $result");
  }catch(e){
     print("You can't divide by zero");
  }finally{
    print("Division attempt finished");
  }

try {
    stdout.write("Enter your age: ");
    String input = stdin.readLineSync()!;
    int age = int.parse(input);
    print("Your age is $age");            
    
  } catch (e) {
  
    print("That’s not a valid number!");
  } finally {
    print("Done checking age.");
  }
}