void main(){
  runAsynchronously();
  print("Main flow");

  var x = 1;
  while(x <= 10){
    print(x);
    x++;
  }

  print("Still on the main flow");
}

Future<void> runAsynchronously()async {
  print("In async functions");

 await Future.delayed(Duration(seconds: 10));
  
  var x = 1;
  while(x <= 10){
    print("async loop"+x.toString());
    x++;
  }
}
 