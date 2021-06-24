########################################################################################
# 
# C++ automatic dependency calculation and source file search
# Author: Lars
#
########################################################################################

TARGET_EXEC := main

LOCAL_SRC_DIRS := src
EXT_SRC_DIRS := 
SRC_DIRS := $(LOCAL_SRC_DIRS) $(EXT_SRC_DIRS)
BUILD_DIR := bin

VPATH := $(SRC_DIRS)

LOCAL_INC_DIRS := include
EXT_INC_DIRS := 
INC_DIRS := $(LOCAL_INC_DIRS) $(EXT_INC_DIRS)
INC_FLAGS := $(addprefix -I ,$(INC_DIRS))

# possibly need for mingw to be able to std::thread : -static-libgcc -static-libstdc++
# I don't want to do static linking necessarily, but mingw doesn't behave itself with threads :( -Lars
LIB_DIRS := 
LINK_FLAGS := $(addprefix -L , $(LIB_DIRS))

WARNING_FLAGS := -Wall -Wextra -Wno-unused-parameter
# WARNING_FLAGS += -Wdouble-promotion
CPPFLAGS := $(WARNING_FLAGS) -std=c++17 $(INC_FLAGS) $(LINK_FLAGS) -MMD -MP
CXX := g++

########################################################################################

ifeq ($(OS),Windows_NT)
	TARGET_EXEC := $(TARGET_EXEC).exe

	RM = if exist $(subst /,\,$(1)) rd /s /q $(subst /,\,$(1))
	MKDIR_P = if not exist $(subst /,\,$(1)) mkdir $(subst /,\,$(1))
	
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

# #
# # Dependency calculations
# # Possibly TODO in future
# #
# DEP_DIR := $(BUILD_DIR)/depend

#
# Debug build settings
#
DBG_DIR := $(BUILD_DIR)/debug
DBG_EXE := $(DBG_DIR)/$(TARGET_EXEC)
DBG_OBJS := $(addprefix $(DBG_DIR)/objs/, $(OBJS))
DBG_FLAGS = -g -O0
DBG_DEPS = $(DBG_OBJS:.o=.d)

#
# Release build settings
#
REL_DIR := $(BUILD_DIR)/release
REL_EXE := $(REL_DIR)/$(TARGET_EXEC)
REL_OBJS = $(addprefix $(REL_DIR)/objs/, $(OBJS))
REL_FLAGS := -Ofast
REL_DEPS = $(REL_OBJS:.o=.d)

.PHONY: all test clean debug prep release remake

# Default build
all:
	$(MAKE) prep
	$(MAKE) release

#
# Debug rules
#
debug: $(DBG_EXE)

$(DBG_EXE): $(DBG_OBJS)
	$(CXX) -o $(DBG_EXE) $^ $(CPPFLAGS) $(DBG_FLAGS)

$(DBG_DIR)/objs/%.o: %.cpp
	$(call MKDIR_P, $(dir $@))
	$(CXX) -c -o $@ $< $(CPPFLAGS) $(DBG_FLAGS)

$(DBG_DIR)/objs/%.o: %.c
	$(call MKDIR_P, $(dir $@))
	$(CXX) -c -o $@ $< $(CPPFLAGS) $(DBG_FLAGS)

#
# Release rules
#
release: $(REL_EXE)

$(REL_EXE): $(REL_OBJS)
	$(CXX) -o $(REL_EXE) $^ $(CPPFLAGS) $(REL_FLAGS)

$(REL_DIR)/objs/%.o: %.cpp
	$(call MKDIR_P, $(dir $@))
	$(CXX) -c -o $@ $< $(CPPFLAGS) $(REL_FLAGS)
	@echo $@ complete!

$(REL_DIR)/objs/%.o: %.c
	$(call MKDIR_P, $(dir $@))
	$(CXX) -c -o $@ $< $(CPPFLAGS) $(REL_FLAGS)
	@echo $@ complete!


#
# Other rules
#
prep:
	$(call MKDIR_P, $(DBG_DIR))
	$(call MKDIR_P, $(REL_DIR))

remake: 
	$(MAKE) clean
	$(MAKE) all

clean:
	$(call RM, $(BUILD_DIR))

test:
	@echo Sources: $(SRCS)
	@echo Objects: $(OBJS)

# not quite happy with this solution to deal with dependencies - Lars
-include $(REL_DEPS)
-include $(DBG_DEPS)

# https://stackoverflow.com/questions/1079832/how-can-i-configure-my-makefile-for-debug-and-release-builds
# https://stackoverflow.com/questions/2394609/makefile-header-dependencies
# https://superuser.com/questions/401495/equivalent-of-unix-find-command-on-windows