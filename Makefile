TARGET = Gray.out
SYSTEMC = $(SYSTEMC_HOME)
INCDIR = -I. -I$(SYSTEMC)/include
LIBDIR = -L. -L$(SYSTEMC)/lib-linux
LIBS   = -lsystemc -lm
COMMON_FLAGS = -g -Wno-deprecated -Wall
CFLAGS = $(COMMON_FLAGS)
CXXFLAGS = $(COMMON_FLAGS)
#CC     = g++
#COMPILER = $(CC)
COMPILER = $(CXX)


SRCS := $(shell find  . -maxdepth 1 -name *.cpp -or -name *.c)
OBJS=$(subst .cpp,.o,$(SRCS))

OUT    = $(TARGET)

all: $(OUT)

$(OUT): $(OBJS)  
	$(COMPILER) $(CFLAGS) $(INCDIR) $(LIBDIR) -o $@ $(OBJS) $(LIBS) 2>&1

%.o: %.cpp %.h
	$(COMPILER) $(CFLAGS) $(INCDIR) -c $<

clean:
	rm -f $(OBJS) $(OUT) *.vcd

