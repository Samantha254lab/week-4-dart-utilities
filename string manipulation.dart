import 'dart:io';

void main() {
  // String manipulation
  String name = "Alice";
  String greeting = "Hello, $name!"; // String interpolation
  print(greeting);

  String reversedName = name.split('').reversed.join('');
  print("Reversed name: $reversedName");

  String substring = name.substring(1, 3); // Extract "li"
  print("Substring: $substring");

  String uppercaseName = name.toUpperCase();
  String lowercaseName = name.toLowerCase();
  print("Uppercase: $uppercaseName");
  print("Lowercase: $lowercaseName");

  int nameLength = name.length;
  print("Length: $nameLength");

  // Collections (Lists, Sets, Maps)
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.remove(3);
  print(numbers);

  Set<String> fruits = {"apple", "banana", "orange"};
  fruits.add("grape");
  fruits.remove("banana");
  print(fruits);

  Map<String, int> ages = {"Alice": 30, "Bob": 25};
  ages["Charlie"] = 35;
  ages.remove("Bob");
  print(ages);

  // File handling
  try {
    File inputFile = File('input.txt');
    String content = inputFile.readAsStringSync();
    print(content);

    File outputFile = File('output.txt');
    outputFile.writeAsStringSync("New content");
  } catch (e) {
    print("Error: $e");
  }

  // Date and time
  DateTime now = DateTime.now();
  print(now);

  DateTime formattedDate = now.toLocal().toString();
  print("Formatted date: $formattedDate");

  DateTime parsedDate = DateTime.parse("2024-09-13T12:34:56Z");
  print("Parsed date: $parsedDate");

  Duration difference = now.difference(parsedDate);
  print("Difference: ${difference.inDays} days");

  // User input
  print("Enter a string:");
  String userInput = stdin.readLineSync()!;

  // String manipulation
  String reversed = userInput.split('').reversed.join('');
  int length = userInput.length;

  // Store in a list
  List<String> results = [userInput, reversed, length.toString()];

  // Save to a file
  outputFile.writeAsStringSync(results.join("\n"));

  // Log entry
  String logEntry = "Entry made at: ${now.toLocal().toString()}";
  outputFile.writeAsStringSync("\n$logEntry");
}