# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/masterjh5574/OOP/OOP2-Basic/Basic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/masterjh5574/OOP/OOP2-Basic/Basic

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/masterjh5574/OOP/OOP2-Basic/Basic/CMakeFiles /home/masterjh5574/OOP/OOP2-Basic/Basic/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/masterjh5574/OOP/OOP2-Basic/Basic/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named basic

# Build rule for target.
basic: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic
.PHONY : basic

# fast build rule for target.
basic/fast:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/build
.PHONY : basic/fast

Basic/Basic.o: Basic/Basic.cpp.o

.PHONY : Basic/Basic.o

# target to build an object file
Basic/Basic.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/Basic.cpp.o
.PHONY : Basic/Basic.cpp.o

Basic/Basic.i: Basic/Basic.cpp.i

.PHONY : Basic/Basic.i

# target to preprocess a source file
Basic/Basic.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/Basic.cpp.i
.PHONY : Basic/Basic.cpp.i

Basic/Basic.s: Basic/Basic.cpp.s

.PHONY : Basic/Basic.s

# target to generate assembly for a file
Basic/Basic.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/Basic.cpp.s
.PHONY : Basic/Basic.cpp.s

Basic/evalstate.o: Basic/evalstate.cpp.o

.PHONY : Basic/evalstate.o

# target to build an object file
Basic/evalstate.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/evalstate.cpp.o
.PHONY : Basic/evalstate.cpp.o

Basic/evalstate.i: Basic/evalstate.cpp.i

.PHONY : Basic/evalstate.i

# target to preprocess a source file
Basic/evalstate.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/evalstate.cpp.i
.PHONY : Basic/evalstate.cpp.i

Basic/evalstate.s: Basic/evalstate.cpp.s

.PHONY : Basic/evalstate.s

# target to generate assembly for a file
Basic/evalstate.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/evalstate.cpp.s
.PHONY : Basic/evalstate.cpp.s

Basic/exp.o: Basic/exp.cpp.o

.PHONY : Basic/exp.o

# target to build an object file
Basic/exp.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/exp.cpp.o
.PHONY : Basic/exp.cpp.o

Basic/exp.i: Basic/exp.cpp.i

.PHONY : Basic/exp.i

# target to preprocess a source file
Basic/exp.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/exp.cpp.i
.PHONY : Basic/exp.cpp.i

Basic/exp.s: Basic/exp.cpp.s

.PHONY : Basic/exp.s

# target to generate assembly for a file
Basic/exp.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/exp.cpp.s
.PHONY : Basic/exp.cpp.s

Basic/parser.o: Basic/parser.cpp.o

.PHONY : Basic/parser.o

# target to build an object file
Basic/parser.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/parser.cpp.o
.PHONY : Basic/parser.cpp.o

Basic/parser.i: Basic/parser.cpp.i

.PHONY : Basic/parser.i

# target to preprocess a source file
Basic/parser.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/parser.cpp.i
.PHONY : Basic/parser.cpp.i

Basic/parser.s: Basic/parser.cpp.s

.PHONY : Basic/parser.s

# target to generate assembly for a file
Basic/parser.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/parser.cpp.s
.PHONY : Basic/parser.cpp.s

Basic/program.o: Basic/program.cpp.o

.PHONY : Basic/program.o

# target to build an object file
Basic/program.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/program.cpp.o
.PHONY : Basic/program.cpp.o

Basic/program.i: Basic/program.cpp.i

.PHONY : Basic/program.i

# target to preprocess a source file
Basic/program.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/program.cpp.i
.PHONY : Basic/program.cpp.i

Basic/program.s: Basic/program.cpp.s

.PHONY : Basic/program.s

# target to generate assembly for a file
Basic/program.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/program.cpp.s
.PHONY : Basic/program.cpp.s

Basic/statement.o: Basic/statement.cpp.o

.PHONY : Basic/statement.o

# target to build an object file
Basic/statement.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/statement.cpp.o
.PHONY : Basic/statement.cpp.o

Basic/statement.i: Basic/statement.cpp.i

.PHONY : Basic/statement.i

# target to preprocess a source file
Basic/statement.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/statement.cpp.i
.PHONY : Basic/statement.cpp.i

Basic/statement.s: Basic/statement.cpp.s

.PHONY : Basic/statement.s

