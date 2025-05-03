void main(){
// Q.1) Create a list of names and print all names using list.

List names = ["Areeba","Alina","Zahra","Maria"];
print(names);

// Q. 2) Create a list of Days and print only  Sunday

List days =["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
print(days.last);

// Q. 3)  create a list  of name, class, roll no, grade, percentage. And print. 

List student = ["Hiba", "9th" , 135 , "A" , 83.5];
print("Student Information:");
print("Name: ${student[0]}");
print("Class: ${student[1]}");
print("Roll No: ${student[2]}");
print("Grade: ${student[3]}");
print("Percentage: ${student[4]}");

// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

List <int> numbers = [6,3,8,20,15];
print("List of numbers: $numbers");
numbers.sort();
print("Smallest number from a list is: ${numbers.first}");
print("Greatest number from a list is: ${numbers.last}");


// Q.5: Given a list of integers, write a dart code that returns the maximum value from the list.

List <int> integers = [9,43,65,35,2];
print("List of integers: $integers");
integers.sort();
print("Maximum value from a list is: ${integers.last}");


/* Q.6: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. 
The original list should remain unchanged. */

List <String> stdNames = ["Barira","Rahila","Yusra","Tooba"];

print("Original List: $stdNames");
var reverse_stdNames = List.of(stdNames.reversed);
print("New List: $reverse_stdNames");

/* Q.7: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. 
The program should take in the original list as a parameter and print a new list containing only the positive numbers. */

List <int> number = [0,4,-1,-15,86,23,-30,92];

print("Original List: $number");
var newList = List.of(number.where((element) => element >= 0));
print("New List: $newList");


/* Q.8: remove all false values from below list by using removeWhere or retainWhere property.
 List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom']; */

 List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
usersEligibility.removeWhere((e) => e != "eligible");
print(usersEligibility);

/* Q.9: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true.
Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".*/

Map car ={
  "brand" : "Toyota", 
  "color" : "Red", 
  "isSedan" : true,
};

if (car["isSedan"] == true && car["color"]== "red"){
  print("Match");
}
else{
  print("No match");
}

/*  Q.10: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin.
 If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".*/

Map user ={
 "name" : "Rabia" , 
 "isAdmin": true,
 "isActive" : true,
};

if (user["isAdmin"] == true && user["isActive"] == true){
  print("Active admin");
}
else{
  print("Not an Active admin");
}

// Self Task to perfom 10 list method
List list1 = [2];
list1.add(5);
list1.addAll([9,14,76,65]);
list1.insert(2,27);
list1.insertAll(0, [1,25,50,30]);
print(list1);
list1.remove(1);
list1.removeLast();
list1.removeAt(3);
print(list1.contains(30));
print("Length of List: ${list1.length}");
list1.sort();
print(list1);

}