# Author: Viraj R Chitnis
# Date: 05/12/18
# Copyright (c) 2018 Viraj Chitnis. All Rights Reserved.

# set the compiler and compiler flags
CXX=g++
CXXFLAGS=-Wall -pedantic -g -std=c++17
CC=$(CXX)
CFLAGS=$(CXXFLAGS)
EXECUTABLE=vigenere-cracker

# Compile the entire project
all: $(EXECUTABLE)

# Compile and run the entire project
run: all
	./$(EXECUTABLE)

$(EXECUTABLE): vigenere-cracker.o
	$(CC) $(CFLAGS) -o $(EXECUTABLE) vigenere-cracker.o

vigenere-cracker.o: vigenere-cracker.cpp
	$(CC) $(CFLAGS) -c vigenere-cracker.cpp
