/*
 * File: statement.cpp
 * -------------------
 * This file implements the constructor and destructor for
 * the Statement class itself.  Your implementation must do
 * the same for the subclasses you define for each of the
 * BASIC statements.
 */

#include <string>
#include "parser.h"
#include "statement.h"
#include "evalstate.h"
#include "../StanfordCPPLib/tokenscanner.h"
#include "../StanfordCPPLib/error.h"

using namespace std;

/* Implementation of the Statement class */

Statement::Statement() : validator(0) {
   /* Empty */
}

Statement::~Statement() = default;

void Statement::set_valid(int val) {
    validator = val;
}

LET::LET() : exp(nullptr) {
    /* Empty */
}

LET::LET(string line) {
    line = line.substr(line.find("LET"));
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    scanner.nextToken();
    var = scanner.nextToken();

    if (scanner.nextToken() != "=") {
        set_valid(1);
        return;
    }
    exp = parseExp(scanner);
}

LET::~LET() {
    delete exp;
}

void LET::execute(EvalState &state) {
    state.setValue(var, exp->eval(state));
}

//PRINT
PRINT::PRINT() : exp(nullptr) {
    /* Empty */
}

PRINT::PRINT(string line) {
    line = line.substr(line.find("PRINT"));

    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    exp = parseExp(scanner);
}

PRINT::~PRINT() {
    delete exp;
}

void PRINT::execute(EvalState &state) {
    std::cout << exp->eval(state) << std::endl;
}

//INPUT
INPUT::INPUT() = default;

INPUT::INPUT(string line) {
    line = line.substr(line.find("INPUT"));
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    var = scanner.nextToken();
}

INPUT::~INPUT() = default;

void INPUT::execute(EvalState &state) {
    int val;
    string str;
    while (true) {
        std::cout << '?';
        std::cin >> str;
        try {
            val = stringToInteger(str);
        } catch (ErrorException &ex) {
            error("INVALID NUMBER");
            continue;
        }
        state.setValue(var, val);
        break;
    }
}

//GOTO
GOTO::GOTO() : line_number(-1) {
    /* Empty */
}

GOTO::GOTO(string line) {
    line = line.substr(line.find("GOTO"));
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    try {
        line_number = stringToInteger(scanner.nextToken());
    } catch (ErrorException &ex) {
        set_valid(1);
    }
}

GOTO::~GOTO() = default;

void GOTO::execute(EvalState &state) {
    /* Empty */
}

//IF
IF::IF() : line_number(-1) {
    /* Empty */
}

IF::IF(std::string line) : line_number(-1) {
    line = line.substr(line.find("IF"));

    if (line.find("THEN") == string::npos || line[2] != ' ') {
        set_valid(1);
        return;
    }
    int then_pos = line.find("THEN");

    string str_exp1, str_exp2;

    string opt_str;
    if (line.find("<") != string::npos)
        opt_str = "<", op = -1;
    else if (line.find("=") != string::npos)
        opt_str = "=", op = 0;
    else if (line.find(">") != string::npos)
        opt_str = ">", op = 1;
    else {
        set_valid(1);
        return;
    }
    str_exp1 = line.substr(3, line.find(opt_str) - 3);
    str_exp2 = line.substr(line.find(opt_str) + 1, then_pos - line.find(opt_str));

    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();

    scanner.setInput(str_exp1);
    exp1 = parseExp(scanner);

    scanner.setInput(str_exp2);
    exp2 = parseExp(scanner);

    line = line.substr(then_pos);
    scanner.setInput(line);
    scanner.nextToken();

    try {
        if_number = stringToInteger(scanner.nextToken());
    } catch (ErrorException &ex) {
        set_valid(1);
    }
}

IF::~IF() {
    delete exp1;
    delete exp2;
}

void IF::execute(EvalState &state) {
    int val1 = exp1->eval(state), val2 = exp2->eval(state);
    if ((op == -1 && val1 < val2) || (op == 0 && val1 == val2) || (op == 1 && val1 > val2))
        line_number = if_number;
}