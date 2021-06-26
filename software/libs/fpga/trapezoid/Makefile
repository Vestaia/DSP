SRC_DIR:=.
OBJ_DIR:=build
COMPILER:=$(if $(COMPILER),$(COMPILER),arm-linux-gnueabihf-g++)
CFLAGS:=$(INCLUDE) -I$(SRC_DIR)
LDLIBS:=
SRC:=$(wildcard $(SRC_DIR)/*.cpp)
OBJ:=$(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)

all: $(OBJ)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(COMPILER) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
	$(RM) -r $(OBJ_DIR)

.PHONY: all clean