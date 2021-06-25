fpga:=fpga
network:=network
interface:=interface
COMPILER:=$(if $(COMPILER),$(COMPILER),g++)
CROSSCOMP:=$(if $(CROSSCOMP),$(CROSSCOMP),arm-linux-gnueabihf-g++)
export OBJ_DIR:=$(PWD)/build

FPGA_TARGET:=$(if $(TARGET),$(TARGET),piecewise)
.PHONY: all $(fpga) $(network) $(interface) clean

all: $(fpga) $(network) $(interface)

$(fpga): 
	$(MAKE) --directory=$@ $(FPGA_TARGET) COMPILER=$(CROSSCOMP)

$(network):
	$(MAKE) --directory=$@ $(TARGET) COMPILER=$(COMPILER)

$(interface):
	$(MAKE) --directory=$@ $(TARGET) COMPILER=$(COMPILER)

clean:
	$(RM) -r build
