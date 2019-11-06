import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("Test Case 1",(){
    expect(sortDigit([88, 43, 256, 1245,8,4356]), [1245, 4356,256,43,88,8]);
  });
  test("Test Case 2",(){
    expect(isValidIP("1.2.3.4"), true);
  });
  test("Test Case 3", (){
    expect(doubleSwap("aabbccc", "a", "b"), "bbaaccc");
  });
}