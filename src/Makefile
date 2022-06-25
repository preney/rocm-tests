DIRS=HIP HIP-Examples

all:
	for d in $(DIRS) ; do cd $$d ; $(MAKE) ; cd .. ; done

clean:
	for d in $(DIRS) ; do cd $$d ; $(MAKE) clean ; cd .. ; done

tests:
	for d in $(DIRS) ; do cd $$d ; $(MAKE) tests ; cd .. ; done