# target to generate assembly for a file
Basic/statement.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/Basic/statement.cpp.s
.PHONY : Basic/statement.cpp.s

StanfordCPPLib/direction.o: StanfordCPPLib/direction.cpp.o

.PHONY : StanfordCPPLib/direction.o

# target to build an object file
StanfordCPPLib/direction.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/direction.cpp.o
.PHONY : StanfordCPPLib/direction.cpp.o

StanfordCPPLib/direction.i: StanfordCPPLib/direction.cpp.i

.PHONY : StanfordCPPLib/direction.i

# target to preprocess a source file
StanfordCPPLib/direction.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/direction.cpp.i
.PHONY : StanfordCPPLib/direction.cpp.i

StanfordCPPLib/direction.s: StanfordCPPLib/direction.cpp.s

.PHONY : StanfordCPPLib/direction.s

# target to generate assembly for a file
StanfordCPPLib/direction.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/direction.cpp.s
.PHONY : StanfordCPPLib/direction.cpp.s

StanfordCPPLib/error.o: StanfordCPPLib/error.cpp.o

.PHONY : StanfordCPPLib/error.o

# target to build an object file
StanfordCPPLib/error.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/error.cpp.o
.PHONY : StanfordCPPLib/error.cpp.o

StanfordCPPLib/error.i: StanfordCPPLib/error.cpp.i

.PHONY : StanfordCPPLib/error.i

# target to preprocess a source file
StanfordCPPLib/error.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/error.cpp.i
.PHONY : StanfordCPPLib/error.cpp.i

StanfordCPPLib/error.s: StanfordCPPLib/error.cpp.s

.PHONY : StanfordCPPLib/error.s

# target to generate assembly for a file
StanfordCPPLib/error.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/error.cpp.s
.PHONY : StanfordCPPLib/error.cpp.s

StanfordCPPLib/gmath.o: StanfordCPPLib/gmath.cpp.o

.PHONY : StanfordCPPLib/gmath.o

# target to build an object file
StanfordCPPLib/gmath.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gmath.cpp.o
.PHONY : StanfordCPPLib/gmath.cpp.o

StanfordCPPLib/gmath.i: StanfordCPPLib/gmath.cpp.i

.PHONY : StanfordCPPLib/gmath.i

# target to preprocess a source file
StanfordCPPLib/gmath.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gmath.cpp.i
.PHONY : StanfordCPPLib/gmath.cpp.i

StanfordCPPLib/gmath.s: StanfordCPPLib/gmath.cpp.s

.PHONY : StanfordCPPLib/gmath.s

# target to generate assembly for a file
StanfordCPPLib/gmath.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gmath.cpp.s
.PHONY : StanfordCPPLib/gmath.cpp.s

StanfordCPPLib/gtypes.o: StanfordCPPLib/gtypes.cpp.o

.PHONY : StanfordCPPLib/gtypes.o

# target to build an object file
StanfordCPPLib/gtypes.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gtypes.cpp.o
.PHONY : StanfordCPPLib/gtypes.cpp.o

StanfordCPPLib/gtypes.i: StanfordCPPLib/gtypes.cpp.i

.PHONY : StanfordCPPLib/gtypes.i

# target to preprocess a source file
StanfordCPPLib/gtypes.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gtypes.cpp.i
.PHONY : StanfordCPPLib/gtypes.cpp.i

StanfordCPPLib/gtypes.s: StanfordCPPLib/gtypes.cpp.s

.PHONY : StanfordCPPLib/gtypes.s

# target to generate assembly for a file
StanfordCPPLib/gtypes.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/gtypes.cpp.s
.PHONY : StanfordCPPLib/gtypes.cpp.s

StanfordCPPLib/hashmap.o: StanfordCPPLib/hashmap.cpp.o

.PHONY : StanfordCPPLib/hashmap.o

# target to build an object file
StanfordCPPLib/hashmap.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/hashmap.cpp.o
.PHONY : StanfordCPPLib/hashmap.cpp.o

StanfordCPPLib/hashmap.i: StanfordCPPLib/hashmap.cpp.i

.PHONY : StanfordCPPLib/hashmap.i

# target to preprocess a source file
StanfordCPPLib/hashmap.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/hashmap.cpp.i
.PHONY : StanfordCPPLib/hashmap.cpp.i

