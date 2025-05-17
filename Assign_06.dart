import 'dart:io';
import 'dart:math';
void main(){
// Q1. Write a Dart program that counts the number of digits in a given number using a while loop.

  stdout.write("Enter a number to count its digits: ");
  int num1 = int.parse(stdin.readLineSync()!);
  int count = 0;

  if (num1 == 0) {
    count = 1;
  } else {
    while (num1 != 0) {
      num1 = num1 ~/ 10;
      count++;
    }
  }

print("Number of digits in a given number: $count");


// Q2. Implement Dart code to generate a random password of a given length using a while loop.

stdout.write("Enter password length to generate random password: ");
  int passwordLength = int.parse(stdin.readLineSync()!);
  const String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+=<>?';
  Random random = Random();
  String password = '';
  int i = 0;

  while (i < passwordLength) {
    int index = random.nextInt(chars.length);
    password += chars[index];
    i++;
  }

  print('Generated Password: $password');


// Q3. Create a Dart program that checks if a given string is empty or not using if-else statements.
stdout.write("Enter a string: ");
String text = stdin.readLineSync()!;

if(text.isEmpty){
  print("Given string is emplty.");
}
else{
  print("Given string is not empty.");
}
                                               // OR

// Q3.Implement Dart code to print the multiplication table of a given number using a while loop.
stdout.write("Enter a number to print its multiplication  table: ");
int num2 = int.parse(stdin.readLineSync()!);
print("Multiplication table of $num2");
int a =1 ;
while(a<=10){
  print("$num2 x $a = ${num2*a}");
  a++;
}

// Q4. Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop.
int sumOddNum = 0;
int c = 1;

do{
  if(c % 2 != 0){
    sumOddNum = sumOddNum + c;
  }
  c++;
}while(c<=50);

print("Sum of odd numbers from 1 to 50: $sumOddNum");

// Q5. Create a Dart program that checks if a given number is positive, negative, or zero using if-else statements.
stdout.write("Enter a number to check if it is positive, negative or zero: ");
int num3 = int.parse(stdin.readLineSync()!);

if(num3>0){
  print("$num3 : This is positive number.");
}
else if (num3<0){
  print("$num3 : This is negative number.");
}
else{
  print("$num3 : This is zero.");
}
// Q6. Write a Dart program to calculate the factorial of a given number using a while loop.

stdout.write("Enter a number to calculate its factorial: ");
int num4 = int.parse(stdin.readLineSync()!);

int d = 1;
int factorial = 1;

while(d<=num4){
  factorial = factorial*d;
  d++;
}
print("Factorial of a $num4 is: $factorial");

// Q7. Create a Dart program that prints the first 10 prime numbers using a for loop.

  int primeNumCount = 0;      // Counts how many prime numbers we have found
  int primeNumber = 2;     // Start from 2, the first prime number

  print("First 10 prime numbers are:");
  while (primeNumCount < 10) {
    bool isPrime = true;
    int i = 2;

    // Check if the current number is prime
    while (i <= primeNumber ~/ 2) {
      if (primeNumber % i == 0) {
        isPrime = false;
        break;
      }
      i++;
    }

    // If it's a prime number
    if (isPrime) {
      print(primeNumber);
      primeNumCount++;
    }

    primeNumber++; 
  }

// Q8. Implement Dart code to print the first 10 natural numbers in reverse order using a while loop.

int n = 10;
print("First 10 natural numbers in reverse order:");
while(n >= 1){
  print(n);
  n--;
}

// Q9. Implement Dart code to print the squares of numbers from 1 to 5 using a do-while loop.
int b = 1;
print("Square of numbers from 1 to 5:");
do{
  int numb = b*b;
  print("Square of $b is $numb");
  b++;
}while(b<=5);

// Q10. Create Dart code to calculate the average of numbers in a list using a do-while loop.

List <int> numbList = [45,65,28,58,36,10];
int j = 0;
int sum = 0;

if (numbList.isNotEmpty) {
    do {
      sum = sum + numbList[j];
      j++;
    } while (j < numbList.length);

    double avgOfNum = sum / numbList.length;
    print("Average of numbers: $avgOfNum");
  } else {
    print("The list is empty.");
  }

// Q11. Write a Dart program to find the largest digit of a given number using a do-while loop.

  stdout.write("Enter a number to find its largest digit: ");
  int number = int.parse(stdin.readLineSync()!);
  int largestDigit = 0;

  do {
    int digit = number % 10; // Get the last digit
    if (digit > largestDigit) {
      largestDigit = digit;
    }
    number = number ~/ 10; // Remove the last digit (integer division)
  } while (number > 0);

  print("Largest Digit in a given number is: $largestDigit");


// Q12. Write a Dart program to print even numbers from 1 to 20 using a do-while loop

  int evenNum = 1;
  print("Even numbers from 1 to 20:");
  do {
    if (evenNum % 2 == 0) {
      print(evenNum);
    }
    evenNum++;
  } while (evenNum <= 20);


/* Q13. Write a program that prints the Fibonacci sequence up to a given number using a for loop.

Example:
Input:
10

Output:
0 1 1 2 3 5 8
*/

  int maxValue = 10;
  int previousNumber = 0;
  int currentNumber = 1;
  print("Fibonacci sequence:");
  print(previousNumber); // Print the first number

  for (int i = 1; currentNumber <= maxValue; i++) {
    print(currentNumber);
    int fibonacciNumber = previousNumber + currentNumber;
    previousNumber = currentNumber;
    currentNumber = fibonacciNumber;
  }

/* Q14.  Implement a code that finds the
largest element in a list using a for loop.

Example:
Input:
[3, 9, 1, 6, 4, 2, 8, 5, 7]

Output:
Largest element: 9
*/

List numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7];
int largestNum = numbers[0];
for(var i = 1; i<numbers.length; i++){
  if(numbers[i]>largestNum){
    largestNum = numbers[i];
  }
}
print("Largest element: $largestNum");

/* Q15. Write a program that prints the
multiplication table of a given number using a for loop.

Example: Input: 5

Output:
5 x 1= 5
5 x 2= 10
5 x 3= 15
...
...
...
5 x 10 = 50
*/
int numb = 5;
for(var i=1; i<=10; i++){
 print("$numb x $i = ${numb*i}");
}


/* Q16. Implement a function that checks if a given string is a
palindrome.

Example:

Input:
"radar"

Output:
"radar" is a palindrome.
*/

  String text1 = "radar";

  bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

  if (isPalindrome(text1)) {
    print('"$text1" is a palindrome.');
  } else {
    print('"$text1" is not a palindrome.');
  }

/* Q17. Write a program to make such a
pattern like a right angle triangle with a number which will repeat a number in
a row. The pattern like :

 1

 22

 333

 4444

 */

for(var i=1; i<5; i++){
  String row = '';
  for(var j=1; j<=i;j++){
    row = row + "$i";
  }
  print(row);
}

// Q18. Write a program that takes a list of numbers as input and prints the numbers greater than 5 using a for loop and if-else condition.
List nums =[1,6,9,4,2,8,3,7];
print("Numbers greater than 5:");
for(var i = 0; i<nums.length ; i++){
  if(nums[i]>5){
    print(nums[i]);
  }
}

// Q19.  Write a program that counts the number of vowels in a given string using a for loop and if-else condition.

stdout.write("Enter string to count number of vowels: ");
String string = stdin.readLineSync()!;
int vowelsCount = 0;
for(var i = 0; i < string.length; i++){
  String char = string[i].toLowerCase();
    if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u") {
      vowelsCount++;
    }
}
print("Number of vowels in a given string: $vowelsCount");

}