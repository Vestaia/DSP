CWD := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
PROJECT:=$(if $(PROJECT), $(PROJECT), piecewise)

export INCLUDE := -I$(CWD) 
export CROSSCOMP := $(if $(CROSSCOMP),$(CROSSCOMP),arm-linux-gnueabihf-g++)
export OBJ_DIR := $(if $(OBJ_DIR),$(OBJ_DIR),$(PWD)/build)


.PHONY: all $(PROJECT) clean

all: $(PROJECT)
	cp $(wildcard *.h) $(OBJ_DIR)

$(PROJECT): 
	$(MAKE) --directory=$@

clean:
	$(RM) -r build
