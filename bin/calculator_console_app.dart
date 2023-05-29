import 'dart:io';


void main(List<String> arguments) {

  void getOperation(double firstNumber, double secondNumber) {
    stdout.write(
        'For\naddition press(+), subtraction press(-), multiplication press(*), division press(/) : ');
    var operation = stdin.readLineSync();
    double result = 0.0;
    if(operation == '+'){
      result = firstNumber + secondNumber;
      print("Your result is $result");
    } else if(operation == '-'){
      result = firstNumber - secondNumber;
      print("Your result is $result");
    } else if(operation == '*'){
      result = firstNumber * secondNumber;
      print("Your result is $result");
    } else if(operation == '/'){
      result = firstNumber / secondNumber;
      print("Your result is $result");
    } else {
      print('Press valid operation!');
      getOperation(firstNumber, secondNumber);
    }
  }

  void getSecondNumber(double firstNumber) {
    stdout.write('Second number : ');
    var secondNumber = stdin.readLineSync();
    var parsedSecondNumber = (double.tryParse(secondNumber ?? '0') ?? ' ');
    if (parsedSecondNumber.runtimeType != double) {
      print('sorry! your input is not a number! please enter a number');
      getSecondNumber(firstNumber);
    } else {
      getOperation(firstNumber, double.parse(secondNumber!));
    }
  }

  void getFirstNumber() {
    stdout.write('First number : ');
    var firstNumber = stdin.readLineSync();
    var parsedFirstNumber = (double.tryParse(firstNumber ?? '0') ?? ' ');
    if (parsedFirstNumber.runtimeType != double) {
      print('sorry! your input is not a number! please enter a number');
      getFirstNumber();
    } else {
      getSecondNumber(double.parse(firstNumber!));
    }
  }

  // call getFirst number
  getFirstNumber();

}
