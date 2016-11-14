CSRCS     = $(wildcard *.cpp)
CHDRS     = $(wildcard *.h)
COBJS     = $(addsuffix .o, $(basename $(CSRCS)))

CXX       = g++-5
AR        = ar cr
ECHO      = /bin/echo
CFLAGS    = -Wall -O3 -std=c++11

all: $(COBJS)
	@$(ECHO) $(CXX) $(CFLAGS) $(COBJS) -o main
	@$(CXX) $(CFLAGS) $(COBJS) -o main
	@make rm

%.o : %.cpp
	@$(ECHO) "> compiling: $<"
	@$(ECHO) $(CXX) $(CFLAGS) -c -o $@ $<
	@$(CXX) $(CFLAGS) -c -o $@ $<

rm: 
	@rm -f $(COBJS)

clean:
	@rm -f main
