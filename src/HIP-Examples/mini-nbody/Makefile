
HIPCONFIG:=$(shell equery f hip | grep hipconfig)
HIP_PATH:=$(shell $(HIPCONFIG) -p)
ROCM_PATH:=$(shell $(HIPCONFIG) -R)
CXX_CONFIG:=$(shell $(HIPCONFIG) -C)
HIPCC=$(HIP_PATH)/bin/hipcc

BASENAMES=nbody-orig nbody-block nbody-soa
EXES=$(BASENAMES:=.exe)
CXXFLAGS=-std=c++11 -O3 -DSHMOO

all: $(EXES)

clean:
	rm -f *.exe

tests: $(EXES)
	K=1024 ; for i in {1..8} ; do for j in $(EXES) ; do ./$< $$K ; done ; K=$$(($$K*2)) ; done

%.exe: %.cpp
	$(HIPCC) $(SPECIAL_CXXOPTS) $(CXX_CONFIG) $(CXXFLAGS) -o $@ $<

