
void main (){
// q2 by ((( chatGPT ))) 

bool hasAllLetters(String str) {
  // Convert the string to lowercase to ensure case insensitivity
  str = str.toLowerCase();

  // Create a set to track the unique letters found in the string
  Set<String> lettersFound = {};

  // Loop through each character in the string
  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // Check if the character is an English letter
    if (char >= 'a' && char <= 'z') {
      lettersFound.add(char);
    }
  }

  // Check if the set has all 26 English letters
  return lettersFound.length == 26;
}

void main() {
  print(hasAllLetters("The quick brown fox jumps over a lazy dog")); // true
  print(hasAllLetters("Hello World")); // false
}
// q3
String adjustCase(String str) {
  // Variables to count the number of uppercase and lowercase letters
  int upperCount = 0;
  int lowerCount = 0;

  // Loop through each character in the string
  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // Check if the character is uppercase (using ASCII values)
    if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
      upperCount++;
    }
    // Check if the character is lowercase (using ASCII values)
    else if (char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) {
      lowerCount++;
    }
  }

  // Determine the transformation based on the counts
  if (upperCount > lowerCount) {
    return str.toUpperCase(); // More uppercase letters, convert to uppercase
  } else if (lowerCount > upperCount) {
    return str.toLowerCase(); // More lowercase letters, convert to lowercase
  } else {
    return str.toLowerCase(); // Equal number of uppercase and lowercase, convert to lowercase
  }
}

void main() {
  print(adjustCase("Hello World")); // hello world (equal case count)
  print(adjustCase("HELLO world")); // HELLO WORLD (more upper case)
  print(adjustCase("hello WORLD")); // hello world (more lower case)
}
// q4
void countLetterOccurrences(String str) {
  // Create an empty map to store the occurrences of each letter
  Map<String, int> letterCount = {};

  // Loop through each character in the string
  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // Only count letters (ignore non-letter characters)
    if (char.toLowerCase() != char.toUpperCase()) {
      // Convert to lowercase to make the count case-insensitive
      char = char.toLowerCase();

      // If the character is already in the map, increment its count
      if (letterCount.containsKey(char)) {
        letterCount[char] = letterCount[char]! + 1;
      } else {
        // Otherwise, add the character to the map with a count of 1
        letterCount[char] = 1;
      }
    }
  }

  // Print the map of letter counts
  print(letterCount);
}

void main() {
  countLetterOccurrences("Hello World"); // Example string
}

}