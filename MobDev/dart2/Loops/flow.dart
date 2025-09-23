void main(){
  //ternar operator
  var saving = 300;
  saving > 800 ? print("You, were almost getting to your target") : print("Seems like you need to take your saving game more seriously\n"); 

  //if else
  dynamic studentStatus = 40;
  var grade = "40";
  int gradeInt = int.parse(grade);

  if (gradeInt < 40) {
    print("Student has failed");
  }
  else if(gradeInt == 40){
    print("Pass, your grade is D");
  }
  else if(gradeInt >40 && gradeInt <= 60){
    print("C , youre graduating with a second class lower");
  }
  else if(gradeInt > 60 && gradeInt >=70){
    print("B, your graduating with a second class upper");
  }
  else if(gradeInt >70){
    print("A, Congratulations your graduating with a first class");
  }
  else{
    print("Enter a valid input for instance $studentStatus");
  }
var status;
switch(status) {
  case "Not loaded":
   print("Not yet uploaded");
  break;
  case "Uploading":
   print("Your up is still loading");
  break;
  case "Loaded":
   print("Your app has succesfully loaded");
  break;
  default:
   print("Download Failed, check your internet conection");

};
status = "Not Loaded";
  
}