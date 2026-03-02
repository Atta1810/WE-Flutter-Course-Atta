import 'dart:io';

void main() {
  List<int> mylist = [];
  String opt = "Y";
  while (opt.toUpperCase() == "Y") {
    print("--- Select an option ---");
    print("1. Add value");
    print("2. Remove value");
    print("3. Update value");
    print("4. Show value");
    print("5. Search value");
    int o = int.parse(stdin.readLineSync()!);
    if(mylist.length==0&& o!=1){
      print("you must enter a value the list is empty");
    }else if (o == 1) {
      print("Enter the value you want to insert:");
      int v = int.parse(stdin.readLineSync()!);
      print("Enter the index first element index must be 0):");
      int ind = int.parse(stdin.readLineSync()!);
      if (ind > mylist.length || ind < 0) {
        print("Invalid index Current size is ${mylist.length}");
      }
      else if(ind < mylist.length){
        print("this index is already taken");
      }else {
        mylist.insert(ind, v);
        print("Value added successfully!");
      }
    }
    else if(o==2){
      print("Do You Want To Remove By 1-Value or 2-Index(choose 1or2):");
      int r=int.parse(stdin.readLineSync()!);
      if(r==1){
        print("enter the value you want to delete(must be in the list)");
        int s=int.parse(stdin.readLineSync()!);
        mylist.indexOf(s);
        if(mylist.indexOf(s)==-1){
          print("the element is not in the list ");
        }
        else{
          mylist.remove(s);
          print("done of deleting the element");
        }
      }else{
        print("enter the index of the element you want to remove");
        int y=int.parse(stdin.readLineSync()!);
        mylist.removeAt(y);
        if(y >= 0 && y < mylist.length){
          print("Deleted the element ");
        }else{
          print("enter a valid index");
        }
      }

    }else if(o==3){
      print("please enter the old value");
      int old=int.parse(stdin.readLineSync()!);
      mylist.indexOf(old);
      int ind=mylist.indexOf(old);
      if(mylist.indexOf(old)==-1){
        print("the element is not in the list ");
      }else{
        print("enter the new value");
        int neww=int.parse(stdin.readLineSync()!);
        mylist[ind]=neww;
        print("added successfully");
      }
    }else if(o==4){
      print("your list =$mylist ");
    }else if(o==5){
      print("enter the value you want to search");
      int s=int.parse(stdin.readLineSync()!);
      mylist.indexOf(s);
      if(mylist.indexOf(s)==-1){
        print("not found ");
      }else{
        print("found want to see the index? (1/0)");
        int show=int.parse(stdin.readLineSync()!);
        if(show==1){
          int f= mylist.indexOf(s);
          print("the index is$f");
        }
      }
    }

    print("Do you want to perform another operation? (Y/N)");
    opt = stdin.readLineSync()!;
  }

  print("thanks for testing with us ");
}