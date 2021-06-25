piecewise_polynomial := piecewise
trapezoid := trapezoid
API := $(piecewise_polynomial) $(trapezoid)
export COMPILER := $(if $(COMPILER),$(COMPILER),arm-linux-gnueabihf-g++)

.PHONY: all $(API) clean

all: $(API)

$(API): 
	$(MAKE) --directory=$@ $(TARGET)

clean:
	$(MAKE) TARGET=clean
