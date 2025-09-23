void main(){
 //NO 1 Program that print a multiplication of 1-5
 //for loops
for (var i = 1; i <= 12; i++) {
  print('5 x $i = ${5 * i}');
}
//Another method of using if/ else statements
var grade =60;
grade >= 50 && grade < 70 ? print("A") : print("-");

//Largest no in an array of numbers
var count = 0;
while(count<3){
  print("I love music number: $count");
  count++;
}
//do-while loop
int age = 10;
do{
  print("Your age is $age");
  age++;
} while(age < 12);{print("The age $age is valid");
};

//for in loops
 var dreams =["a 8-figure salary","a car","my own luxury appartment","Travel","a foreign husband","a loving relationship"];
 for (var dream in dreams) {
   print("My dream is to have $dream");
 }

var numbers = [13,14,21,89,12];
for(var n in numbers){
  if(n < 18){
    print("You are $n, you cannot drink");
  }
};
try {
    int result = 10 ~/ 0; // integer division by zero
    print("Result: $result");
    }/* on IntegerDivisionByZeroException {
      print("Cannot divide by zero!"); */
      
  // } This line of code is not neccessarly needed the new IDE's 
  // can catch the error without causing any runtime error unlike the old IDE's
    catch (e) {
    print("Caught an error: $e");
  } finally {
    print("This always runs (cleanup code)");
  }


}