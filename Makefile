MYCC		= clang
MYCC		= g++

# ======================================================

CF_INCL_EXTRA	:=

CF_DEPS		= -MMD -MP
CF_INCL		= -Iinclude $(CF_INCL_EXTRA)
CF_OPTIM	=
CF_WARN		= -Wall -Wconversion -Wpedantic

CF_MISC		= -D_FILE_OFFSET_BITS=64

CF_ALL		= -std=c++11	\
			$(CF_DEPS)	\
			$(CF_INCL)	\
			$(CF_OPTIM)	\
			$(CF_WARN)	\
			$(CF_MISC)

CXX		= $(MYCC) $(CF_ALL)

# ======================================================

LD_ALL		=
LL_ALL		= -lstdc++

LINK		= $(MYCC) $(LD_ALL) -o $@ $^ $(LL_ALL)

SRC		= $(wildcard *.cc)

# ======================================================

A		= bin/
O		= obj/

# ======================================================
# ======================================================
# ======================================================

SUBDIRS = lib1 main

include $(addsuffix /Makefile, $(SUBDIRS))

clean:
	rm -f \
		$(O)*.o		\
		$(O)*.d

