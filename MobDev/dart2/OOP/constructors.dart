void main(){
  var person1 = Person(
    age: 10, 
    name: "Kudirat",
  );
  print("The name is ${person1.name} the age is ${person1.age} \n the height is ${person1.height}");

}

class Person{
  String name;
  int age;
  int height;

  Person({required this.name, required this.age,  this.height = 0});
}

 