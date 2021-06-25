piecewise_polynomial := piecewise
trapezoid := trapezoid
API := $(piecewise_polynomial) $(trapezoid)
export COMPILER := $(if $(COMPILER),$(COMPILER),arm-linux-gnueabihf-g++)
export OBJ_DIR := $(if $(OBJ_DIR),$(OBJ_DIR),build)

.PHONY: all $(API) clean

all: $(API)

$(API): 
	$(MAKE) --directory=$@ $(TARGET)

clean:
	$(MAKE) TARGET=clean
