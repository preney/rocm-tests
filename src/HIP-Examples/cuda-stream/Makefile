HIPCONFIG:=$(shell equery f hip | grep hipconfig)
HIP_PATH:=$(shell $(HIPCONFIG) -p)
ROCM_PATH:=$(shell $(HIPCONFIG) -R)
CXX_CONFIG:=$(shell $(HIPCONFIG) -C)
HIPCC=$(HIP_PATH)/bin/hipcc
CXXFLAGS=-std=c++11 -O3

all: stream.exe

clean:
	rm -f *.exe

tests: stream.exe
	./$<

%.exe: %.cpp
	$(HIPCC) $(SPECIAL_CXXOPTS) $(CXX_CONFIG) $(CXXFLAGS) -o $@ $<

