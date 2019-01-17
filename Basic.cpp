/*
 * File: Basic.cpp
 * ---------------
 * Name: Ruihang Lai
 * This file is the starter project for the BASIC interpreter from
 */

#include <cctype>
#include <iostream>
#include <string>
#include "exp.h"
#include "parser.h"
#include "program.h"
#include "../StanfordCPPLib/error.h"
#include "../StanfordCPPLib/tokenscanner.h"

#include "../StanfordCPPLib/simpio.h"
#include "../StanfordCPPLib/strlib.h"
using namespace std;

/* Function prototypes */

void processLine(string line, Program & program, EvalState & state);

inline bool isDigit(char ch) {
    return ch >= '0' && ch <= '9';
}

int check_type(string str) {
    for (size_t i = 0; i < str.length(); i++)
        if (!isDigit(str[i]))
            return 0;
    return 1;
}

/* Main program */

int main() {
    EvalState state;
    Program program;
    cout << "Stub implementation of BASIC" << endl;
    while (true) {
        try {
            processLine(getLine(), program, state);
        } catch (ErrorException & ex) {
            if (ex.getMessage() == "QUIT")
                break;
            cout << "Error: " << ex.getMessage() << endl;
        }
    }
    return 0;
}

/*
 * Function: processLine
 * Usage: processLine(line, program, state);
 * -----------------------------------------
 * Processes a single line entered by the user.  In this version,
 * the implementation does exactly what the interpreter program
 * does in Chapter 19: read a line, parse it as an expression,
 * and then print the result.  In your implementation, you will
 * need to replace this method with one that can respond correctly
 * when the user enters a program line (which begins with a number)
 * or one of the BASIC commands, such as LIST or RUN.
 */

void processLine(string line, Program &program, EvalState &state) {
   TokenScanner scanner;
   scanner.ignoreWhitespace();
   scanner.scanNumbers();
   scanner.setInput(line);

   string str = scanner.nextToken();
   int line_number;

   if (check_type(str) == 1) {
       if (str == "LET") {
           LET let(line);
           if (let.validator != 1)
               cout << "SYNTAX ERROR" << endl;
           else
               let.execute(state);
       } else if (str == "PRINT") {
           
       } else if (str == "INPUT") {

       } else if (str == "RUN") {

       } else if (str == "LIST") {

       } else if (str == "CLEAR") {

       } else if (str == "QUIT") {

       } else if (str == "HELP")
           cout << "What help do you need?" << endl;
       else {
           cout << "SYNTAX ERROR" << endl;
           return;
       }
   } else { // line_number
       line_number = stringToInteger(str);
       program.addSourceLine(line_number, line);
   }
}
