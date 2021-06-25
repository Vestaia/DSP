SRC_DIR:=src
OBJ_DIR:=build
COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
INCLUDE:=include
CFLAGS:=-I$(INCLUDE) -I$(SRC_DIR) --std=c++17
LDLIBS:=
SRC:=$(wildcard $(SRC_DIR)/*.cpp)
OBJ:=$(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

.PHONY: all clean

all: $(OBJ)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(COMPILER) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
	$(RM) -r $(OBJ_DIR)

