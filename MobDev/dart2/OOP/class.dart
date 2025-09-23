void main(){
  var person1 = Person();
  person1.walk();
  
}

class Person{
  String name = "Julie";
  int age = 34;
  String status = "Painfully single";


  void walk(){
    print("$name walks gracefully");

  }

  void maritalStatus(){
    print("She is $status");
  }


}