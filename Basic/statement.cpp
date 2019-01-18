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

int getInteger() {
    int value;
    string line;
    while (true) {
        getline(cin, line);
        istringstream stream(line);
        stream >> value >> ws;
        if (!stream.fail() && stream.eof()) break;
        //cout << "Illegal integer format. Try again." << endl;
        cout << "INVALID NUMBER" << endl << " ? ";
        //if (prompt == "") prompt = "Enter an integer: ";
    }
    return value;
}

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

LET::LET(string line) : exp(nullptr) {
    line = line.substr(line.find("LET"));
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    scanner.nextToken();
    var = scanner.nextToken();
    if (var == "REM" || var == "LET" || var == "PRINT" || var == "INPUT" || var == "END" || var == "GOTO" || var == "IF" || var == "THEN" || var == "RUN" || var == "LIST" || var == "CLEAR" || var == "QUIT" || var == "HELP" || !((var[0] >= 'A' && var[0] <= 'Z') || (var[0] >= 'a' && var[0] <= 'z'))) {
        set_valid(1);
        return;
    }
//cout << "var = " << var << endl;

    if (scanner.nextToken() != "=") {
        //cout << "oops" << endl;
        set_valid(1);
        return;
    }
    exp = parseExp(scanner);
}

LET::~LET() {
    delete exp;
}

void LET::execute(EvalState &state) {
    try {
        state.setValue(var, exp->eval(state));
    } catch (ErrorException &ex) {
        cout << ex.getMessage() << endl;
    }
}

//PRINT
PRINT::PRINT() : exp(nullptr) {
    /* Empty */
}

PRINT::PRINT(string line) : exp(nullptr) {
    line = line.substr(line.find("PRINT"));

    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);
    scanner.nextToken();

    exp = parseExp(scanner);
}

PRINT::~PRINT() {
    delete exp;
}

void PRINT::execute(EvalState &state) {
    //cout << "goto calculate" << endl;
    try {
        std::cout << exp->eval(state) << std::endl;
    } catch (ErrorException &ex) {
        cout << ex.getMessage() << endl;
    }
}

//INPUT
INPUT::INPUT() = default;

INPUT::INPUT(string line) {
    line = line.substr(line.find("INPUT"));
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(line);

    scanner.nextToken();
    var = scanner.nextToken();
    if (scanner.hasMoreTokens())
        set_valid(1);
}

INPUT::~INPUT() = default;

void INPUT::execute(EvalState &state) {
    int val;
    string str;
    while (true) {
        std::cout << " ? ";
        /*
        std::cin >> str;
        try {
            val = stringToInteger(str);
        } catch (ErrorException &ex) {
            cout << "INVALID NUMBER" << endl;
            continue;
        }
        cout << "val = " << val << endl;
         */
        val = getInteger();
        //cout << "goto set value, var = " << var << ", val = " << val << endl;
        state.setValue(var, val);
        break;
    }
    //cout << "goto return" << endl;
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
    scanner.nextToken();

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
IF::IF() : line_number(-1), exp1(nullptr), exp2(nullptr) {
    /* Empty */
}

IF::IF(std::string line) : line_number(-1), exp1(nullptr), exp2(nullptr) {
    //cout << "go to initialize" << endl;
    line = line.substr(line.find("IF"));

    if (line.find("THEN") == string::npos || line[2] != ' ') {
        set_valid(1);
        return;
    }
    int then_pos = line.find("THEN");

    string str_exp1, str_exp2;

    //cout << "go to find the op" << endl;
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
    //cout << "op = " << opt_str << endl;
    str_exp1 = line.substr(3, line.find(opt_str) - 3);
    str_exp2 = line.substr(line.find(opt_str) + 1, then_pos - line.find(opt_str) - 1);

    //cout << "after set str_exp1 & str_exp2" << endl;
    //cout << "str1 = " << str_exp1 << endl;
    //cout << "str2 = " << str_exp2 << endl;
    TokenScanner scanner;
    scanner.ignoreWhitespace();
    scanner.scanNumbers();

    scanner.setInput(str_exp1);
    exp1 = parseExp(scanner);

    scanner.ignoreWhitespace();
    scanner.scanNumbers();
    scanner.setInput(str_exp2);
    exp2 = parseExp(scanner);
    //cout << "after set exp1 & exp2" << endl;

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
    try {
        int val1 = exp1->eval(state), val2 = exp2->eval(state);
        if ((op == -1 && val1 < val2) || (op == 0 && val1 == val2) || (op == 1 && val1 > val2))
            line_number = if_number;
    } catch (ErrorException &ex) {
        cout << ex.getMessage() << endl;
    }
}