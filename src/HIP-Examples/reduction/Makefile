HIPCONFIG:=$(shell equery f hip | grep hipconfig)
HIP_PATH:=$(shell $(HIPCONFIG) -p)
ROCM_PATH:=$(shell $(HIPCONFIG) -R)
CXX_CONFIG:=$(shell $(HIPCONFIG) -C)
HIPCC=$(HIP_PATH)/bin/hipcc
CXXFLAGS=-std=c++11 -O3

all: reduction.exe

clean:
	rm -f *.exe

tests: reduction.exe
	K=1024*1024*4 ; for i in {1..8} ; do ./$< $$K ; K=$$(($$K*2)) ; done

%.exe: %.cpp
	$(HIPCC) $(SPECIAL_CXXOPTS) $(CXX_CONFIG) $(CXXFLAGS) -o $@ $<

