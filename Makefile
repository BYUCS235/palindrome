CFLAGS=-std=c++11 -g

all: palindrome

palindrome: palindrome.cpp 
	g++ $(CFLAGS) palindrome.cpp -o palindrome