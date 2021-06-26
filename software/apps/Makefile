apps:=oscilloscope

export COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
export CROSSCOMP:=$(if $(CROSSCOMP),$(CROSSCOMP),arm-linux-gnueabihf-g++)
export OBJ_DIR:=$(if $(OBJ_DIR),$(OBJ_DIR),$(PWD)/build)
export PROJECT:=$(if $(PROJECT),$(PROJECT),piecewise)
export INCLUDE+=-I$(OBJ_DIR)

.PHONY: all $(apps) clean

all: $(apps)

$(apps):
	$(MAKE) --directory=$@

clean:
	$(RM) -r build
