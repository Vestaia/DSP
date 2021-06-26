LDLIBS:=$(wildcard $(OBJ_DIR)/*.o)
OBJ_DIR:=$(if $(OBJ_DIR),$(OBJ_DIR)/mains,build)
COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
CFLAGS:=$(INCLUDE) -I.
SRC:=$(wildcard *.cpp)
OBJ:=$(SRC:%.cpp=$(OBJ_DIR)/%.o)

all: $(OBJ_DIR)/adc_server $(OBJ_DIR)/adc_client_interface

$(OBJ_DIR)/adc_server: $(OBJ_DIR)/adc_server.o
	$(COMPILER) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/adc_client_interface: $(OBJ_DIR)/adc_client_interface.o
	$(COMPILER) $^ $(LDLIBS) -o $@

$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(COMPILER) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir $@

clean:
	$(RM) -r $(OBJ_DIR)

.PHONY: all clean