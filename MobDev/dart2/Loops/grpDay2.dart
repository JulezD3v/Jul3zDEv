void main() {



//No 1
  List<String> fruits = ["Apple", "Banana", "Mango"];
  
  // Add 5 more
  fruits.addAll(["Orange", "Tangareen", "Strawberry", "Grapes", "Kiwi"]);
  
  
  fruits.remove("Banana");
  
  // Print length
  print("Fruits: $fruits");
  print("Length: ${fruits.length}");

  //No2
  var carMaps = {"Mercedes":"GLE","Toyota":"Corolla", "BMW":"X5"};
  print(carMaps.values);

//No 3
// Names only → List<String> (since order matters and duplicates are possible).

//Phone numbers mapped to names → Map<String, String> (e.g. "0712xxxxxx": "John").

//Recently dialed numbers (no duplicates) → Set<String> (automatically prevents duplicates)

//no 4
//"=" - used to assign
//"==" - used to compare

//no5
//logical operator && ||
  bool isLoggedIn = true;
  bool hasSession = false; // Set to false to demonstrate else block

   // ignore: dead_code
   if (isLoggedIn && hasSession) {
     print("User is logged in and has a session.");
  } else {
     print("User not logged in.");
}
}
