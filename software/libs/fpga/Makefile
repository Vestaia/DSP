mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

piecewise_polynomial := piecewise
trapezoid := trapezoid
API := $(piecewise_polynomial) $(trapezoid)
export INCLUDE := -I$(mkfile_dir) 
export COMPILER := $(if $(COMPILER),$(COMPILER),arm-linux-gnueabihf-g++)
export OBJ_DIR := $(if $(OBJ_DIR),$(OBJ_DIR),$(PWD)/build)

.PHONY: all $(API) clean

all: $(API)

$(API): 
	$(MAKE) --directory=$@ $(TARGET)

clean:
	$(MAKE) TARGET=clean
