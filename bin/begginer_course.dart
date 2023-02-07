import 'dart:io';
import 'dart:collection';

//Enum
enum colors { red, green, blue }

void main(List<String> arguments) {
  stdout.write('What is your name?\r\n');
  String name = stdin.readLineSync()!;

  name.isEmpty
      ? stderr.write('Name cannot find')
      : stdout.write('Hello $name\r\n');
  // name.isEmpty ? stderr.write('Name cannot find') : print('Hello $name\r\n');

  print(colors.values);
  print(colors.red);

//list
  List test = [1, 2, 3, 4];
  print(test.length);
  print(test[0]); //list

  List things = [];
  things.add(1);
  things.add('cat');
  things.add(true);
  print(things);

//set
  Set<int> numbers = {};
  numbers.add(1);
  numbers.add(2);
  numbers.add(1);
  print(numbers);

//queue
  Queue items = Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  items.removeFirst();
  items.removeLast();
  print(items);

//map = Key value pair
  Map people = {'dad': 'Bryan', 'son': 'Chris', 'mom': 'Heather'};
  print(people);
  print(people.keys);

  print('Dad is ${people["dad"]}');

  Map<String, String> p = {};
  p.putIfAbsent('dad', () => 'bryan');
  print(p);

  //Assert
  print('starting');
  int a = 15;
  assert(a == 43);
  print('finished');

  int age = 2;

  if (age == 43) print('You are 43 years old');
  if (age != 43) print('You are not 43 years old');

  if (age < 18) {
    print('You are a minor');
    if (age < 10) print('You are not a even a teenager');
  }
  if (age > 65) {
    print('You are a senior');
    if (age > 102) print('You are lucky to be alive');
  }
  if (age == 21) {
    print('This is your special year');
  } else {
    print('This is just a normal year');
    if (age < 21) {
      print('You are a minor');
    } else {
      print('You are an adult');
    }
  }

  int ages = 34;

  switch (ages) {
    case 18:
      print('you can vote');
      break;
    case 65:
      print('you can retire');
      break;
    default:
      print('Nothing special');
  }
  print('hello');

//loop
  int value;
  int init = 1;
  int max = 5;

  value = init;

  do {
    print(value);
    value++;
  } while (value <= max);
  print('finished');

  value = init;

  while (value <= max) {
    print(value);
    value++;
  }
  print('finished');

//foreach

  List cols = ['red', 'pink', 'blue'];

  for (int i = 0; i < cols.length; i++) {
    print(' Color at $i is ${cols[i]}');
  }

  cols.forEach((c) => {print(c)});

  print('Your age in Dog years is ${dogYears(43)}');

  sayHello('Yuuk');

  int footage = squartFeet(length: 10, width: 5);
  print(footage);

  const listOfNumbers = ["1", "2", "3"];

  var li = listOfNumbers.map((l) {
    return 'number $l';
  }).toList();

  print(li);

//try chatch finally
  try {
    int ag;
    int catYears = 5;
    print(age * catYears);
  } catch (error) {
    print("There was an error: ${error.toString()}");
  } finally {
    print('complete');
  }
}

//function
int dogYears(int age) {
  return age * 7;
}

void sayHello([String name = '']) {
  if (name.isNotEmpty) name = name.padLeft(name.length + 1);
  print('Hello $name');
}

int squartFeet({required int width, required int length}) {
  return width * length;
}

// const test = ["1", "2", "3"];

int pi(String str) {
  return int.parse(str);
}
