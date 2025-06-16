import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = "none";
  int n = s.length;

  // Generate all substrings by iterating through start and end points.
  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      String sub = s.substring(i, j + 1);

      // A palindrome must be at least 3 characters long.
      if (sub.length >= 3) {
        // Check if the substring is a palindrome.
        if (isPalindrome(sub)) {
          // If it's the first valid palindrome or longer than the current longest.
          if (longest == "none" || sub.length > longest.length) {
            longest = sub;
          }
        }
      }
    }
  }

  return longest;
}