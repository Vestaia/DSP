########################################################################################
# 
# C++ automatic dependency calculation and source file search
# Author: Lars
#
########################################################################################

TARGET_EXEC := main

LOCAL_SRC_DIRS := src
EXT_SRC_DIRS := libs/network libs/fpga/piecewise
SRC_DIRS := $(LOCAL_SRC_DIRS) $(EXT_SRC_DIRS)
BUILD_DIR := bin

VPATH := $(SRC_DIRS)

LOCAL_INC_DIRS := src
EXT_INC_DIRS := libs/fpga libs/fpga/piecewise libs/network
INC_DIRS := $(LOCAL_INC_DIRS) $(EXT_INC_DIRS)
INC_FLAGS := $(addprefix -I ,$(INC_DIRS))

# Possibly needed for mingw to be able to std::thread : -static-libgcc -static-libstdc++
# I dont want to do static linking necessarily, but mingw does not behave itself with threads :( -Lars
LIB_DIRS := 
LINK_FLAGS := $(addprefix -L , $(LIB_DIRS)) -lglfw -lvulkan

WARNING_FLAGS := -Wall -Wextra -Wno-unused-parameter
# WARNING_FLAGS += -Wdouble-promotion
COMPILE_FLAGS := $(WARNING_FLAGS) -std=c++17 $(INC_FLAGS) -MMD -MP
COMPILER := g++

########################################################################################

# Colors:
# https://stackoverflow.com/a/28938235

# No Color (Reset)
NC = \033[0m

# Regular Colors
BLACK = \033[0;30m
RED = \033[0;31m
GREEN = \033[0;32m
YELLOW = \033[0;33m
BLUE = \033[0;34m
PURPLE = \033[0;35m
CYAN = \033[0;36m
WHITE = \033[0;37m

# Bold
BBLACK = \033[1;30m
BRED = \033[1;31m
BGREEN = \033[1;32m
BYELLOW = \033[1;33m
BBLUE = \033[1;34m
BPURPLE = \033[1;35m
BCYAN = \033[1;36m
BWHITE = \033[1;37m

# Underline
UBLACK = \033[4;30m
URED = \033[4;31m
UGREEN = \033[4;32m
UYELLOW = \033[4;33m
UBLUE = \033[4;34m
UPURPLE = \033[4;35m
UCYAN = \033[4;36m
UWHITE = \033[4;37m

# Background
ONBLACK = \033[40m
ONRED = \033[41m
ONGREEN = \033[42m
ONYELLOW = \033[43m
ONBLUE = \033[44m
ONPURPLE = \033[45m
ONCYAN = \033[46m
ONWHITE = \033[47m

########################################################################################

SHELL := /bin/bash

ifeq ($(OS),Windows_NT)
	TARGET_EXEC := $(TARGET_EXEC).exe

	RM = if exist $(subst /,\,$(1)) rd /s /q $(subst /,\,$(1))
	MKDIR_P = if not exist $(subst /,\,$(1)) mkdir $(subst /,\,$(1))
	
# https://superuser.com/questions/401495/equivalent-of-unix-find-command-on-windows
	null  =
	space = $(null) #
	comma = ,
	SRC_DIR_LIST := $(subst $(space),$(comma),$(strip $(SRC_DIRS)))
	SRCS := $(shell powershell -Command ls -path $(SRC_DIR_LIST) -Include *.cpp, *.c -recurse -name)
else
	RM = rm -r $(1)
	MKDIR_P = mkdir -p $(1)

# TODO, filter by both .cpp and .c
	SRCS := $(shell find $(SRC_DIRS) -name "*.cpp")
endif

# Find all objects to be compiled by C++ compiler
OBJS := $(SRCS:%.cpp=%.o)
OBJS := $(OBJS:%.c=%.o)

#
# Release build settings
#
REL_DIR := $(BUILD_DIR)/release
REL_EXE := $(REL_DIR)/$(TARGET_EXEC)
REL_OBJS = $(addprefix $(REL_DIR)/objs/, $(OBJS))
REL_FLAGS := -Ofast
REL_DEPS = $(REL_OBJS:.o=.d)

# For high DPI screens:
REL_FLAGS := -D DPI_SCALE_FACTOR=2

.PHONY: all test clean debug prep release remake

# Default build
all:
	$(MAKE) prep
	$(MAKE) release

#
# Release rules
#
release: $(REL_EXE)

$(REL_EXE): $(REL_OBJS)
	@printf "${BPURPLE}Compiling final executable:${BWHITE} $@${NC}\n"
	$(COMPILER) -o $(REL_EXE) $^ $(COMPILE_FLAGS) $(LINK_FLAGS) $(REL_FLAGS)
	@printf "${BPURPLE}Compilation complete:${BWHITE} $@${NC}\n"

$(REL_DIR)/objs/%.o: %.cpp
	$(call MKDIR_P, $(dir $@))
	@printf "${BPURPLE}Compiling object:${BWHITE} $@${NC}\n"
	$(COMPILER) -c -o $@ $< $(COMPILE_FLAGS) $(REL_FLAGS)
	@printf "${BPURPLE}Compilation complete:${BWHITE} $@${NC}\n"

$(REL_DIR)/objs/%.o: %.c
	$(call MKDIR_P, $(dir $@))
	@printf "${BPURPLE}Compiling object:${BWHITE} $@${NC}\n"
	$(COMPILER) -c -o $@ $< $(COMPILE_FLAGS) $(REL_FLAGS)
	@printf "${BPURPLE}Compilation complete:${BWHITE} $@${NC}\n"


#
# Other rules
#
prep:
	$(call MKDIR_P, $(REL_DIR))

remake: 
	$(MAKE) clean
	$(MAKE) all

clean:
	@printf "${BRED}Deleting build directory${NC}\n"
	$(call RM, $(BUILD_DIR))

test:
	@printf "\n"
	@printf "${BPURPLE}Sources:${NC} $(SRCS)\n\n"
	@printf "${BPURPLE}Objects:${NC} $(OBJS)\n\n"

# not quite happy with this solution to deal with dependencies. It just kinda suppresses warnings - Lars
# https://stackoverflow.com/questions/2394609/makefile-header-dependencies
-include $(REL_DEPS)

# Other interesting sources
# https://stackoverflow.com/questions/1079832/how-can-i-configure-my-makefile-for-debug-and-release-builds