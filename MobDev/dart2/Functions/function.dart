//Normal function
int add(int a, int b){
  return a + b;
}
//Function with no return

void greet(String name){
  print("Hello $name");

}
void answer(String receiver){
  print("Nice to meet you $receiver");
}

//Arrow function
int square (int x) => x*x; 

//Optimal Function
void user(String myName, [int ? myAge]){
  print("Name: $myName  \n Age:${myAge?? "No age present"}"); 
}

//Named Parameter
void userData(String? namez, int? agez){
  print("Username: $namez, Age: $agez");
}

//Default Parameter
void greetings(String userName,{String message = "Hello"}){
  print("$message $userName ");
}

//function within a funtion
void getDetails(Function age){
  print("Max's age is ${age()}");
}

int age(){
  return 5;
}

void main(){
  
 print(add(67, 13));
 greet("Julie");
 answer("John");
 print(square(54));
 user("Julie", 20);
 user("Abigail", 5);
 user("Grace");
 userData("June", 34);
 greetings("Julie");

 //Anonymous function or Lambda
 var num = [2,3,5,6,8];
 num.forEach((n){
  print(n*2);
 });

 getDetails(age);
}