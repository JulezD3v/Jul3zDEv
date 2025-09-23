import 'dart:math';
/* You are required to print a message 
Eg "User102 has a score of 50"
for each user id coming from the fetchUserIds function*/
void main()async{
  printSummaries();

  
}

// The only function you are to work on
Future<void> printSummaries() async {
  List<int> userIds = await fetchUserIds();

  for (int userId in userIds) {
    String username = getUsername(userId);         
    int score = await fetchUserScore(userId);       
    print("$username has a score of $score");   
  }
}

// an asynchronous function which returns a list of ids
Future<List<int>> fetchUserIds()async{
  await Future.delayed(Duration(seconds: 2));

  return [101, 102, 103];
}

// A synchronous function which return user name
String getUsername(int userId) {
  return "User$userId";
}

// Async function that simulates fetching a score for a user
Future<int> fetchUserScore(int userId)async{
  await Future.delayed(Duration(milliseconds: 500));

  return Random().nextInt(100);
}
 