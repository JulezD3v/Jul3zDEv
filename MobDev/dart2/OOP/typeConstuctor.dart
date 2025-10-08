/** Generative constructors
Creates new instances and initializes instance variables.

Default constructors
Used to create a new instance when a constructor hasn't been specified. It doesn't take arguments and isn't named.

Named constructors
Clarifies the purpose of a constructor or allows the creation of multiple constructors for the same class.

Constant constructors
Creates instances as compile-time constants.

Factory constructors
Either creates a new instance of a subtype or returns an existing instance from cache.

Redirecting constructor
Forwards calls to another constructor in the same class. */

class Car {
  String brand;
  int year;

  Car(this.brand, this.year); // Generative constructor
}

class Pizza{
  String topping = "Peparonni";
  String size = "Medium";

  // Using a default constructor
}

class Chips{// Named constructor
  String amount;
  int price;

  Chips(this.amount,this.price);

  Chips.masala() : this("Large",200);// Named constructor. Think of the Russian Doll
}


void main() {
  var myCar = Car("Toyota", 2020);
  var order = Pizza();
  var myChips = Chips.masala();

  print('Brand: ${myCar.brand}, Year: ${myCar.year}');//generative
  print("She got a ${order.size}  ${order.topping} pizza, since she didn't specify her order");// default constructor
  print(" I want chipsmasala ${myChips.amount} for, Ksh${myChips.price}");
  
}
