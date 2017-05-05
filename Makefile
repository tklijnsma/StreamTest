#makefile 

CC   =   g++
UCFLAGS = -O3 -fopenmp -Wall -gstabs+ -g
RUCFLAGS := -I./include/
LIBS :=  
GLIBS := 

vpath %.cpp ./src

SRCPP = sentryTest.cpp

OBJCPP = $(patsubst %.cpp,obj/%.o,$(SRCPP))

all : sentryTest.exe 
	#obj/libDictionary_C.so

obj/%.o : %.cpp
	@echo "> compiling $*"
	@mkdir -p obj/
	@$(CC) -c $< $(UCFLAGS) $(RUCFLAGS) -o $@

sentryTest.exe : $(OBJCPP)
	@echo "> linking"
	@$(CC) $^ $(ACLIBS) $(LIBS) $(GLIBS)  -o $@

clean:
	@echo "> Cleaning object files"
	@rm  -f obj/*.o
        
cleanall: clean
	@echo "> Cleaning dictionary"
	@rm -f obj/libDictionary_C.so
	@echo "> Cleaning executable"
	@rm -f sentryTest.exe
