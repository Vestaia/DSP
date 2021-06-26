libs:=fpga network interface

export COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
export CROSSCOMP:=$(if $(CROSSCOMP),$(CROSSCOMP),arm-linux-gnueabihf-g++)
export OBJ_DIR:=$(if $(OBJ_DIR),$(OBJ_DIR),$(PWD)/build)
export PROJECT:=$(if $(PROJECT),$(PROJECT),piecewise)

.PHONY: all $(libs) clean

all: $(libs) 

$(libs):
	$(MAKE) --directory=$@ 

clean:
	$(RM) -r build
