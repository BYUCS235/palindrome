# palindrome
Stacks are great at matching up pairs of elements.  A palindrome is a string that reads the same backwards as forwards.  For example "A man, a plan, a canal - Panama" if you ignore case and punctuation.

FFor this learning activity we will practice using stacks by determining whether a string is a palindrome. The code you generate for this exercise will be very similar to the code you will need in Lab 2 to determine if parentheses are matched, so use this as an opportunity to practice these concepts.

## First design the application
You could look at the first character and compare it to the last character and then move in on each end comparing characters.  This approach could work, but might be complex when you get to the middle character.

Lets try pushing the whole string onto the stack and then popping it off one character at a time and comparing it to the original.  First start with a program that includes the stack container.
```c++
#include <iostream>
#include <string>
#include <stack>
using namespace std;
int main()
{
    string trypal("this is a palap a si siht");
    
}
```
The first step will be to read all of the characters from the string and push them onto the stack.
```c++
    stack<char> mychars;
    for(int i = 0; i < trypal.length(); i++) {
        mychars.push(trypal[i]);
    }
```
Remember that the top() function retrieves the element from the top of the stack, and pop() removes it from the stack.  So, we can pop one character at a time from the top of the stack and compare it with the next character in the string.
```c++
    bool ispal = true;
    for(int i = 0; i < trypal.length(); i++) {
        char next = mychars.top();
        mychars.pop();
        cout << "Comparing "<<trypal[i]<<" "<<next<<endl;
        if(trypal[i] != next) {
            cout << "Not a Palindrome"<<endl;
            ispal = false;
            break;
        }
    }
    if(ispal) {
        cout << "Is a Palindrome";
    }
```
The above code uses the Last In First Out (LIFO) nature of stacks to compare the beginning of the string to the end in reverse order, allowing us to detect palindromes!

Note: If we were trying to deal with palindromes where punctuation or case didn't matter, then we would want to delete punctuation and change all case to upper case (for example) before running this code.
