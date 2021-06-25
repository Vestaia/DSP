fpga:=fpga
network:=network
interface:=interface
COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
CROSSCOMP:=$(if $(CROSSCOMP),$(CROSSCOMP),arm-linux-gnueabihf-g++)

.PHONY: all $(fpga) $(network) $(interface) clean

all: $(fpga) $(network) 

$(fpga): 
	$(MAKE) --directory=$@ $(TARGET) COMPILER=$(CROSSCOMP)

$(network):
	$(MAKE) --directory=$@ $(TARGET) COMPILER=$(COMPILER)

$(interface):
	$(MAKE) --directory=$@ $(TARGET) COMPILER=$(COMPILER)

clean:
	$(MAKE) TARGET=clean
