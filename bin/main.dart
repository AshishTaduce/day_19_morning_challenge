// Challenge 1
// Write failing test cases for given 3 challenges

// Challenge 2
// Sort by Digit Length, then By Number Itself
// Write a function that sorts an array of integers by their digit length in
// descending order, then settles ties by sorting numbers with the same digit length in ascending order.
List sortDigit(List<int> numbersList) {
  numbersList.sort((a, b) => (a.toString().length == b.toString().length)
      ? (a.compareTo(b))
      : b.toString().length.compareTo(a.toString().length));
  return numbersList;
}
// Challenge 3
// IPv4 Validation
// Create a function that takes a string (IPv4 address in standard dot-decimal
// format) and returns true if the IP is valid or false if it's not.
// isValidIP("1.2.3.4") ➞ true
// isValidIP("1.2.3") ➞ false
// isValidIP("123.045.067.089") ➞ false
bool isValidIP(String ip){
  List check = ip.split('.');
  int count = 0;
  int temp;
  for (var x in check){
    temp = int.parse("$x");
    if (int.parse(x) == 0){
      if (int.parse(x) < 255 && int.parse(x) > 0){
        count++;
      }
    }
    else if (int.parse(x) < 255 && int.parse(x) > 0){
      count++;
    }
    List y = temp.toString().split('');
    if (int.parse(x[0]) == 0){
      return false;
    }

  }
  return (count == 4);
}
// Challenge 4
// Double Character Swap
// Write a function to replace all instances of character c1 with character c2 and vice versa.
// Examples
// doubleSwap( "aabbccc", "a", "b") ➞ "bbaaccc"
String doubleSwap(String first, String second, String third){
  List temp = first.split("");
  List emptyList = [];
  for(int i = 0; i< temp.length; i++) {
    if (temp[i] == second) {
      emptyList.add(third);
    }
    else if (temp[i] == third) {
      emptyList.add(second);
    }
  }

  for(int i = 0; i< temp.length;i++) {
    if(temp[i] != second && temp[i] != third){
      emptyList.add(temp[i]);
    }
  }

  String newString = emptyList.join("");
  return newString;


}

main() {
  print(sortDigit([88, 43, 256, 1245,8,4356]));
  print(isValidIP("1.2.3.4"));
  print(isValidIP("1.02.3.2"));
  print(doubleSwap( "aabbccc", "a", "b"));
}
