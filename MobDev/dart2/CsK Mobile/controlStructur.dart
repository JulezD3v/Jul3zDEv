import 'dart:io';
void main(){
  //Use if..else, if and switch
  //Checks if the use input is positive negative or 0
  stdout.write("Enter any number: ");
  int? nums = int.tryParse(stdin.readLineSync() ?? '');
  if (nums == null) {
    print("Invalid input.");
  } else if (nums > 0) {
    print("The number is positive.");
  } else if (nums < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
   

}