# palindrome
Stacks are great at matching up pairs of elements.  A palindrome is a string that reads the same backwards as forwards.  For example "A man, a plan, a canal - Panama" if you ignore case and punctuation.

For this learning activity we want you to determine if a string is a palindrome.

## First design the application
You could look at the first character and compare it to the last character and then move in on each end comparing characters.  This approach could work, but might be complex when you get to the middle character.

Lets try pushing the whole string onto the stack and then popping it off one character at a time and comparing it to the original 
