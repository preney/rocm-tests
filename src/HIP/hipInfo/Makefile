
HIPCONFIG:=$(shell equery f hip | grep hipconfig)
HIP_PATH:=$(shell $(HIPCONFIG) -p)
ROCM_PATH:=$(shell $(HIPCONFIG) -R)
CXX_CONFIG:=$(shell $(HIPCONFIG) -C)
HIPCC=$(HIP_PATH)/bin/hipcc

all: hipInfo.exe

clean:
	rm -f *.exe

tests: hipInfo.exe
	./$<

%.exe: %.cpp
	$(HIPCC) $(SPECIAL_CXXOPTS) $(CXX_CONFIG) -o $@ $<