StanfordCPPLib/hashmap.s: StanfordCPPLib/hashmap.cpp.s

.PHONY : StanfordCPPLib/hashmap.s

# target to generate assembly for a file
StanfordCPPLib/hashmap.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/hashmap.cpp.s
.PHONY : StanfordCPPLib/hashmap.cpp.s

StanfordCPPLib/lexicon.o: StanfordCPPLib/lexicon.cpp.o

.PHONY : StanfordCPPLib/lexicon.o

# target to build an object file
StanfordCPPLib/lexicon.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/lexicon.cpp.o
.PHONY : StanfordCPPLib/lexicon.cpp.o

StanfordCPPLib/lexicon.i: StanfordCPPLib/lexicon.cpp.i

.PHONY : StanfordCPPLib/lexicon.i

# target to preprocess a source file
StanfordCPPLib/lexicon.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/lexicon.cpp.i
.PHONY : StanfordCPPLib/lexicon.cpp.i

StanfordCPPLib/lexicon.s: StanfordCPPLib/lexicon.cpp.s

.PHONY : StanfordCPPLib/lexicon.s

# target to generate assembly for a file
StanfordCPPLib/lexicon.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/lexicon.cpp.s
.PHONY : StanfordCPPLib/lexicon.cpp.s

StanfordCPPLib/point.o: StanfordCPPLib/point.cpp.o

.PHONY : StanfordCPPLib/point.o

# target to build an object file
StanfordCPPLib/point.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/point.cpp.o
.PHONY : StanfordCPPLib/point.cpp.o

StanfordCPPLib/point.i: StanfordCPPLib/point.cpp.i

.PHONY : StanfordCPPLib/point.i

# target to preprocess a source file
StanfordCPPLib/point.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/point.cpp.i
.PHONY : StanfordCPPLib/point.cpp.i

StanfordCPPLib/point.s: StanfordCPPLib/point.cpp.s

.PHONY : StanfordCPPLib/point.s

# target to generate assembly for a file
StanfordCPPLib/point.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/point.cpp.s
.PHONY : StanfordCPPLib/point.cpp.s

StanfordCPPLib/random.o: StanfordCPPLib/random.cpp.o

.PHONY : StanfordCPPLib/random.o

# target to build an object file
StanfordCPPLib/random.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/random.cpp.o
.PHONY : StanfordCPPLib/random.cpp.o

StanfordCPPLib/random.i: StanfordCPPLib/random.cpp.i

.PHONY : StanfordCPPLib/random.i

# target to preprocess a source file
StanfordCPPLib/random.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/random.cpp.i
.PHONY : StanfordCPPLib/random.cpp.i

StanfordCPPLib/random.s: StanfordCPPLib/random.cpp.s

.PHONY : StanfordCPPLib/random.s

# target to generate assembly for a file
StanfordCPPLib/random.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/random.cpp.s
.PHONY : StanfordCPPLib/random.cpp.s

StanfordCPPLib/simpio.o: StanfordCPPLib/simpio.cpp.o

.PHONY : StanfordCPPLib/simpio.o

# target to build an object file
StanfordCPPLib/simpio.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/simpio.cpp.o
.PHONY : StanfordCPPLib/simpio.cpp.o

StanfordCPPLib/simpio.i: StanfordCPPLib/simpio.cpp.i

.PHONY : StanfordCPPLib/simpio.i

# target to preprocess a source file
StanfordCPPLib/simpio.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/simpio.cpp.i
.PHONY : StanfordCPPLib/simpio.cpp.i

StanfordCPPLib/simpio.s: StanfordCPPLib/simpio.cpp.s

.PHONY : StanfordCPPLib/simpio.s

# target to generate assembly for a file
StanfordCPPLib/simpio.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/simpio.cpp.s
.PHONY : StanfordCPPLib/simpio.cpp.s

StanfordCPPLib/strlib.o: StanfordCPPLib/strlib.cpp.o

.PHONY : StanfordCPPLib/strlib.o

# target to build an object file
StanfordCPPLib/strlib.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/strlib.cpp.o
.PHONY : StanfordCPPLib/strlib.cpp.o

StanfordCPPLib/strlib.i: StanfordCPPLib/strlib.cpp.i

.PHONY : StanfordCPPLib/strlib.i

