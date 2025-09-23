void main() async{
    print("Buy snacks");
    print("Buy water and juice");
    print("Buy new phone");
    print("Buy gas");

    await orderCoffee();// I will get my ordered coffee right after all the other tasks are completed
    print("Buy a new couch");
    print("Go to party");
    print("Help to prepare for the party");

}
Future<void> orderCoffee() async{
    print("Order Coffee");
    print("Pay for coffee");
    print("Wait for coffee to be prepared");//
    await Future.delayed(Duration(seconds: 5));
    print("Get ordered coffee");
}