String longestUniqueSubstring(String str) {
  String longest = "";
  String current = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    int indexOfChar = current.indexOf(char);

    if (indexOfChar != -1) {
      current = current.substring(indexOfChar + 1);
    }

    current += char;

    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}