OBJ_DIR:=$(if $(OBJ_DIR),$(OBJ_DIR),build)
COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
CFLAGS:=$(INCLUDE) -I.
LDLIBS:=
SRC:=$(wildcard *.cpp)
OBJ:=$(SRC:%.cpp=$(OBJ_DIR)/%.o)

all: $(OBJ)
	cp $(wildcard *.h) $(OBJ_DIR)

$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(COMPILER) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
	$(RM) -r $(OBJ_DIR)

.PHONY: all clean