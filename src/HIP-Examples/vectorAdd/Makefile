
HIPCONFIG:=$(shell equery f hip | grep hipconfig)
HIP_PATH:=$(shell $(HIPCONFIG) -p)
ROCM_PATH:=$(shell $(HIPCONFIG) -R)
CXX_CONFIG:=$(shell $(HIPCONFIG) -C)
HIPCC=$(HIP_PATH)/bin/hipcc

all: vectoradd_hip.exe

clean:
	rm -f *.exe

tests: vectoradd_hip.exe
	./$<

%.exe: %.cpp
	$(HIPCC) $(SPECIAL_CXXOPTS) $(CXX_CONFIG) -o $@ $<

