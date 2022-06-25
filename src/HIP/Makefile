PROJECT_NAMES=hipInfo
PROJECTS=$(PROJECT_NAMES:=.project)
CLEANS=$(PROJECT_NAMES:=.clean)
TESTS=$(PROJECT_NAMES:=.tests)

all: $(PROJECTS)

clean: $(CLEANS)

tests: $(TESTS)

%.project:
	cd $* && $(MAKE)

%.clean:
	cd $* && $(MAKE) clean

%.tests:
	cd $* && $(MAKE) tests
