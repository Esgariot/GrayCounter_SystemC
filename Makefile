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

DEPDIR := .d
$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td


COMPILE.c = $(CC) $(DEPFLAGS) $(CFLAGS) $(CPPFLAGS) $(INCDIR) -c
COMPILE.cpp = $(CXX) $(DEPFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(INCDIR) -c
POSTCOMPILE = @mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d && touch $@


SRCS := $(shell find  . -maxdepth 1 -name *.cpp -or -name *.c)
OBJS=$(subst .cpp,.o,$(SRCS))

OUT    = $(TARGET)

.PHONY: gray_out clean wave

all: $(OUT)

$(OUT): $(OBJS)  
	$(COMPILER) $(CFLAGS) $(INCDIR) $(LIBDIR) -o $@ $(OBJS) $(LIBS) 2>&1

%.o: %.cpp %.h
	$(COMPILE.cpp) -c $<
	$(POSTCOMPILE)

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d

clean:
	rm -f $(OBJS) $(OUT) *.vcd


gray_out: $(OUT)
	./$(OUT)

%.vcd: gray_out ;


wave: gray_counter_wave.vcd
	gtkwave $< 


include $(wildcard $(patsubst %,$(DEPDIR)/%.d,$(basename $(SRCS))))