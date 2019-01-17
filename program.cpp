/*
 * File: program.cpp
 * -----------------
 * This file is a stub implementation of the program.h interface
 * in which none of the methods do anything beyond returning a
 * value of the correct type.  Your job is to fill in the bodies
 * of each of these methods with an implementation that satisfies
 * the performance guarantees specified in the assignment.
 */

#include <string>
#include "program.h"
#include "statement.h"
#include "evalstate.h"
#include "../StanfordCPPLib/tokenscanner.h"
using namespace std;

const int INF = 1e9;

Program::Program() = default;

Program::~Program() {
   for (auto stmt : state_table)
      delete stmt.second;
}

void Program::clear() {
   for (auto stmt : state_table)
      delete stmt.second;
   line_table.clear();
   line_string.clear();
   option.clear();
   state_table.clear();
}

void Program::addSourceLine(int lineNumber, string line) {
   if (hasLine(lineNumber)) // already exist
      removeSourceLine(lineNumber);

   line_table.insert(lineNumber);
   line_string[lineNumber] = line;

   TokenScanner scanner;
   scanner.ignoreWhitespace();
   scanner.scanNumbers();
   scanner.setInput(line);

   string str = scanner.nextToken();
   option[lineNumber] = scanner.nextToken();
}

void Program::removeSourceLine(int lineNumber) {
   if (hasLine(lineNumber))
      return;

   if (state_table.find(lineNumber) != state_table.end()) {
      delete state_table[lineNumber];
      state_table.erase(lineNumber);
   }
   line_table.erase(lineNumber);
   line_string.erase(lineNumber);
   option.erase(lineNumber);
}

string Program::getSourceLine(int lineNumber) {
   if (!hasLine(lineNumber))
      return "";

   return line_string[lineNumber];
}

void Program::setParsedStatement(int lineNumber, Statement *stmt) {

   // Replace this stub with your own code
}

Statement* Program::getParsedStatement(int lineNumber) {
   return nullptr;  // Replace this stub with your own code
}

int Program::getFirstLineNumber() {
   return getNextLineNumber(-INF);
}

int Program::getNextLineNumber(int lineNumber) {
   set<int>::iterator it = line_table.upper_bound(lineNumber);
   if (it == line_table.end())
      return -1;
   return *it;
}

bool Program::hasLine(int lineNumber) const {
   return line_table.find(lineNumber) != line_table.end();
}

void Program::runProgram(EvalState &state) {
   int cur = getFirstLineNumber(), ne;
   while (1) {
      string opt = option[cur];
      if (opt == "REM")
         ne = getNextLineNumber(cur);
      else if (opt == "LET") {
         LET let(line_string[cur]);
         if (let.validator == 0)
            let.execute(state);
         else
            cout << "SYNTAX ERROR" << endl;
         ne = getNextLineNumber(cur);
      } else if (opt == "PRINT") {
         PRINT print(line_string[cur]);
         print.execute(state);
         ne = getNextLineNumber(cur);
      } else if (opt == "INPUT") {
         INPUT input(line_string[cur]);
         input.execute(state);
         ne = getNextLineNumber(cur);
      } else if (opt == "END")
         break;
      else if (opt == "GOTO") {
         GOTO Goto(line_string[cur]);
         if (Goto.validator != 0) {
            cout << "SYNTAX ERROR" << endl;
            ne = getNextLineNumber(cur);
         } else {
            if (line_table.find(Goto.line_number) != line_table.end())
               ne = Goto.line_number;
            else {
               cout << "LINE NUMBER ERROR" << endl;
               ne = getNextLineNumber(cur);
            }
         }
      } else if (opt == "IF") {
         IF If(line_string[cur]);
         if (If.validator != 0) {
            cout << "SYNTAX ERROR" << endl;
            ne = getNextLineNumber(cur);
         } else {
            If.execute(state);
            if (If.line_number == -1)
               ne = getNextLineNumber(cur);
            else if (line_table.find(If.line_number) != line_table.end())
               ne = If.line_number;
            else {
               cout << "LINE NUMBER ERROR" << endl;
               ne = getNextLineNumber(cur);
            }
         }
      } else {
         cout << "SYNTAX ERROR" << endl;
         ne = getNextLineNumber(cur);
      }

      if (ne == -1)
         break;
      cur = ne;
   }
}

void Program::listProgram() {
   for (auto x : line_table)
      cout << line_string[x] << endl;
}