# target to preprocess a source file
StanfordCPPLib/strlib.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/strlib.cpp.i
.PHONY : StanfordCPPLib/strlib.cpp.i

StanfordCPPLib/strlib.s: StanfordCPPLib/strlib.cpp.s

.PHONY : StanfordCPPLib/strlib.s

# target to generate assembly for a file
StanfordCPPLib/strlib.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/strlib.cpp.s
.PHONY : StanfordCPPLib/strlib.cpp.s

StanfordCPPLib/tokenscanner.o: StanfordCPPLib/tokenscanner.cpp.o

.PHONY : StanfordCPPLib/tokenscanner.o

# target to build an object file
StanfordCPPLib/tokenscanner.cpp.o:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/tokenscanner.cpp.o
.PHONY : StanfordCPPLib/tokenscanner.cpp.o

StanfordCPPLib/tokenscanner.i: StanfordCPPLib/tokenscanner.cpp.i

.PHONY : StanfordCPPLib/tokenscanner.i

# target to preprocess a source file
StanfordCPPLib/tokenscanner.cpp.i:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/tokenscanner.cpp.i
.PHONY : StanfordCPPLib/tokenscanner.cpp.i

StanfordCPPLib/tokenscanner.s: StanfordCPPLib/tokenscanner.cpp.s

.PHONY : StanfordCPPLib/tokenscanner.s

# target to generate assembly for a file
StanfordCPPLib/tokenscanner.cpp.s:
	$(MAKE) -f CMakeFiles/basic.dir/build.make CMakeFiles/basic.dir/StanfordCPPLib/tokenscanner.cpp.s
.PHONY : StanfordCPPLib/tokenscanner.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... basic"
	@echo "... Basic/Basic.o"
	@echo "... Basic/Basic.i"
	@echo "... Basic/Basic.s"
	@echo "... Basic/evalstate.o"
	@echo "... Basic/evalstate.i"
	@echo "... Basic/evalstate.s"
	@echo "... Basic/exp.o"
	@echo "... Basic/exp.i"
	@echo "... Basic/exp.s"
	@echo "... Basic/parser.o"
	@echo "... Basic/parser.i"
	@echo "... Basic/parser.s"
	@echo "... Basic/program.o"
	@echo "... Basic/program.i"
	@echo "... Basic/program.s"
	@echo "... Basic/statement.o"
	@echo "... Basic/statement.i"
	@echo "... Basic/statement.s"
	@echo "... StanfordCPPLib/direction.o"
	@echo "... StanfordCPPLib/direction.i"
	@echo "... StanfordCPPLib/direction.s"
	@echo "... StanfordCPPLib/error.o"
	@echo "... StanfordCPPLib/error.i"
	@echo "... StanfordCPPLib/error.s"
	@echo "... StanfordCPPLib/gmath.o"
	@echo "... StanfordCPPLib/gmath.i"
	@echo "... StanfordCPPLib/gmath.s"
	@echo "... StanfordCPPLib/gtypes.o"
	@echo "... StanfordCPPLib/gtypes.i"
	@echo "... StanfordCPPLib/gtypes.s"
	@echo "... StanfordCPPLib/hashmap.o"
	@echo "... StanfordCPPLib/hashmap.i"
	@echo "... StanfordCPPLib/hashmap.s"
	@echo "... StanfordCPPLib/lexicon.o"
	@echo "... StanfordCPPLib/lexicon.i"
	@echo "... StanfordCPPLib/lexicon.s"
	@echo "... StanfordCPPLib/point.o"
	@echo "... StanfordCPPLib/point.i"
	@echo "... StanfordCPPLib/point.s"
	@echo "... StanfordCPPLib/random.o"
	@echo "... StanfordCPPLib/random.i"
	@echo "... StanfordCPPLib/random.s"
	@echo "... StanfordCPPLib/simpio.o"
	@echo "... StanfordCPPLib/simpio.i"
	@echo "... StanfordCPPLib/simpio.s"
	@echo "... StanfordCPPLib/strlib.o"
	@echo "... StanfordCPPLib/strlib.i"
	@echo "... StanfordCPPLib/strlib.s"
	@echo "... StanfordCPPLib/tokenscanner.o"
	@echo "... StanfordCPPLib/tokenscanner.i"
	@echo "... StanfordCPPLib/tokenscanner.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

